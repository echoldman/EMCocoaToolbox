//
//  NSTimer+timerWithBlock.h
//  eat8
//
//  Created by Echoldman on 13-6-8.
//  Copyright (c) 2013年 Yiming Lu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (Block)

+ (NSTimer *)scheduledTimerWithBlock:(void(^)(void))timerBlock timeInterval:(NSTimeInterval)ti repeats:(BOOL)yesOrNo;

@end
