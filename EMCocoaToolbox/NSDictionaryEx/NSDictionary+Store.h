//
//  NSDictionary+Store.h
//
//  Created by Echoldman on 13-2-15.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Store)

+ (NSDictionary *)dictionaryFromPlistFile:(NSString *)filePath;
+ (NSDictionary *)dictionaryFromPlistFile:(NSString *)filePath forKey:(NSString *)key;
- (BOOL)saveToPlistFile:(NSString *)filePath;
- (BOOL)saveToPlistFile:(NSString *)filePath forKey:(NSString *)key;

@end
