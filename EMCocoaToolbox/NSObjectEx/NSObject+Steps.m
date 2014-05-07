//
//  NSObject+Steps.m
//
//  Created by Echoldman on 4/22/14.
//

#import "NSObject+Steps.h"
#import <objc/runtime.h>

static inline id objectInStep(id container, id step);
static inline void setObjectInStep(id container, id step, id object);
static inline void setMutableArrayDepth(NSMutableArray *array, NSInteger depth);
static inline id insureContainerInStep(id root, id step, id typeStep);
static inline id makeContainerByTypeStep(id typeStep);
static inline BOOL isMutableContainer(id container);

static inline id objectInStep(id container, id step)
{
    id result;
    
    if ([container isKindOfClass:[NSDictionary class]]) {
        result = [(NSDictionary *)container objectForKey:step];
    }
    else if ([container isKindOfClass:[NSArray class]]) {
        NSNumber *index = (NSNumber *)step;
        result = [(NSArray *)container objectAtIndex:index.integerValue];
    }
    else {
        result = nil;
    }
    
    return result;
}

static inline void setObjectInStep(id container, id step, id object)
{
    NSString *className = NSStringFromClass([container class]);
    
    if ([className isEqualToString:@"__NSDictionaryM"]) {
        
        [container setObject:object forKey:step];
        
        return;
    }
    
    if ([className isEqualToString:@"__NSArrayM"]) {
        
        NSMutableArray *array = (NSMutableArray *)container;
        NSInteger index = [(NSNumber *)step integerValue];
        
        setMutableArrayDepth(array, index + 1);
        [array setObject:object atIndexedSubscript:index];
        
        return;
    }
}

static inline void setMutableArrayDepth(NSMutableArray *array, NSInteger depth)
{
    NSInteger count = array.count;
    if (count < depth) {
        for (NSInteger i = 0; i < array.count - depth ; i++) {
            [array addObject:[NSNull null]];
        }
    }
}

static inline id insureContainerInStep(id root, id step, id typeStep)
{
    id container = objectInStep(root, step);
    
    if (!container) {
        container = makeContainerByTypeStep(typeStep);
        setObjectInStep(root, step, container);
        return container;
    }
    
    if (!isMutableContainer(container)) {
        container = [container mutableCopy];
        setObjectInStep(root, step, container);
        return container;
    }
    
    return container;
}

static inline id makeContainerByTypeStep(id typeStep)
{
    id container;
    
    if ([typeStep isKindOfClass:[NSString class]]) {
        container = [NSMutableDictionary dictionary];
        return container;
    }
    
    if ([typeStep isKindOfClass:[NSNumber class]]) {
        container = [NSMutableArray array];
        return container;
    }
    
    return nil;
}

static inline BOOL isMutableContainer(id container)
{
    NSString *className = NSStringFromClass([container class]);
    return [className isEqualToString:@"__NSDictionaryM"] || [className isEqualToString:@"__NSArrayM"];
}

@implementation NSObject (Steps)

- (id)objectInSteps:(NSArray *)steps
{
    id result = objectInStep(self, steps.firstObject);
    
    for (NSUInteger i = 1; i < steps.count; i++) {
        result = objectInStep(result, [steps objectAtIndex:i]);
    }
    
    return result;
}

- (id)safeObjectInSteps:(NSArray *)steps
{
    id result;
    @try {
        result = [self objectInSteps:steps];
    }
    @catch (NSException *exception) {
        result = nil;
    }
    @finally {}
    
    return result;
}

- (id)setObject:(id)object inSteps:(NSArray *)steps
{
    id root = nil;

    if (![self isEqual:[NSNull null]]) {
        
        if (isMutableContainer(self)) {
            root = self;
        }
        else {
            root = [self mutableCopy];
        }
    }
    else {
        
        root = makeContainerByTypeStep(steps.firstObject);
    }
    
    id container = root;
    for (NSInteger i = 0; i < steps.count - 1; i++) {
        id step = [steps objectAtIndex:i];
        id nextStep = [steps objectAtIndex:i+1];
        container = insureContainerInStep(container, step, nextStep);
    }
    
    setObjectInStep(container, steps.lastObject, object);
    
    return root;
}

@end
