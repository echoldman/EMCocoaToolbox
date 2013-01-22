//
//  main.m
//  EMCocoaToolbox
//
//  Created by Echoldman on 13-1-22.
//  Copyright (c) 2013年 echold.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "../NSObjectCategory/NSObjectCategory.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        id str = @"Hello, Cocoa!";
        if ([NSObject notNil:str forClass:[NSString class]]) {
            NSLog(@"Object 'str' is a NSString.");
        }
        else {
            NSLog(@"Object 'str' isn't a NSString!");
        }
        
        if ([NSObject notNil:str forClass:[NSNumber class]]) {
            NSLog(@"Object 'str' is a NSNumber.");
        }
        else {
            NSLog(@"Object 'str' isn't a NSNumber!");
        }
    }
    return 0;
}

