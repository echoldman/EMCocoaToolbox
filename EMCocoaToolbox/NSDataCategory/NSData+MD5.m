//
//  NSData+MD5.m
//
//  Created by Echoldman on 13-2-9.
//

#import "NSData+MD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSData (MD5)

- (NSString *)MD5
{
    unsigned char buffer[CC_MD5_DIGEST_LENGTH];
    CC_MD5(self.bytes, self.length, buffer);
    NSMutableString *md5String = [NSMutableString string];
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [md5String appendFormat:@"%02X", buffer[i]];
    }
    return md5String;
}

- (NSString *)md5
{
    return [[self MD5] lowercaseString];
}

@end
