//
//  NSDate+FriendlyDates.h
//  KiwiHarness
//
//  Created by Tim on 03/09/2012.
//  Copyright (c) 2012 Charismatic Megafauna Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (FriendlyDates)

+(NSString *)friendlyIntervalBetweenFirstDate:(NSDate *)firstDate andSecondDate:(NSDate *)secondDate;
+(NSString *)partialIntervalBetweenFirstDate:(NSDate *)firstDate andSecondDate:(NSDate *)secondDate;

@end
