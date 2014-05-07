//
//  NSObject+Steps.h
//
//  Created by Echoldman on 4/22/14.
//

#import <Foundation/Foundation.h>

@interface NSObject (Steps)

- (id)objectInSteps:(NSArray *)steps;
- (id)safeObjectInSteps:(NSArray *)steps;

#if (__MAC_OS_X_VERSION_MAX_ALLOWED > __MAC_10_9 || __IPHONE_OS_VERSION_MAX_ALLOWED > __IPHONE_7_1)
    #warning setObject:inSteps: maybe not safe!
#endif
- (id)setObject:(id)object inSteps:(NSArray *)steps;

@end
