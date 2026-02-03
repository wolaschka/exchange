
# Valuation Frequency

## Overview

Valuation Frequency is used to set how often a margin calculation can be generated on the agreement.

There are four options:

## Frequency Options

### Daily

A business day is currently any non-weekend day.

### Weekly

When Weekly is selected, there are several required fields.

Field | Description  
---|---  
Recur every nth week | Specify the recurrence. Example: every week, every two weeks and so on.  
Days of week | Select the day or days of the week which are valid Valuation Dates.  
Starting From | Select in the Starting Date field, the date on which the first Valid Valuation Date should occur. Prior to this date a No Action margin calculation result will always be generated when a margin calculation for this agreement is run.  
Adjustment | Select the relevant Business day adjustment.  
  
The options are:  
**Nearest** \- If the Valuation Date is a non-business day, the nearest good business day will become the Valuation Date.  
  
**Next** \- If the Valuation Date is a non-business day, the next (that is, following) good business day will become the Valuation Date.  
  
**None** \- If the Valuation Date is a non-business day there will be no adjustment. The system will not generate a Demand or Anticipated Demand until the next valid Valuation Date. Example: If the Valuation Date is set to be weekly on a Monday with no adjustment and this Monday is a holiday, the Margin Call will not be able to be made until next Monday.  
  
**Previous** \- If the Valuation Date is a non-business day, the previous (that is, preceding) good business day will become the Valuation Date. The business day adjustments work in conjunction with Holiday Dates in Holiday Calendars.  
  
Example: Assume that the agreement is weekly valuation on a Friday with Previous as business day adjustment, but the forthcoming Friday happens to fall on a Holiday date, then the system will deem the preceding Thursday as the valuation date.  
  
### Monthly

The user can define up to two Valuation Dates within a month. The user can also specify which months the Valuation Dates should occur on by selecting the applicable months.

This provides the flexibility to configure quarterly, semi annually or any permutation of specific months that are required.

The **Recur Day Type** has three options, Calendar, Business and Relative. Depending on the choice, the following fields will need to be populated.

Recur Day Type | Field | Description  
---|---|---  
Calendar or Business | Date | Choose a Number or "Last".  
  
If the Valuation Date is specified using the Calendar days option it is possible to define a date which does not exist for all months, for example 31st. In this case, where a month does not have 31 days the system will use the last calendar day of that month as the corresponding Valuation Date (subject to the "Business day adjustment" rule defined).  
  
**Note:** Select in the Starting Date field, the date on which the first valid Valuation Date should occur. Prior to this date a No Action margin calculation result will always be generated when a margin calculation for this agreement is run.Select the relevant Business day adjustment.  
| Additional Date | Choose a Number or "Last".  
| Months | Select one, multiple or all the months of the year.  
| Starting From | Select a date as to when the valuation period should begin.  
| Adjustment | The options are:  
  
**Nearest** \- If the Valuation Date is a non-business day, the nearest good business day will become the Valuation Date.  
  
**Next** \- If the Valuation Date is a non-business day, the next (that is, following) good business day will become the Valuation Date.  
  
**None** \- If the Valuation Date is a non-business day there will be no adjustment. The system will not generate a Demand or Anticipated Demand until the next valid Valuation Date. Example: If the Valuation Date is set to be weekly on a Monday with no adjustment and this Monday is a holiday, the margin call will not be able to be made until next Monday.  
  
**Previous** \- If the Valuation Date is a non-business day, the previous (that is, preceding) good business day will become the Valuation Date. The business day adjustments work in conjunction with Holiday Dates in Holiday Calendars.  
  
Example: Assume that the agreement is monthly valuation on the 15th and has previous as business day adjustment, and the forthcoming 15th happens to fall on a Holiday date, then the system will deem the preceding business date as the Valuation date.  
Relative | Recur every nth Day | Choose from "First", "Second", "Third", "Fourth" or "Last".  
| Day | Choose from the days of the week:  
"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday" or "Saturday".  
| Additional Recur every nth | Choose from "First", "Second", "Third", "Fourth" or "Last".  
| Additional Day | Choose from the days of the week:  
"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday" or "Saturday".  
| Months | Select one, multiple or all of the months of the year.  
| Starting From | Select a date as to when the valuation period should begin.  
| Adjustment | The options are:  
  
**Nearest** \- If the Valuation Date is a non-business day, the nearest good business day will become the Valuation Date.  
  
**Next** \- If the Valuation Date is a non-business day, the next (that is, following) good business day will become the Valuation Date.  
  
**None** \- If the Valuation Date is a non-business day there will be no adjustment. The system will not generate a Demand or Anticipated Demand until the next valid Valuation Date.  
  
### Exact

Allows for one or many exact dates to be selected as a Valuation Date(s) for the agreement.
