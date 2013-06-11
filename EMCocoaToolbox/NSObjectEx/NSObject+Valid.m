//
//  NSObject+Valid.m
//
//  Created by Echoldman on 13-1-19.
//

#import "NSObject+Valid.h"

@implementation NSObject (Valid)

+ (BOOL)isValid:(id)object_ forClass:(id)aClass_
{
    if ((object_ != nil) && [object_ isKindOfClass:aClass_]) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

+ (BOOL)isInvalid:(id)object_ forClass:(id)aClass_
{
    if ((object_ == nil) || ![object_ isKindOfClass:aClass_]) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

@end
