//
//  NSObject+notNullForClass.m
//
//  Created by Echoldman on 13-1-19.
//  Copyright (c) 2013年 echold.com. All rights reserved.
//

#import "NSObject+notNilForClass.h"

@implementation NSObject (notNilForClass)

+ (BOOL)notNil:(id)object_ forClass:(id)aClass_
{
    if (object_ == nil) {
        return FALSE;
    }
    
    if ([object_ isKindOfClass:aClass_]) {
        return TRUE;
    }
    
    return FALSE;
}

@end
