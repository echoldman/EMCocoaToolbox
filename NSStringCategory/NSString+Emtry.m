//
//  NSString+Emtry.m
//
//  Created by Echoldman on 12-10-1.
//

#import "NSString+Emtry.h"

@implementation NSString (Emtry)

+ (BOOL)stringIsEmtry:(NSString *)string
{
    if ( !string || [string isKindOfClass:[NSNull class]] ) {
        return YES;
    }
    
    if ( ![string isKindOfClass:[NSString class]] ) {
        return YES;
    }
    
    if ( string.length == 0 ) {
        return YES;
    }
    
    return NO;
}

@end
