//
//  NSString+UUID.m
//
//  Created by Echoldman on 13-10-16.
//

#import "NSString+UUID.h"

@implementation NSString (UUID)

+ (NSString *)UUIDString
{
    CFUUIDRef uuidRef       = CFUUIDCreate(NULL);
    CFStringRef stringRef   = CFUUIDCreateString(NULL, uuidRef);
    CFRelease(uuidRef);
    
    return [(NSString *)stringRef autorelease];
}

@end
