//
//  NSTimer+timerWithBlock.h
//
//  Created by Echoldman on 13-6-8.
//

#import <Foundation/Foundation.h>

@interface NSTimer (Block)

+ (NSTimer *)scheduledTimerWithBlock:(void(^)(void))timerBlock timeInterval:(NSTimeInterval)ti repeats:(BOOL)yesOrNo;
+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti timerBlock:(void(^)(void))timerBlock repeats:(BOOL)yesOrNo;

@end
