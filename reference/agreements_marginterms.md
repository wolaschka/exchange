
# Additional Margin Terms Sections

Section | Field | Description  
---|---|---  
Lock Up Terms | Apply MTA to Lock Up | This field will only become available when [collateral allocation](<agreements_general.md#collatallocation>) is set to Segregate Lock Up and Variation.  
  
If checked, this will apply the Minimum Transfer Amount as defined in the main Margin Terms Section to the calculation of Lock Up Requirement.  
  
If unchecked, Lock Up requirement will not be subject to MTA.  
  
The default for this field is to be unchecked.  
  
This field is audited in the standard way, and can be imported.  
| Apply Rounding to Lock Up | This field will only become available when [collateral allocation](<agreements_general.md#collatallocation>) is set to Segregate Lock Up and Variation.  
  
If checked, this will apply rounding amounts and rounding method as defined in the main Margin Terms Section to the calculation of the Lock Up Requirement.  
  
If unchecked, the Lock Up Requirement will not be subject to any rounding.  
  
The default for this field is to be unchecked.  
  
This field is audited in the standard way, and can be imported.  
Valuation Settings | Frequency | See [Valuation Frequency](<valuation_frequency.md#valuation-frequency>)  
| Holidays | One or numerous Holiday Calendars can be defined on an Agreement.  
  
Once associated to an Agreement, the dates contained within the Holiday Calendar will affect the Margin Calculation Results that are generated on the defined holiday dates.  
  
A Margin Calculation that is run for an Agreement on a date that is defined as a Holiday in any of the Holiday Calendars that are linked to that Agreement will result in a No Action Call Type Margin Calculation Result.  
  
Any No Action Margin Calculation results that are generated in this way will include the word Holiday in the No Action Type column in the No Actions Workflow grid.  
| Intraday Calculations (**OTC, Securities Lending & Client Clearing Only**) | Specify whether the Agreement is eligible to generate [Intraday Margin Calls](<intraday_mc.md#intraday-margin-calculations>) by setting the Intraday Calcs check box.  
  
By default, the check box is cleared, denoting that Intraday Margin Calls will not be generated for the Agreement.  
  
When a Margin Calculation for the Agreement is next run, the system compares the margin calculation result to the existing start of day margin calculation result and evaluates whether to generate an Intraday margin call.  
  
The setting of the field has functional implications on the following system areas:  
\- Margin Calculations  
\- Margin Call Workflow  
  
If Intraday Margin calls are to be generated for the Agreement, set the check box as on.  
  
Please exercise care when setting this field as once set on, there are restrictions applied when attempting to disable it. See [Intraday Margin Calculations](<intraday_mc.md#intraday-margin-calculations>) for more detail on this process.  
| Intraday Tolerance | Minimum call amount for an intraday call to be generated.  
Notification Time | Enable | When the Enable checkbox is clicked, the Adjustment and Notification Time will be visible and editable.  
| Adjustment | Adjustment allows the user to define Notification Timings in the following two ways:  
  
**Standard Timezones**  
Selecting this option means that the Notification Time entered will be specific to the local time in the time zone of the party receiving the Margin Call.  
  
If making a Demand on a Counterparty, the Notification Time will be based on the local time in the Counterparty's time zone, calculated from the city entered in Counterparty Managing Location.  
  
If in receipt of an Anticipated Demand from a Counterparty, then the Notification Time will be based on local time in the Principal's time zone, calculated from the city entered in Principal Managing Location.  
  
**Specific City**  
Selecting this option allows the specific city to be selected to be used for time zone calculation purposes. The Notification time configured will therefore be based on the local time for the time zone of the city selected here, and will be applicable for both Demands and Antic Demands.  
| Notification Time | Notification Time is entered in a 24 hour format, and is configured by selecting the check box to the left of the time Notification Time field and then clicking the specific time unit to be adjusted - hours, minutes.  
  
Here is a Time Format Equivalents:  
![24HourClock.jpg](Images/24HourClock.jpg)  
Agreement Margins |  | The following Agreement Margins can be [added](<agreements.md#create-a-grid-row>), [edited](<agreements.md#edit-a-grid-row>), or [deleted](<agreements.md#delete-a-grid-row>).  
  
[OTC Agreement Margins](<agmtmargins_otc.md#OTCAgmtMargins>)  
  
[Central Clearing Agreement Margins](<agmtmargins_centralclearing.md#central-clearing-margin-terms>)  
  
[Client Clearing Agreement Margins](<agmtmargins_clientclearing.md#client-clearing-margin-terms>)
