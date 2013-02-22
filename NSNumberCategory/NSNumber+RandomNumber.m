//
//  NSNumber+RandomNumber.m
//
//  Created by Echoldman on 12-7-16.
//

#define RandomInteger(from, to) (from + (arc4random() % (to - from + 1)))

#import "NSNumber+RandomNumber.h"

@implementation NSNumber (RandomNumber)

- (NSUInteger)randomUnsignedInteger
{
    NSUInteger numberValue = [self unsignedIntegerValue];
    
    return (NSUInteger)RandomInteger(0, numberValue-1);
}

@end
