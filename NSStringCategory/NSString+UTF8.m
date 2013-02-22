//
//  NSString+UTF8.m
//
//  Created by Echoldman on 12-10-4.
//

#import "NSString+UTF8.h"

@implementation NSString (UTF8)

+ (NSString *)utf8StringWithContentsOfFile:(NSString *)path_ error:(NSError **)error_
{
    NSStringEncoding usedEncoding = 0;
    NSString *tempString = [NSString stringWithContentsOfFile:path_ usedEncoding:&usedEncoding error:error_];
    NSString *string;
    if ( usedEncoding == NSUTF8StringEncoding ) {
        string = tempString;
    }
    else {
        string = [NSString stringWithCString:[tempString UTF8String] encoding:NSUTF8StringEncoding];
    }
    
    return string;
}

@end
