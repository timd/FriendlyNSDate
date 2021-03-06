NSDate+FriendlyDate
---

Being a small category on `NSDate` to return an `NSString` containing friendly time intervals between two dates, for example:

* `30 secs`
* `2 hours 22 secs`
* `1 day 10 hours 15 secs`

It extends the `NSDate` class to add two methods:

* `+(NSString *)friendlyIntervalBetweenFirstDate:(NSDate *)firstDate andSecondDate:(NSDate *)secondDate;`
* `+(NSString *)partialIntervalBetweenFirstDate:(NSDate *)firstDate andSecondDate:(NSDate *)secondDate;`

`friendlyDateIntervalBetweenFirstDate:andSecondDate:` will return a full days, hours, mins and seconds string.

`partialIntervalBetweenFirstDate:andSecondDate:` will ignore seconds if the time difference is more than one minute, and ignore minutes if the difference is more than one hour - e.g.

* a difference of 1 min 20 secs will `1 min`
* a difference of 1 hour 20 mins 30 seconds will return `1 hour`
* a difference of 1 day 3 hours 40 mins 22 seconds will return `1 day 3 hours`

Both methods handle pluralisation.

Usage
---

Add `#include 'NSDate+FriendlyDates.h` to the class where you want to use these methods.

    NSDate *firstDate = [NSDate dateWithTimeIntervalSince1970:0];
    NSDate *secondDate = [NSDate dateWithTimeIntervalSince1970:90];
    NSString *response = [NSDate friendlyIntervalBetweenFirstDate:firstDate andSecondDate:secondDate];

will return

`1 min 30 secs`

Unit tests
---

`DateTestsSpec.m` and `PartialDateTests.m` are [Kiwi](https://github.com/allending/Kiwi/wiki) unit tests.
