//
//  NSObject+Valid.m
//
//  Created by Echoldman on 13-1-19.
//

#import "NSObject+Valid.h"

BOOL objectIsValidForClass(id object, id aClass);
BOOL objectIsInvalidForClass(id object, id aClass);

inline BOOL objectIsValidForClass(id object, id aClass)
{
    if ((object != nil) && [object isKindOfClass:aClass]) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

inline BOOL objectIsInvalidForClass(id object, id aClass)
{
    if ((object == nil) || ![object isKindOfClass:aClass]) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

@implementation NSObject (Valid)

+ (BOOL)isValid:(id)object
{
    return objectIsValidForClass(object, self);
}

+ (BOOL)isInvalid:(id)object
{
    return objectIsInvalidForClass(object, self);
}

+ (BOOL)isValid:(id)object forClass:(id)aClass
{
    return objectIsValidForClass(object, aClass);
}

+ (BOOL)isInvalid:(id)object forClass:(id)aClass
{
    return objectIsInvalidForClass(object, aClass);
}

@end
