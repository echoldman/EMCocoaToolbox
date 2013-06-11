//
//  EMAppEnvironment.h
//  counter
//
//  Created by Echoldman on 13-6-11.
//

#import <Foundation/Foundation.h>

@interface EMAppEnvironment : NSObject

+ (NSString *)homeDirectory;
+ (NSString *)documentDirctory;
+ (NSString *)cacheDirectory;
+ (NSString *)libraryDirectory;
+ (NSString *)temporaryDirectory;

@end
