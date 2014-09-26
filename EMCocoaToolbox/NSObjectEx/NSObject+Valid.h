//
//  NSObject+Valid.h
//
//  Created by Echoldman on 13-1-19.
//

#import <Foundation/Foundation.h>

@interface NSObject (Valid)

+ (BOOL)isValid:(id)object;
+ (BOOL)isInvalid:(id)object;
+ (BOOL)isValid:(id)object forClass:(id)aClass;
+ (BOOL)isInvalid:(id)object forClass:(id)aClass;

@end
