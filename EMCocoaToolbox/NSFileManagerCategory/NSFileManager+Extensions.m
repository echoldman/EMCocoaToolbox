//
//  NSFileManager+Extensions.m
//
//  Created by Echoldman on 13-2-14.
//

#import "NSFileManager+Extensions.h"

@implementation NSFileManager (Extensions)

- (BOOL)fileDontExistsAtPath:(NSString *)path_
{
    return ![self fileExistsAtPath:path_];
}

@end
