//
//  NSString+Separator.m
//
//  Created by Echoldman on 14-4-2.
//

#import "NSString+Separator.h"

@implementation NSString (Separator)

+ (NSString *)stringWithSeparator:(NSString *)separator components:(NSArray *)components
{
    NSString *result;
    NSInteger count = components.count;
    
    if (count > 1) {
        
        NSMutableString *string = [NSMutableString stringWithCapacity:128];
        for (NSUInteger i = 0; i < (count-1); i++) {
            [string appendFormat:@"%@%@", [components objectAtIndex:i], separator];
        }
        [string appendString:components.lastObject];
        
        result = [NSString stringWithString:string];
    }
    else {
        result = components.firstObject;
    }
    
    return result;
}

@end
