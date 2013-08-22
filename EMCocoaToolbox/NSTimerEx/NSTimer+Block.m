//
//  NSTimer+timerWithBlock.m
//
//  Created by Echoldman on 13-6-8.
//

#import "NSTimer+Block.h"

@implementation NSTimer (Block)

+ (NSTimer *)scheduledTimerWithBlock:(void (^)(void))block_ timeInterval:(NSTimeInterval)ti_ repeats:(BOOL)yesOrNo_
{
    void (^block)(void) = [block_ copy];
    NSTimer *timer = [self scheduledTimerWithTimeInterval:ti_
                                                   target:self
                                                 selector:@selector(blockSelector:)
                                                 userInfo:block
                                                  repeats:yesOrNo_];
    [block release];
    return timer;
}

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti_ block:(void (^)(void))block_ repeats:(BOOL)yesOrNo_
{
    return [self scheduledTimerWithBlock:block_
                            timeInterval:ti_
                                 repeats:yesOrNo_];
}

+ (void)blockSelector:(NSTimer *)theTimer_
{
    void (^block)(void) = (void (^)(void))[theTimer_ userInfo];
    block();
}

@end
