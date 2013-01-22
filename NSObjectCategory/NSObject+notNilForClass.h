//
//  NSObject+notNilForClass.h
//
//  Created by Echoldman on 13-1-19.
//  Copyright (c) 2013年 echold.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (notNilForClass)

+ (BOOL)notNil:(id)object forClass:(id)aClass;

@end
