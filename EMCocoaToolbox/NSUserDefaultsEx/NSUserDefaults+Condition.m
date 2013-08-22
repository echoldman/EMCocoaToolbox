//
//  NSUserDefaults+Condition.m
//
//  Created by Echoldman on 13-8-22.
//

#import "NSUserDefaults+Condition.h"

@implementation NSUserDefaults (Condition)

- (BOOL)hasKey:(id)aKey_
{
    BOOL result = NO;
    for (id key in self.dictionaryRepresentation.allKeys) {
        if ([key isEqual:aKey_]) {
            result = YES;
            break;
        }
    }
    return result;
}

@end
