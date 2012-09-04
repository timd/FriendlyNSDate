//
//  KiwiHarnessTests.m
//  KiwiHarnessTests
//
//  Created by Tim on 23/08/2012.
//  Copyright (c) 2012 Charismatic Megafauna Ltd. All rights reserved.
//

#import "Kiwi.h"
#import "NSDate+FriendlyDates.h"

SPEC_BEGIN(PartialDataTests)

describe(@"NSDate", ^{
    
    context(@"with category", ^{
        
        beforeAll(^{
        });
        
        afterAll(^{
        });
        
        beforeEach(^{
        });
        
        afterEach(^{
        });
        
        // [NSDate friendlyIntervalBetweenFirstDate:(NSDate *)firstDate andSecondDate:(NSDate *)secondDate
        
        it(@"should should respond to the partial methods", ^{
            [[NSDate should] respondToSelector:@selector(partialIntervalBetweenFirstDate:andSecondDate:)];
        });
        
        it(@"should return an NSString when given two parameters", ^{
            
            NSDate *firstDate = [NSDate date];
            NSDate *secondDate = [firstDate dateByAddingTimeInterval:10];
            
            id obj = [NSDate partialIntervalBetweenFirstDate:firstDate andSecondDate:secondDate];
            
            [[obj should] beKindOfClass:[NSString class]];
            
        });
        
        it(@"should return nil if the second date is before the first date", ^{
            
            NSDate *firstDate = [NSDate dateWithTimeIntervalSince1970:0];
            NSDate *secondDate = [firstDate dateByAddingTimeInterval:-100];
            
            id obj = [NSDate partialIntervalBetweenFirstDate:firstDate andSecondDate:secondDate];
            
            [obj shouldBeNil];
            
        });
        
        it(@"should return 1 second when given two dates one second apart", ^{
            
            NSDate *firstDate = [NSDate dateWithTimeIntervalSince1970:0];
            NSDate *secondDate = [NSDate dateWithTimeIntervalSince1970:1];
            
            NSString *response = [NSDate partialIntervalBetweenFirstDate:firstDate andSecondDate:secondDate];
            
            [[theValue([response isEqualToString:@"1 sec"]) should] beTrue];
            
        });
        
        it(@"should return 10 seconds when given two dates ten seconds apart", ^{
            
            NSDate *firstDate = [NSDate dateWithTimeIntervalSince1970:0];
            NSDate *secondDate = [NSDate dateWithTimeIntervalSince1970:10];
            
            NSString *response = [NSDate partialIntervalBetweenFirstDate:firstDate andSecondDate:secondDate];
            
            [[theValue([response isEqualToString:@"10 secs"]) should] beTrue];
            
        });
        
        it(@"should return 1 minute if the two dates are 60 secs apart", ^{
            
            NSDate *firstDate = [NSDate dateWithTimeIntervalSince1970:0];
            NSDate *secondDate = [NSDate dateWithTimeIntervalSince1970:60];
            
            NSString *response = [NSDate partialIntervalBetweenFirstDate:firstDate andSecondDate:secondDate];
            
            [[theValue([response isEqualToString:@"1 min"]) should] beTrue];
            
        });
        
        it(@"should return 2 minutes if the two dates are 120 secs apart", ^{
            
            NSDate *firstDate = [NSDate dateWithTimeIntervalSince1970:0];
            NSDate *secondDate = [NSDate dateWithTimeIntervalSince1970:120];
            
            NSString *response = [NSDate partialIntervalBetweenFirstDate:firstDate andSecondDate:secondDate];
            
            [[theValue([response isEqualToString:@"2 mins"]) should] beTrue];
            
        });

        it(@"should return 2 minutes if the two dates are 2 mins and 30 secs apart", ^{
            
            NSDate *firstDate = [NSDate dateWithTimeIntervalSince1970:0];
            NSDate *secondDate = [NSDate dateWithTimeIntervalSince1970:150];
            
            NSString *response = [NSDate partialIntervalBetweenFirstDate:firstDate andSecondDate:secondDate];
            
            [[theValue([response isEqualToString:@"2 mins"]) should] beTrue];
            
        });
        
        it(@"should return 30 minutes if the two dates are 1800 of each other", ^{
            
            NSDate *firstDate = [NSDate dateWithTimeIntervalSince1970:0];
            NSDate *secondDate = [NSDate dateWithTimeIntervalSince1970:1800];
            
            NSString *response = [NSDate partialIntervalBetweenFirstDate:firstDate andSecondDate:secondDate];
            
            NSLog(@"response = %@", response);
            
            [[theValue([response isEqualToString:@"30 mins"]) should] beTrue];
            
        });
        
        it(@"should return 31 mins if the two dates are 1889 of each other", ^{
            
            NSDate *firstDate = [NSDate dateWithTimeIntervalSince1970:0];
            NSDate *secondDate = [NSDate dateWithTimeIntervalSince1970:1889];
            
            NSString *response = [NSDate partialIntervalBetweenFirstDate:firstDate andSecondDate:secondDate];
            
            [[theValue([response isEqualToString:@"31 mins"]) should] beTrue];
            
        });
        
        it(@"should return 1 hour if the two dates are 3600 secs apart", ^{
            
            NSDate *firstDate = [NSDate dateWithTimeIntervalSince1970:0];
            NSDate *secondDate = [NSDate dateWithTimeIntervalSince1970:3600];
            
            NSString *response = [NSDate partialIntervalBetweenFirstDate:firstDate andSecondDate:secondDate];
            
            NSLog(@"response = %@", response);
            
            [[theValue([response isEqualToString:@"1 hour"]) should] beTrue];
            
        });
        
        it(@"should return 1 hour if the two dates are 5400 seconds of each other", ^{
            
            NSDate *firstDate = [NSDate dateWithTimeIntervalSince1970:0];
            NSDate *secondDate = [NSDate dateWithTimeIntervalSince1970:5400];
            
            NSString *response = [NSDate partialIntervalBetweenFirstDate:firstDate andSecondDate:secondDate];
            
            [[theValue([response isEqualToString:@"1 hour"]) should] beTrue];
            
        });
        
        it(@"should return 1 day if the two dates are 86,400 secs apart", ^{
            
            NSDate *firstDate = [NSDate dateWithTimeIntervalSince1970:0];
            NSDate *secondDate = [NSDate dateWithTimeIntervalSince1970:86400];
            
            NSString *response = [NSDate partialIntervalBetweenFirstDate:firstDate andSecondDate:secondDate];
            
            [[theValue([response isEqualToString:@"1 day"]) should] beTrue];
            
        });
        
        it(@"should return 1 day 12 hours if the two dates are 129600 secs apart", ^{
            
            NSDate *firstDate = [NSDate dateWithTimeIntervalSince1970:0];
            NSDate *secondDate = [NSDate dateWithTimeIntervalSince1970:129600];
            
            NSString *response = [NSDate partialIntervalBetweenFirstDate:firstDate andSecondDate:secondDate];
            
            [[theValue([response isEqualToString:@"1 day 12 hours"]) should] beTrue];
            
        });
        
        it(@"should return 2 days if the two dates are 172800 secs apart", ^{
            
            NSDate *firstDate = [NSDate dateWithTimeIntervalSince1970:0];
            NSDate *secondDate = [NSDate dateWithTimeIntervalSince1970:172800];
            
            NSString *response = [NSDate partialIntervalBetweenFirstDate:firstDate andSecondDate:secondDate];
            
            [[theValue([response isEqualToString:@"2 days"]) should] beTrue];
            
        });
        
        it(@"should return 3 days 4 hours if the two dates are 274053 apart", ^{
            
            NSDate *firstDate = [NSDate dateWithTimeIntervalSince1970:0];
            NSDate *secondDate = [NSDate dateWithTimeIntervalSince1970:274053];
            
            NSString *response = [NSDate partialIntervalBetweenFirstDate:firstDate andSecondDate:secondDate];
            
            [[theValue([response isEqualToString:@"3 days 4 hours"]) should] beTrue];
            
        });
        
    });
    
});

SPEC_END

