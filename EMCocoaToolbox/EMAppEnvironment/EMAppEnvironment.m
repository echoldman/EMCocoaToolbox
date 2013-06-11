//
//  EMAppEnvironment.m
//
//  Created by Echoldman on 13-6-11.
//

#import "EMAppEnvironment.h"

@implementation EMAppEnvironment

+ (NSString *)homeDirectory
{
    return NSHomeDirectory();
}

+ (NSString *)documentDirctory
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    if (!paths || paths.count < 1) { return nil; }
    return [paths objectAtIndex:0];
}

+ (NSString *)cacheDirectory
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    if (!paths || paths.count < 1) { return nil; }
    return [paths objectAtIndex:0];
}

+ (NSString *)libraryDirectory
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    if (!paths || paths.count < 1) { return nil; }
    return [paths objectAtIndex:0];
}

+ (NSString *)temporaryDirectory
{
    return NSTemporaryDirectory();
}

@end
