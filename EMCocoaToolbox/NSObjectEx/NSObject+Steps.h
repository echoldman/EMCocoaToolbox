//
//  NSObject+Steps.h
//
//  Created by Echoldman on 4/22/14.
//

#import <Foundation/Foundation.h>

#define N(n)    [NSNumber numberWithInteger:n]
#define S(...)  @[__VA_ARGS__]
NSArray *EMSteps(NSObject *firstStep, ...);

@interface NSObject (Steps)

- (id)objectInSteps:(NSArray *)steps;
- (id)safeObjectInSteps:(NSArray *)steps;

#if (__MAC_OS_X_VERSION_MAX_ALLOWED > __MAC_10_10 || __IPHONE_OS_VERSION_MAX_ALLOWED > __IPHONE_8_0)
    #warning setObject:inSteps: maybe not safe!
#endif
- (id)setObject:(id)object inSteps:(NSArray *)steps;

@end
