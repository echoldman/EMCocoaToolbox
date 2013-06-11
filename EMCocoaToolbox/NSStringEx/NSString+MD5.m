//
//  NSString+MD5.m
//
//  Created by Echoldman on 13-2-8.
//

#import "NSString+MD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (MD5)

- (NSString *)MD5
{
    const char* utf8 = [self UTF8String];
    unsigned char buffer[CC_MD5_DIGEST_LENGTH];
    CC_MD5(utf8, strlen(utf8), buffer);
    NSMutableString *md5String = [NSMutableString string];
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [md5String appendFormat:@"%02X", buffer[i]];
    }
    return md5String;
}

- (NSString *)md5
{
    const char* utf8 = [self UTF8String];
    unsigned char buffer[CC_MD5_DIGEST_LENGTH];
    CC_MD5(utf8, strlen(utf8), buffer);
    NSMutableString *md5String = [NSMutableString string];
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [md5String appendFormat:@"%02x", buffer[i]];
    }
    return md5String;
}

@end
