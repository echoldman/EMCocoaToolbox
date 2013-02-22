//
//  NSString+FileName.m
//
//  Created by Echoldman on 12-10-1.
//

#import "NSString+FileName.h"

@implementation NSString (FileName)

- (NSString *)stringWithoutExpandedName
{
    NSString *fileName;
    NSRange lastSlashRange = [self rangeOfString:@"/" options:NSBackwardsSearch];
    if ( lastSlashRange.location != NSNotFound ) {
        fileName = [self substringFromIndex:lastSlashRange.location + 1];
    }
    else {
        fileName = self;
    }
    
    NSRange dotRange = [fileName rangeOfString:@"." options:NSBackwardsSearch];
    NSString *subString;
    if ( dotRange.location != NSNotFound ) {
        subString = [fileName substringToIndex:dotRange.location];
    }
    else {
        subString = fileName;
    }
    
    return subString;
}

@end
