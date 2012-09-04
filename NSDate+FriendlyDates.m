//
//  NSDate+FriendlyDates.m
//  KiwiHarness
//
//  Created by Tim on 03/09/2012.
//  Copyright (c) 2012 Charismatic Megafauna Ltd. All rights reserved.
//

#import "NSDate+FriendlyDates.h"

@implementation NSDate (FriendlyDates)

+(NSString *)friendlyIntervalBetweenFirstDate:(NSDate *)firstDate andSecondDate:(NSDate *)secondDate {
    
    NSTimeInterval firstTimeInterval = [firstDate timeIntervalSince1970];
    NSTimeInterval secondTimeInterval = [secondDate timeIntervalSince1970];
    
    if (secondTimeInterval > firstTimeInterval) {
        
        int difference = (int)(secondTimeInterval - firstTimeInterval);

        int days = abs(difference / 86400);
        
        if (days > 0) {
            int daySeconds = days * 86400;
            difference = difference - daySeconds;
        }
        
        int hours = abs(difference / 3600);
        
        if (hours > 0) {
            int hourSeconds = hours * 3600;
            difference = difference - hourSeconds;
        }
        
        int mins = (abs)(difference / 60);
        
        if (mins > 0) {
            int minSeconds = mins * 60;
            difference = difference - minSeconds;
        }
        
        NSString *results = @"";
        
        if (days == 1) {
            results = [results stringByAppendingString:@"1 day "];
        }
        
        if (days > 1) {
            results = [results stringByAppendingString:[NSString stringWithFormat:@"%d days ", days]];
        }
        
        if (hours == 1) {
            results = [results stringByAppendingString:@"1 hour "];
        }
        
        if (hours > 1) {
            results = [results stringByAppendingString:[NSString stringWithFormat:@"%d hours ", hours]];
        }
        
        if (mins == 1) {
            results = [results stringByAppendingString:@"1 min "];
        }
        
        if (mins > 1) {
            results = [results stringByAppendingString:[NSString stringWithFormat:@"%d mins ", mins]];
        }

        if (difference == 1) {
            results = [results stringByAppendingString:@"1 sec"];
        }
        
        if (difference > 1) {
            results = [results stringByAppendingString:[NSString stringWithFormat:@"%d secs", difference]];
        }
        
        // Trim trailing white space
        NSString *trimmedString = [results stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        return trimmedString;
        
    }
    
    return nil;
}

+(NSString *)partialIntervalBetweenFirstDate:(NSDate *)firstDate andSecondDate:(NSDate *)secondDate {
    
    NSTimeInterval firstTimeInterval = [firstDate timeIntervalSince1970];
    NSTimeInterval secondTimeInterval = [secondDate timeIntervalSince1970];
    
    if (secondTimeInterval > firstTimeInterval) {
        
        int difference = (int)(secondTimeInterval - firstTimeInterval);

        BOOL hasDays = NO;
        BOOL hasHours = NO;
        BOOL hasMins = NO;
        
        int days = abs(difference / 86400);
        
        if (days > 0) {
            
            hasDays = YES;
            int daySeconds = days * 86400;
            difference = difference - daySeconds;
            
        }
        
        int hours = abs(difference / 3600);
        
        if (hours > 0) {
            
            hasHours = YES;
            int hourSeconds = hours * 3600;
            difference = difference - hourSeconds;
            
        }
        
        int mins = (abs)(difference / 60);
        
        if (mins > 0) {
            
            hasMins = YES;
            int minSeconds = mins * 60;
            difference = difference - minSeconds;
            
        }
        
        NSString *results = @"";
        
        if (days == 1) {
            results = [results stringByAppendingString:@"1 day "];
        }
        
        if (days > 1) {
            results = [results stringByAppendingString:[NSString stringWithFormat:@"%d days ", days]];
        }
        
        if (hours == 1) {
            results = [results stringByAppendingString:@"1 hour "];
        }
        
        if (hours > 1) {
            results = [results stringByAppendingString:[NSString stringWithFormat:@"%d hours ", hours]];
        }
        
        if (!hasHours) {
        
            if (mins == 1) {
                    results = [results stringByAppendingString:@"1 min "];
            }
            
            if (mins > 1) {
                results = [results stringByAppendingString:[NSString stringWithFormat:@"%d mins ", mins]];
            }
        
            if (!hasMins) {
            
                if (difference == 1) {
                    results = [results stringByAppendingString:@"1 sec"];
                }
                
                if (difference > 1) {
                    results = [results stringByAppendingString:[NSString stringWithFormat:@"%d secs", difference]];
                }
                
            }

        }
        
        // Trim trailing white space
        NSString *trimmedString = [results stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        return trimmedString;
        
    }
    
    return nil;
    
}

@end
