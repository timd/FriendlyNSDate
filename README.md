NSDate+FriendlyDate
---

Being a small category on NSDate to return friendly time intervals between two dates, for example:

* 30 secs
* 2 hours 22 secs
* 1 day 10 hours 15 secs

It extends the NSDate class to add two methods:

* `+(NSString *)friendlyIntervalBetweenFirstDate:(NSDate *)firstDate andSecondDate:(NSDate *)secondDate;`
* `+(NSString *)partialIntervalBetweenFirstDate:(NSDate *)firstDate andSecondDate:(NSDate *)secondDate;`

`friendlyDateIntervalBetweenFirstDate:andSecondDate:` will return a full days, hours, mins and seconds string.

`partialIntervalBetweenFirstDate:andSecondDate:` will ignore seconds if the time difference is more than one minute, and ignore minutes if the difference is more than one hour - e.g.

* a difference of 1 min 20 secs will `1 min`
* a difference of 1 hour 20 mins 30 seconds will return `1 hour`
* a difference of 1 day 3 hours 40 mins 22 seconds will return `1 day 3 hours`

Both methods handle pluralisation.
