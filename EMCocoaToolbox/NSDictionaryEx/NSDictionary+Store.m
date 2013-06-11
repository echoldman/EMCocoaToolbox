//
//  NSDictionary+Store.m
//
//  Created by Echoldman on 13-2-15.
//

#import "NSDictionary+Store.h"

@implementation NSDictionary (Store)

+ (NSDictionary *)dictionaryFromPlistFile:(NSString *)filePath_
{
    if ([[NSFileManager defaultManager] fileExistsAtPath:filePath_]) {
        NSData *data = [[NSData alloc]  initWithContentsOfFile:filePath_];
        if (data && [data isKindOfClass:[NSData class]]) {
            NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
            NSDictionary *result = [unarchiver decodeObject];
            [unarchiver finishDecoding];
            [unarchiver release];
            [data release];
            return result;
        }
        else{
            [data release];
        }
    }
    
    return nil;
}

+ (NSDictionary *)dictionaryFromPlistFile:(NSString *)filePath_ forKey:(NSString *)key_
{
    if ([[NSFileManager defaultManager] fileExistsAtPath:filePath_]) {
        NSData *data = [[NSData alloc]  initWithContentsOfFile:filePath_];
        if (data && [data isKindOfClass:[NSData class]]) {
            NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
            NSDictionary *result = [unarchiver decodeObjectForKey:key_];
            [unarchiver finishDecoding];
            [unarchiver release];
            [data release];
            return result;
        }
        else{
            [data release];
        }
    }
    
    return nil;
}

- (BOOL)saveToPlistFile:(NSString *)filePath_
{
    NSMutableData *data = [[NSMutableData alloc] init];
    NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
    [archiver encodeObject:self];
    [archiver finishEncoding];
    BOOL result = [data writeToFile:filePath_ atomically:YES];
    [archiver release];
    [data release];
    
    return result;
}

- (BOOL)saveToPlistFile:(NSString *)filePath_ forKey:(NSString *)key_
{
    NSMutableData *data = [[NSMutableData alloc] init];
    NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
    [archiver encodeObject:self forKey:key_];
    [archiver finishEncoding];
    BOOL result = [data writeToFile:filePath_ atomically:YES];
    [archiver release];
    [data release];
    
    return result;
}

@end
