//
//  NSString+URLEncode.m
//
//  Created by Echoldman on 14-4-3.
//

#import "NSString+URLEncode.h"

@implementation NSString (URLEncode)

- (NSString *)URLEncode
{
    NSString *encodedString = NSMakeCollectable((NSString *)CFURLCreateStringByAddingPercentEscapes(
                                                                                                    kCFAllocatorDefault,
                                                                                                    (CFStringRef)self,
                                                                                                    NULL,
                                                                                                    CFSTR(":/?#[]@!$ &'()*+,;=\"<>%{}|\\^~`"),
                                                                                                    kCFStringEncodingUTF8));
    return [encodedString autorelease];
}

@end
