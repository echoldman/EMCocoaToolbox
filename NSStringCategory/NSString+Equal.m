//
//  NSString+Equal.m
//
//  Created by Echoldman on 13-2-11.
//

#import "NSString+Equal.h"

@implementation NSString (Equal)

- (BOOL)notEqualToString:(NSString *)aString
{
    return ![self isEqualToString:aString];
}

@end
