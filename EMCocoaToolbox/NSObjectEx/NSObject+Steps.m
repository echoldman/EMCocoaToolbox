//
//  NSObject+Steps.m
//
//  Created by Echoldman on 4/22/14.
//

#import "NSObject+Steps.h"

static inline id objectInStep(id container, id step);

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

@implementation NSObject (Steps)

- (id)objectInSteps:(NSArray *)steps
{
    id result = objectInStep(self, steps.firstObject);
    
    for (NSUInteger i = 1; i < steps.count; i++) {
        result = objectInStep(result, [steps objectAtIndex:i]);
    }
    
    return result;
}

@end
