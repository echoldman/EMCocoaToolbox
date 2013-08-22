//
//  NSTimer+timerWithBlock.h
//
//  Created by Echoldman on 13-6-8.
//

#import <Foundation/Foundation.h>

@interface NSTimer (Block)

+ (NSTimer *)scheduledTimerWithBlock:(void(^)(void))block timeInterval:(NSTimeInterval)ti repeats:(BOOL)yesOrNo;
+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti block:(void(^)(void))block repeats:(BOOL)yesOrNo;

@end
