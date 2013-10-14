//
//  NSString+Empty.m
//
//  Created by Echoldman on 13-6-11.
//

#import "NSString+Empty.h"

@implementation NSString (Empty)

+ (BOOL)stringIsEmpty:(NSString *)aString_
{
    if (!aString_ || ![aString_ isKindOfClass:NSString.class] || (aString_.length < 1)) {
        return YES;
    }
    else {
        return NO;
    }
}

+ (BOOL)stringIsNonEmpty:(NSString *)aString_
{
    if (aString_ && [aString_ isKindOfClass:NSString.class] && (aString_.length > 0)) {
        return YES;
    }
    else {
        return NO;
    }
}

@end
