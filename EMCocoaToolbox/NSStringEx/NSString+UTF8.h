//
//  NSString+UTF8.h
//
//  Created by Echoldman on 12-10-4.
//

#import <Foundation/Foundation.h>

@interface NSString (UTF8)

+ (NSString *)utf8StringWithContentsOfFile:(NSString *)path error:(NSError **)error;

@end
