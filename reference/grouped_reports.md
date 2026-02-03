# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/grouped_reports.html

# Grouped Statements

## Group Margin Call Summary Sheet

The Margin Call Summary sheet can either be:

  * previewed
  * sent
  * resent 



from within the Grouped Margin Calls Workflow.

In each case, The Margin Call Summary sheet contains details of the Margin Calculations for those Agreements selected when the preview or send button is clicked.

Contents

The contents of the Margin Call Summary sheet file are sorted in the following order:

  1. Call Type: (Demands first, then Anticipated Demands, then No Actions)
  2. Agreement Name
  3. Margin Type
  4. Currency
  5. Call ID



Specifically for each Margin Call selected,. the Margin Call Summary Sheet contains the following prepopulated comma separated fields:

Field | Comment  
---|---  
Full Dispute | **Replaced in version 5.2.0 with the Agreed Amount field **  
Cpty Call Amount Favor Of | ** Replaced in 5.2.1 with the Cpty Call Type field **  
Place of Settlement | ** Removed in version 5.2.4. Place of settlement is now definable on SSI records at Entity and Agreement Level**  
Margin Call Id | Internally generated margin call counter.  
Agreement Type | Agreement Type value taken directly from the Agreement, e.g. ISDA, GMRA  
Agreement Name | The Agreement which has the Margin Call  
Agreement Alias | The Alias value taken from the default Alias Group which is assigned to the Agreement.  
Is Intraday | This denotes whether the Margin Call is an Intraday Call (populated with Yes) or a Start of Day Call - (Populated with No)  
Is Replacement | Indicates whether the call is a replacement of a previously issued call:  
When a margin call that has been previously transitioned to the sent queue is recalculated and the recalculation has caused the original call to be replaced (whether the original call was a "start of day" call, or an" intraday" call), this field will be populated with Yes.  
Call Type | One of three values:  
  
Demand  
Antic Demand  
No Action  
Margin Type | This is the Margin Type of the Collateral Call.  
Either Variation or Lock Up.  
Requirement Direction | Is one of the following:  
1\. If the Call Type is No Action, the field is blank.  
2\. If call type is Demand - either Deliver to Prin or Return to Prin.  
3\. If Antic Demand - either Deliver to Cpty or Return to Cpty.  
  
Note: For 2) and 3) that a single Margin Call may have more than one requirement direction.  
For example a Demand may contain a Return to Prin and a Deliver to Prin requirement.  
  
Note: Each line on the file is for a single Requirement Direction. Therefore a margin call made up of a return and a deliver is represented as two rows in the file.  
Call Amount | The amount of the Margin Call as calculated by the Principal.  
  
If the Call type is No Action, this will be populated with 0.  
  
Call Amounts for Demands are shown in positive notation; conversely, negative signage is used for Antic Demands  
Currency | The Currency of the Agreement on which the Margin Call exists.  
Net Exposure | The Netted Exposure Trades Values.  
  
Net Exposure in Favor of the Principal is expressed in positive signage; conversely, negative when in Counterparty favor  
Exposure Favor Of | The Party that Net Exposure is in favor of:  
  
Either Principal or Counterparty  
  
It is blank when Net exposure is zero.  
Netted Additional | Margin The Sum total of Additional Margin Amounts  
Additional Margin Due To | The Party that Netted Additional Margin Amounts is in favor of:  
  
Either Principal or Counterparty  
  
It is blank when Net Additional Margin is zero.  
Lock Up Margin | The total of Lock Up Margin Requirements.  
Lock Up Margin Due To | The Party to whom the Lock Up Margin requirement is due, either Principal or Counterparty  
Threshold | The threshold of the party on whom the margin call is being made.  
  
For a Demand, this is the Counterparty's threshold.  
  
For an Antic Demand, this is the Principal's threshold.  
  
Where Call Type is No Action this is blank.  
MTA | The Minimum Transfer Amount of the Party being called for Margin.  
  
For a Demand, this is the Counterparty's MTA; for an Antic Demand, the Principals.  
  
Where Call Type is No Action this field is blank.  
Rounding Amount | The Rounding Amount for the party being called for Margin.  
Settled Held | The total market value of Settled Collateral Held by the principal denoted in Currency.  
  
where market value = Held Notional (settled) * Dirty Price * Valuation Percentage converted into Agreement Currency using Instrument FX rates and Agreement FX rates as necessary  
Held Collateral is expressed with positive signage.  
Pending Collateral In | This is calculated total market value of Collateral that is due to be received by the Principal  
  
It is calculated as the sum of the following items  
  
\- Mkt Val (Agmt Ccy) of Deliver to Principal Movements  
\- Mkt Val (Agmt Ccy) of Return to Principal Movements  
\- Prior Agreed to Deliver To Principal Amounts  
\- Prior Agreed to Return To Principal Amounts  
  
Note: (N.B. - Movements are only included if they are in an in Transit Settlement State)  
  
Pending Collateral In is expressed with positive signage.  
Settled Posted | The total market value of Settled Collateral Posted to the Counterparty denoted in Currency.  
  
_where market value = Posted Notional (settled) * Dirty Price * Valuation Percentage converted into Agreement Currency using Instrument FX rates and Agreement FX rates as necessary_  
  
Posted Collateral is expressed with negative signage.  
Pending Collateral Out | This is calculated total market value of Collateral that is due to be received by the Counterparty  
  
It is calculated as the sum of the following items  
  
\- Mkt Val (Agmt Ccy) of Deliver to Counterparty Movements  
\- Mkt Val (Agmt Ccy) of Return to Counterparty Movements  
\- Prior Agreed to Deliver To Cpty Amounts  
\- Prior Agreed to Return To Cpty Amounts   
  
Note: (N.B. - Movements are only included if they are in an in Transit Settlement State)  
  
Pending Collateral Out is expressed with negative signage.  
Prin | The Principal Entity on the Agreement.  
Cpty | The Counterparty Entity on the Agreement.  
No Action Type | Populated on No Action margin types only if one of the following cases is met:  
  
**Non Valuation Day** \- the Margin Calculation was run on a date which is not defined as a valuation date according to the agreement.  
  
**Missing FX Rate** \- The Margin Calculation results could not be successfully generated as FX rate information necessary for the calculation was not available in the system.  
  
**Holiday** \- The Margin Calculation has been run on a date that is defined as a Holiday in a Holiday Calendar that has been defined on the Agreement.  
  
**Monitor** \- Agreements with a status of Monitor, will always generate No Action margin calculation results with a No Action Type of Monitor.  
  
**Unilateral Agreement** \- If an Agreement has the posting party defined as either Principal or Counterparty, it is deemed as Unilateral, and only margin calls which are valid according to which party is obliged to post collateral are generated.  
  
For example, if Posting Party is defined as Principal and the margin calculation results in a Deliver to Principal margin requirement, this will be generated as No Action call with a Unilateral Agreement No Action type  
Requirement Amount | The Amount of the Call amount that relates to the Requirement Direction.  
  
If the Call type is No Action, this will be populated with 0.  
  
Amounts for Demands are shown in positive notation; conversely, negative signage is used for Antic Demands  
Previous Call Amount | This is populated only when the row is for an Intraday Margin Call (i.e Is Intraday field = Y), and shows the call amount of the margin call that preceded the Intraday margin call.  
  
When an Intraday margin call is generated, it either:  
  
1\. Increments an existing agreed Start of day Margin Call or  
2\. Replaces a previous unactioned Intraday Call or  
3\. Increments an existing agreed Intraday Call  
  
for the same calculation date.  
  
(see [Intraday Margin Calculations](<intraday_mc.md>) for more details of this calculation process)  
  
In summary, an Intraday Margin Calculation's call amount is derived from the previous margin call  
  
In the case of a) and b) above, this will be the call amount on the Start of Day Call. In the case of c) it will be the immediately preceding Intraday Call  
  
See Note B) below for scenarios where there are multiple intraday and/or multiple preceding calls.  
Previous CCY | The currency of Previous Call Amount as defined above.  
See Note B) below for scenarios where there are multiple intraday and/or multiple preceding calls.  
Previous Call Type | Shows the Margin Call Type (Demand / Antic Demand etc) of the Intraday Margin Call's preceding Margin Call.  
  
See Note B) below for scenarios where there are multiple intraday and/or multiple preceding calls.  
Agreed Amount | The Amount Agreed of the Margin Call which is agreed to by the parties.  
  
This is prepopulated according to Call Type:  
  
**Demand** \- Call Amount value.  
**Anticipated Demand** \- Blank  
**No Action** \- 0  
Instrument Identifier | _Note: not prepopulated at creation point. This field can be populated along with collateral movement details when used to respond to a margin call._  
Asset Pool | _Note: not prepopulated at creation point._  
  
This field can be used to denote the Asset Pool Name for collateral movements that are sourced from or due to be returned to an Asset Pool  
  
It can therefore be populated along with other movement details on the following movements:  
  
_Deliver to Counterparty_  
  
Return to Principal  
Notional | If Margin Type is No Action it is prepopulated with 0  
  
Otherwise it is not populated at this stage.  
Trade Date (yyyymmd) | _Note: not prepopulated at creation point._  
  
This field can be populated along with collateral movement details when used to respond to a margin call.  
Movement Direction | Defaults to the same value as Requirement Direction  
Settlement Date (yyyymmdd) | _Note: not prepopulated at creation point. This field can be populated along with collateral movement details when used to respond to a margin call._  
Cpty Call Comment | _Note: not prepopulated at creation point._ This field can be populated along with collateral movement details when used to respond to a margin call.  
Cpty Exposure Amount | This field represents the Counterparty's calculation of what the exposure amount is   
Cpty Exposure Amount Favor Of | This field represents the Counterparty's calculation of which Party the exposure amount is in favor of   
Cpty Call Type | This represents the Counterparty's expectation of the call, from the Principal's point of view.  
  
It is prepopulated as follows:  
  
For a Demand - Demand  
  
For Antic Demand - Blank  
  
For No Actions - No Action  
Cpty Call Amount | This represents the Counterparties expected calculation of the Margin Call Amount.  
  
It is prepopulated as follows:  
  
For a Demand, this is identical to the Requirement Amount  
  
For Antic Demand it is blank.  
  
For No Actions, this is populated as zero  
Calculation Date | The time and date of the margin calculation from the perspective of the time zone of the managing location city of the Principal.  
  
**Note:**

The values for Previous Call Amount, Previous Call Type and Previous CCY are populated on Intraday Calls, but are taken from the preceding call. However, there may be scenarios where there are multiple preceding calls and/or multiple Intraday calls. In such situations only one "set" of preceding call details are recorded.

### Example

**Single Intraday call, but Multiple preceding Margin Calls.**

e.g An Antic Demand and Demand are generated as start of day Margin Calls. A single Intraday call is generated.

In this scenario, the Intraday Call will refer to the details of the preceding call which has a matching call type. In other words, should the intraday margin call be a Demand, it will refer to the preceding Demand margin call. It will not refer to the preceding Antic Demand.

**Multiple Intraday Calls but single preceding Margin Call**

Similarly, there can be situations where multiple intraday calls are generated, but there is only a single preceding call that they are based on.

e.g. The start of day call was a demand, but a Demand and Antic Demand intraday calls are generated.

In this scenario, both Intraday calls will refer to the call amount, call type and call currency of the single preceding margin call. No matching based on call type is done.

**Multiple Intraday Calls and Multiple preceding Calls**

Finally, there can be situations where there are multiple intraday calls generated, based on multiple preceding calls. 

e.g An Antic Demand and Demand are generated as start of day Margin Calls, and Demand and an Antic Demand intraday calls are generated.

In this scenario, the Intraday Call refers to the matching preceding margin call type.

That is, the Intraday _Demand_ refers to the Start of day _Demand_ , while the Intraday _Antic Demand_ refers to the Intraday _Antic Demand_.

## Grouped Margin Calls Summary Notice

The Margin Call Summary Notice is created at the same time as the [Margin Calls Summary Sheet.](<#GroupMarginCallSummarySheet>)

As such it can be sent or resent alongside the Margin Calls Summary Sheet from within the Grouped Margin Calls Workflow.

In each case, The Margin Call Summary Notice contains details of the Margin Calculations for those Agreements selected when the send or resend button is clicked.

### Example

**Example of Margin Call Summary Notice**

![MarginSummaryNoticeExample.jpg](Images/MarginSummaryNoticeExample.jpg)

**Contents**

Specifically for each Margin Call selected, the Margin Call Summary Notice contains the following fields:

**Header Section**

![MarginSummaryNoticeExampleHeader.jpg](Images/MarginSummaryNoticeExampleHeader.jpg)

Item | Report Field | Data Source / Comments  
---|---|---  
1 | Logo | Taken from Logo and Disclaimer field in the Statement Display Options section on the Combined Business Line Agreement Group that the enclosed Agreements are associated to.  
2 | Principal Name | Taken from Principal field in the Statement Display Options section in Combined Business Line Agreement Group  
3 | To Counterparty | Taken from Counterparty field in the Statement Display Options section in Combined Business Line Agreement Group  
4 | Contact(s) Margin Call Summary Contact Name | Taken from the Name field in the Margin Summary Contact section on the Combined Business Line Agreement Group that the enclosed Agreements are associated to.  
5 | RE: Agreement Group Name | Taken from Agreement Group Name field in the Statement Display Options section on the Combined Business Line Agreement Group that the enclosed Agreements are associated to.  
6 | Confidential Verbiage | Fixed Text "This Notice is confidential, unauthorized use is forbidden. Please destroy if you are not the addressee"  
7 | Introduction Verbiage | Pursuant to the Agreement Type between Principal and Counterparty we hereby confirm notice of the following Agreement Group Name Margin Call requirements as at Close of Business COB_Date  
  
Where  
  
Agreement Type, Principal, Counterparty, Agreement Group Name are taken from the corresponding named fields in Statement Display Options section on the Combined Business Line Agreement Group that the enclosed Agreements are associated to.  
  
and COB_Date is the business day prior to the date/time when the report was generated, expressed in the form Weekday, Month, Day, Year.  
8 | Verbiage | Fixed Text "Summary Notification of Margin Calls"  
  
**Report Body**

![MarginSummaryNoticeExampleBody.jpg](Images/MarginSummaryNoticeExampleBody.jpg)

Item | Report Field | Data Source / Comments  
---|---|---  
|  | Margin Calculations displayed on the Margin Summary Notice are grouped by Margin Type, and then sorted within this grouping by Agreement Name, Margin Type and Currency. Margin Type sections are only displayed if there are items to display. For example, if there are no Demands selected for inclusion on the notice, then the whole Demands section will be omitted.  
1 | Verbiage for Demands section | Demands due to Principal  
2 | Verbiage for Antic Demands section | Antic Demands due to Counterparty  
3 | Verbiage for No Action section | Fixed Text; No Actions  
|  | Within each Margin Type grouping section, the following fields from the Margin Calculation are shown. These are taken at the time of the Margin calculation.  
4 | Agreement Name | The Agreement which has the Margin Call  
| Agreement Alias | The Agreement Alias taken from the Agreement Group which is defined as default. See [How to Set an Alias Group as Default](<reference_related_data.md#alias-groups>).  
| Agreement Type | Type value taken from the Agreement's General tab.  
| Margin Type | This is the Margin Type of the Collateral Call.  
  
Either Variation or Lock Up.  
  
Client Clearing Agreements have a single margin type and this is taken from the Margin Type value on the Agreement.  
  
OTC Agreements with a Collateral Allocation Method of Auto Allocate, only have Variation Margin Type.  
  
OTC Agreements that segregate lock up and variation, have two margin types - Lock Up and or Variation.  
  
OTC Agreements that have a Lock Up only calculation method only have a Lock Up Margin Type. See [Working with OTC Agreements that Segregate Lock Up and Variation Margin](<segregate_lockup_varmargin.md>) or [How to Define an OTC Lock Up Only Agreement](<agreements_define.md#otc-lock-up-only>).  
| Ccy | The Currency of the Agreement on which the Margin Call exists.  
| Net Exposure | The Netted Exposure Trades Values  
  
Positive Values denote exposure in Favor of Principal; Negative in Favor of Counteparty  
| Additional Margin | The Sum total of Additional Margin Amounts  
| Lock Up Margin | The Sum total of Additional Margin Amounts  
| Threshold | The threshold of the party on whom the margin call is being made.  
  
For a Demand, this is the Counterparty's threshold.  
  
For an Antic Demand, this is the Principal's threshold.  
  
Where Call Type is No Action this uses the relevant parties threshold as if it were a Demand or Antic Demand.  
| MTA | The Minimum Transfer Amount of the Party being called for Margin.  
  
For a Demand, this is the Counterparty's MTA; for an Antic Demand, the Principals.  
  
Where Call Type is No Action this uses the relevant party's MTA as if it were a Demand or Antic Demand.  
| Rounding | The Rounding Amount for the party being called for Margin.  
| Collateral Held | The total market value of Collateral Held by the principal denoted in Currency.  
  
where market value = Held Notional (in settled state) * Dirty Price * Valuation Percentage converted into Agreement Currency using Instrument FX rates and Agreement FX rates as necessary  
  
Held Collateral is expressed with positive signage.  
| Pending Collateral | In This is calculated total market value of Collateral that is due to be received by the Principal  
  
It is calculated as the sum of the following items  
  
Mkt Val (Agmt Ccy) of Deliver to Principal Movements  
  
Mkt Val (Agmt Ccy) of Return to Principal Movements  
  
Prior Agreed to Deliver To Principal Amounts  
  
Prior Agreed to Return To Principal Amounts  
  
(NB - Movements are only included if they are in an in Transit Settlement State)  
  
Pending Collateral In is expressed with positive signage.  
| Posted Collateral | The total market value of Collateral Held by the Counterparty denoted in Currency expressed in negative signage.  
  
where market value = Held Notional (in settled state) * Dirty Price * Valuation Percentage converted into Agreement Currency using Instrument FX rates and Agreement FX rates as necessary  
  
Held Collateral is expressed with positive signage  
| Pending Collateral Out | This is calculated total market value of Collateral that is due to be received by the Counterparty  
  
It is calculated as the sum of the following items  
  
Mkt Val (Agmt Ccy) of Deliver to Counterparty Movements  
  
Mkt Val (Agmt Ccy) of Return to Counterparty Movements  
  
Prior Agreed to Deliver To Cpty Amounts  
  
Prior Agreed to Return To Cpty Amounts  
  
(NB - Movements are only included if they are in an in Transit Settlement State)  
  
Pending Collateral Out is expressed with negative signage.  
| Accrued Interest | Where an agreement is defined as include Accrued Interest in the Margin Calculation, this shows the net amount of all accrued interest amounts that exist at the time of the Margin Calculation converted into agreement currency.  
| Call Amount | The amount of the Margin Call as calculated by the Principal.  
  
For a Demand, this is shown in positive signage; negative for an Antic Demand  
  
Where a No Action has a call amount (for example, there is a margin call requirement but it is not a valuation date for the agreement) the signage will be as if the call was actually a Demand or Antic Demand.  
  
**Report Footer Section**

![MarginSummaryNoticeExampleFooter.jpg](Images/MarginSummaryNoticeExampleFooter.jpg)

Item | Report Field | Data Source / Comments  
---|---|---  
1 | Perspective Verbiage | Fixed text "(All values are from the Principal's point of view)"  
  
Fixed text "* Indicates Intraday call "  
  
## Grouped Margin Calls Collateral Confirmation Summary Notice

From within the Confirmed filter where the call is in a workflow state of "Approved", it is possible to send a single Collateral Confirmation Summary Notice for specified Margin Calls.

The Collateral Confirmation Summary Notice contains details of the Collateral Movements that are associated to those Margin Calls that have been selected for inclusion on the notice.

**Note:** A Collateral Movement must be in a settlement state of In Transit to appear on the report.

Additionally, when the Notice is generated to be sent, the system applies movement netting logic to the movements (based on how payment netting options have been defined, and netting rules) and displays the netting results on the notice.

The Collateral Confirmation Summary Notice can either be :

  * Previewed

  * Sent




from within the Grouped Margin Calls Workflow.

When a user elects to send the notice by clicking on the **Send Collateral Notice** button, it is sent to those contacts defined in the Collateral Confirmation Summary Contact section of the Combined Business Lines Agreement Group.

The **Collateral Confirmation Summary Notice** contains the following information:

  * Details of the collateral movements attached to Margin Calls selected when the send collateral Notice button was clicked.



(note, only movements that are in a settlement state of In Transit are shown on the Notice).

  * Where netting parameters have been defined, the notice details the results of applying payment netting.



**Note:** When resending a groups collateral confirmation notice, the warning message will not include the Call Ids and will just send the following message: "Movement(s) for the calls were previously sent. Do you wish to resend the Collateral Confirmation Notice?"

### Example

**Example of Collateral Confirmation Summary Notice**

![CollateralConfirmationSummaryNoticePg1.jpg](Images/CollateralConfirmationSummaryNoticePg1.jpg)

![CollateralConfirmationSummaryNoticePg2.jpg](Images/CollateralConfirmationSummaryNoticePg2.jpg)

**Contents**

The collateral Confirmation Summary Notice has four sections

  * Header 
  * Report Body - Netted Payments Section 
  * Report Body - Non Nettable Movements Section 
  * Footer 
  * Specifically for each Margin Call selected, the Collateral Confirmation Summary Notice contains the following fields:



**Header Section**

![CollateralConfirmationSummaryNoticeExampleHeader.jpg](Images/CollateralConfirmationSummaryNoticeExampleHeader.jpg)

Item | Report Field | Data Source / Comments  
---|---|---  
1 | Logo | Taken from Logo and Disclaimer field in the Statement Display Options section on the Combined Business Line Agreement Group that the enclosed Agreements are associated to.  
2 | Principal Name | Taken from Principal field on Combined Business Line Agreement Group  
3 | To Counterparty | Taken from Counterparty field on Combined Business Line Agreement Group  
4 | Contact(s) Margin Call Summary Contact Name | Taken from the Name field in the Margin Summary Contact section on the Combined Business Line Agreement Group that the enclosed Agreements are associated to.  
5 | RE: Agreement Group Name | Taken from Agreement Group Name field in the Statement Display Options section on the Combined Business Line Agreement Group that the enclosed Agreements are associated to. if that field is blank, then the name of the Combined Business Line Agreement Group is used.  
6 | Confidential Verbiage | Fixed Text "This Notice is confidential, unauthorized use is forbidden. Please destroy if you are not the addressee"  
7 | Introduction Verbiage | Pursuant to the  between  and  we hereby confirm notice of the following  movement(s) and netted payment(s)  
  
Where  
  
Agreement Type, Principal, Counterparty, Agreement Group Name  
  
are taken from the corresponding named fields in Statement Display Options section on the Combined Business Line Agreement Group that the enclosed Agreements are associated to  
  
If Agreement Group Name field in the statement display options section is blank, then the name of the Combined Business Line Agreement Group is used.  
8 | Verbiage | Fixed Text "Collateral Confirmation Summary Notice Details"  
  
**Report Body Netted Payments Section**

Collateral Movement details displayed in the Netted Payments section are those that are eligible for netting.

Netting Eligible movements are then grouped using netting rules according to the following criteria to form "netting groups":

  1. **Netting Combination is enabled (Lock up and Variation movements can be netted together)**

Movements where the Instrument ID and Settlement Date are identical.

  2. **If Netting Combination is not enabled (Lock Up movements cannot net with variation movements)**

Movements where the Instrument ID, Settlement Date and Margin Type are identical.




For each netting group, the system then calculates what the netted payment direction is by summing the notional amounts of all movements within the netting group.

If this is a negative number, then the netted payment direction is a payment; conversely a positive number indicates a receipt.

Netting groups are then sorted by Settlement date, and then by Instrument Type (Cash, then Debt then Equity)

![CollateralSummaryNoticeNettedBody.jpg](Images/CollateralSummaryNoticeNettedBody.jpg)

Item | Report Field | Data Source / Comments  
---|---|---  
|  | Within each netting group section, the following fields from each Collateral Movement are shown.  
1 | Verbiage | Netted Payments  
2 | Movement Id | This is an internally generated unique identifier assigned to each single collateral movement when it is created.  
  
For example, if a Margin Call has three collateral movements attached to it, a unique Movement ID is assigned to each collateral movement.  
| Agreement Name | The Agreement which the collateral movement is for.  
| Agreement Alias | The Agreement Alias taken from the Agreement Group which is defined as default. See [How to Set an Alias Group as Default](<reference_related_data.md#alias-groups>).  
| Principal | The Principal on the Agreement Name  
| Counterparty | The Counterparty on the Agreement Name  
| Margin Type | This is the Margin Type of the Collateral Movement  
  
Either Variation or Lock Up.  
  
Client Clearing Agreements have a single margin type and his is taken from the Margin Type value on the Agreement.  
  
OTC Agreements with a Collateral Allocation Method of Auto Allocate, only have Variation Margin Types.  
  
OTC Agreements where that field is segregate lock up and variation, have two margin types - Lock Up and or Variation.  
  
OTC Agreements that have a Lock Up only calculation method only have a Lock Up Margin Type.   
  
See [Working with OTC Agreements that Segregate Lock Up and Variation Margin](<segregate_lockup_varmargin.md>) or [How to Define an OTC Lock Up Only Agreement](<agreements_define.md#otc-lock-up-only>).  
| Direction | The Direction of the Collateral Movement.  
  
For Movements that are due to the Principal, this can be one of the following:  
  
Deliver to Prin  
  
Return to Prin  
  
For Movements that are due to the Counterparty, this can be:  
  
Deliver to Cpty  
  
Return to Cpty  
| Settlement Date | The Settlement Date that was entered on the collateral movement.  
| Instrument Ref | The Primary id of the instrument on the collateral movement.  
| Instrument Ccy | The Instrument Ccy.  
| Notional | The notional quantity of the instrument on the collateral movement  
| Price | The Price of the Instrument when the collateral movement was created.  
| Market Value | The market value of the collateral movement in Agreement Ccy.  
  
[Notional * Price * FX conversion Rate]  
| Valuation % | The Valuation Percentage that is applied to the Movement according to Eligibility Criteria on the Agreement.  
| Adjusted Market Value | The adjusted market value of the collateral movement in Agreement Ccy.  
  
[Notional * Price _Valuation Percentage_ FX conversion Rate]  
3 |  | At the end of each netting group section, the following verbiage is displayed:  
  
If the netted payment direction is a **payment**  
  
Principal is due to Pay sum_of_notional on Settlement_Date  
  
If the netted payment direction is a receipt  
  
Principal is due to Receive sum_of_notional on Settlement_Date  
  
Note: For netted payments where the Instrument is not cash, the word "Pay" is replaced with "Deliver".  
  
**Report Body Non-Nettable Movements Section**

![CollateralSummaryNoticeExampleBody.jpg](Images/CollateralSummaryNoticeExampleBody.jpg)

Item | Report Field | Data Source / Comments  
---|---|---  
|  | Collateral Movement that are not eligible for netting are shown in the Non-Nettable Movements section. They are grouped first by Movement Direction, and then sorted within this grouping by Agreement Name, Margin Type and Currency  
1 | Verbiage for Movements that are due to the Principal | Due to Principal (taken from the corresponding named fields in Statement Display Options section on the Combined Business Line Agreement Group that the enclosed Agreements are associated to)  
2 | Verbiage for Movements that are due to the Counterparty | Due to Counterparty (taken from the corresponding named fields in Statement Display Options section on the Combined Business Line Agreement Group that the enclosed Agreements are associated to)  
|  | Within each Direction grouping section, the following fields from the Collateral Movement are shown.  
3 | Movement Id | This is an internally generated unique identifier assigned to each single collateral movement when it is created.  
  
For example, if a Margin Call has three collateral movements attached to it, a unique Movement ID is assigned to each collateral movement.  
| Agreement Name | The Agreement which the collateral movement is for.  
| Agreement Alias | The Agreement Alias taken from the Agreement Group which is defined as default.  
  
See [How to Set an Alias Group as Default](<reference_related_data.md#alias-groups>).  
| Principal | The Principal on the Agreement Name  
| Counterparty | The Counterparty on the Agreement Name  
| Margin Type | This is the Margin Type of the Collateral Movement  
  
Either Variation or Lock Up.  
  
Client Clearing Agreements have a single margin type and his is taken from the Margin Type value on the Agreement.  
  
OTC Agreements with a Collateral Allocation Method of Auto Allocate, only have Variation Margin Types.  
  
OTC Agreements where that field is segregate lock up and variation, have two margin types - Lock Up and or Variation.  
  
OTC Agreements that have a Lock Up only calculation method only have a Lock Up Margin Type.  
  
See [Working with OTC Agreements that Segregate Lock Up and Variation Margin](<segregate_lockup_varmargin.md>) or [How to Define an OTC Lock Up Only Agreement](<agreements_define.md#otc-lock-up-only>).  
| Direction | The Direction of the Collateral Movement.  
  
For Movements that are due to the Principal, this can be one of the following:  
  
Deliver to Prin  
  
Return to Prin  
  
For Movements that are due to the Counterparty, this can be:  
  
Deliver to Cpty  
  
Return to Cpty  
| Settlement Date | The Settlement Date that was entered on the collateral movement.  
| Instrument Ref | The Primary id of the instrument on the collateral movement.  
| Instrument Ccy | The Instrument Ccy.  
| Notional | The notional quantity of the instrument on the collateral movement  
| Price | The Price of the Instrument when the collateral movement was created.  
| Market Value | The market value of the collateral movement in Agreement Ccy.  
  
[Notional * Price * FX conversion Rate]  
| Valuation % | The Valuation Percentage that is applied to the Movement according to Eligibility Criteria on the Agreement.  
| Adjusted Market Value | The adjusted market value of the collateral movement in Agreement Ccy.  
  
[Notional * Price _Valuation Percentage_ FX conversion Rate]  
|  | **Note:** Both the Due to  and the Due to  sections are always shown irrespective of whether there are collateral movements for the corresponding direction. Should no collateral movements exist for a particular grouping be included on the report, then the verbiage "No Movements" will be displayed.  
  
**Report Footer Section**

![MarginSummaryNoticeExampleFooter.jpg](Images/MarginSummaryNoticeExampleFooter.jpg)

Item | Report Field | Data Source / Comments  
---|---|---  
1 | Perspective Verbiage | Fixed text "(All values are from the Principal's point of view)"  
2 | Disclaimer | Taken from Logo and Disclaimer field in the Statement Display Options section on the Combined Business Line Agreement Group that the enclosed Agreements are associated to.  
  
Note: Only collateral movements that are in a settlement state of In Transit are shown on the notice. Please bear in mind that running the settlement task can update the settlement state of movements, and therefore any movements updated to be no longer n an In Transit settlement state when the notice is generated will not be shown.

## Exposure Statements from Grouped Margin Calls

Grouped Margin Calls Workflow

From within the Grouped Margin Calls Workflow it is possible to send Exposure Position Statements.

The Statement can be sent to either

  * The Contact(s) set up on the Agreement Group.



or

  * The Contact(s) set up on the Agreement.



**Pre-requisites**

In the case of an Agreement Group, there must be a contact populated with an email address in the Margin Summary Sheet Contact section of the Agreement Group that the Agreement is covered by.

In the case of an Agreement, it must have a contact with a valid email address which is defined as eligible to receive Exposure Statements on the Agreement that has the Margin Call.

In both cases, there must be Exposure Trades existing on the Margin Call at the time the Exposure Statement is requested to be sent.

**Note:** Additionally, exposure trades are not held on Client Clearing Agreements, with a Lock Up Margin type. Therefore the Send Exposure Statement option is not available for Margin Calls for these Agreement types.

**Sending Exposure Position Statement**

  1. To send an Exposure Position Statement from the workflow, locate the Margin Call in either in the Unsent, Sent or Confirmed Approval state. 

  2. Click the checkbox on the row or click on the margin call. 

  3. When the **More** button appears, click it and select **Send Exposure Statement**. 

  4. Then select if the statement needs to be sent To Agreement Contacts or To Group Contacts.

(_if the send exposure statement option is not available, then the call selected is for a client clearing agreement with lock Up margin type_)




Provided that the pre-requisites have been met, the user will see a confirmation: 

![exposure_statement_email_requested.jpg](Images/exposure_statement_email_requested.jpg)

If Agreement Contacts has been selected, a statement in Microsoft™ Excel spreadsheet software format will be emailed to those contacts on the agreement who are configured to receive Exposure Statements.

If Group Contacts has been selected, the same Excel Exposure Trades statement will be emailed to the contacts in the Margin Summary Sheet Contact section of the Agreement Group.

The email message will be titled Exposure Statement  \-  \- COB< YYYYMMDD> and come from the sending email address defined in the Agreement Group for this Agreement. 

The excel attachment will be named Exposure Statement  \-  \- COB< YYYYMMDD>.xls. Please see File Sizes and Exposure Statements for additional information on sending large files.

**Validations**

Certain Validations are performed when the user requests that an Exposure Statement is sent:

  * If Send to Agreement Contacts was requested but there are no contacts defined on the agreement

The exposure statement will be not be able to be sent to a counterparty if there are no contacts set up for the agreement.

Should this scenario occur, the following error message:

![exp_stmt_no_contacts_defined.jpg](Images/exp_stmt_no_contacts_defined.jpg)

To remedy this situation, set up contacts with email addresses on the agreement, or assign existing contacts to the agreement and repeat the process.

  * Similarly if contacts exist on the agreement, but they have no email address defined 

If no valid email address exists for any of contacts on the agreement, the system will be unable to send the exposure statement.

To remedy this situation, edit the contacts on the agreement and ensure that valid email addresses exist.

**Note:** If at least one of the contacts on the agreement has a valid email address, then the exposure statement will be sent to the valid email address and no error message will be displayed.

  * If Send to Margin Contacts was requested but there are no contacts defined on the Agreement Group

If there is no Margin Contacts set up on the Agreement Group when the request that an exposure statement is sent, then the user will receive a messages stating "No email defined on group to receive margin call summary".

  * If there are no trades saved against the Margin Call

If there are no exposure trades saved against the margin call (either because there genuinely are no trades for the agreement, or more likely, that the Margin Calculation Analysis task has not been run, then the following error message will occur when attempting to send the exposure statement: 

![no_exposure_trades_defined.jpg](Images/no_exposure_trades_defined.jpg)

Additionally, when selecting the exposure trades tab within the margin call, it can be seen that no trades are associated with the agreement.

If a trade count and exposure figure exists in the grid but no trades, it is most likely that the Margin Calculation Analysis task has not been run. Running this task should populate the grid with trades and enable the exposures to be seen, and therefore send the statement.




**Note:** Regarding Sending Emails

The following process occurs when an exposure statement is emailed.

  1. The email is sent from the sending email address defined on the Agreement Group that the Agreement is covered by. If this is not defined or invalid, it will be sent from the email address defined when the application server was installed.
  2. When Sent to Agreement Contacts, the email is sent to each contact on the Agreement that is defined as eligible to receive Positions statements.
  3. When Sent to Group Contacts is selected, the email is sent to those email addresses defined in the Margin Summary Sheet Contact on the Agreement Group which covers the Agreement.
  4. A cc of the email is sent to the email address defined on the user object of the user who requested the statement.
  5. A cc of the email is also sent to the email address of the sent from email address in the Agreement Group.



## Collateral Position Details from Grouped Margin Calls

From within the Grouped Margin Calls Workflow it is possible to send Collateral Position Statements. The Statement can be sent to either

  * The Contact(s) set up on the Agreement Group.



Or

  * The Contact(s) set up on the Agreement itself.



**Pre-requisites**

In the case of an Agreement Group, there must be a contact populated with an email address in the Margin Summary Sheet Contact section of the Agreement Group that the Agreement is covered by.

In the case of an Agreement, it must have a contact with a valid email address which is defined as eligible to receive position statements on the Agreement that has the Margin Call.

In both cases, there must be Collateral Positions existing on the Margin Call at the time the Position Statement is requested to be sent.

To send a Collateral Position Statement from the Grouped Margin Call Workflow states:

  1. To send an Collateral Statement from the workflow, locate the Margin Call in either in the Unsent, Sent or Confirmed Approval state. 

  2. Click the checkbox on the row or click on the margin call. 

  3. When the **More** button appears, click it and select **Send Position Statement**.

  4. Then select if the statement needs to be sent To Agreement Contacts or To Group Contacts.




Provided that the pre-requisites have been met, the user will be prompted with a confirmation of "Your Position Statement email has been set up for delivery".

If the To Agreement Contacts is selected, a statement in Microsoft™ Excel spreadsheet software format will be emailed to those contacts on the agreement who are configured to receive Collateral Position Statements.

If the To Group Contacts is selected, the same Excel statement will be emailed to the contacts in the Margin Summary Sheet Contact section of the Agreement Group.

The email header reads Collateral Positions < Principal> < Counterparty> COB YYYYMMDD .xls where COBYYYMMDD equals the close of business day that the Margin Call is calculated for.

The Collateral Position statement contains Settled Positions and all In Transit state Collateral Movements for the selected Agreement, separated by Margin Type.

### Example

![Collateral_Position_Statement_example.jpg](Images/Collateral_Position_Statement_example.jpg)

As outlined above in pre-requisites, certain validations occur when a request for the Collateral Position Statement to be sent:

  * If the user selected To Agreement Contacts, the system validates that there are eligible agreement contacts.

If there are no contacts defined on the Agreement, or the contacts defined on the agreement are not configured as being eligible to receive position statements.

Solution: Add or Configure contacts with eligibility to receive position statements.

  * If there is an agreement contact defined and set as eligible to receive position statement, but no email address exists for that contact.

Solution: Update the contact to have a valid email address.

  * If the user selected To Group Contacts, the system validates that there is a contact defined in the Margin Section of the Agreement Group.

If there are no collateral positions on the Agreement, then a message will appear stating "A statement cannot be generated if there are no positions for this margin call."

Solution: Check the status of the movements - only Movements in a state of In Transit, and settled position are included. If neither of these exist, the error is valid.




The following process occurs when a statement is emailed:

  1. The email is sent from the sending email address defined on the Agreement Group that the Agreement is covered by. If this is not defined or invalid, it will be sent from the email address defined when the application server was installed.
  2. When Sent to Agreement Contacts, the email is sent to each contact on the Agreement that is defined as eligible to receive Positions statements.
  3. When Sent to Group Contacts is selected, the email is sent to those email addresses defined in the Margin Summary Sheet Contact on the Agreement Group which covers the Agreement.
  4. A cc of the email is sent to the email address defined on the user object of the user who requested the statement.
  5. A cc of the email is also sent to the email address of the sent from email address in Agreement Group.



## Grouped Interest Payments Summary Sheet

The **Interest Payment Summary Sheet** can either be:

  * previewed

  * sent

  * resent




from within the Grouped Interest Payments Workflow.

In either case, The **Interest Payment Summary sheet** contains details of the Interest Payments for those Agreements selected when the preview or send button is clicked.

**Contents**

Specifically for each Interest Payment selected, the Payment Summary Sheet contains the following prepopulated comma separated fields:

Field | Comment  
---|---  
Payment ID | Internally generated Interest Payment counter. This uniquely identifies the payment in the database.  
Agreement Name | The Agreement which has the Interest Payment  
  
By default, entries on the summary sheet are sorted by this field.  
Ccy | The Currency of the Interest Payment  
Interest Accrued | The Accrued Interest amount that the Interest Payment represents.  
  
If the Agreement "nets" interest payments, this single number represents the sum of the accrual calculated on the held cash currency balance for the interest period netted with the accrual calculated on the posted cash currency balance for the interest period.  
  
If the Agreement calculates interest gross, separate interest payment are always created for held and posted cash balances. Therefore the payment will have been generated based on either the held or posted cash collateral balance.  
Direction | The Direction of the Payment.  
  
Either:  
  
Due To Counterparty  
  
Due To Principal  
Margin Type | Denotes the Margin type of the Interest Payment  
  
Will be created based on the margin type of the collateral movements / balance. Interest Payments can either be for margin type of:  
  
Lock Up or  
  
Variation  
  
Only OTC Agreements that segregate collateral or have a Lock Up Only Calculation type can have a margin type of Lock Up. All other agreements will create interest payments with a margin type of Variation.  
  
See [Working with OTC Agreements that Segregate Lock Up and Variation Margin](<segregate_lockup_varmargin.md>) or [How to Define an OTC Lock Up Only Agreement](<agreements_define.md#otc-lock-up-only>) for more details.  
Distribution Pref | The defined preference for processing Interest Payments as specified in the agreement.  
  
Either Roll-In or Distribute  
Settlement Date (yyyymmdd) | The Settlement Date for the Interest Movement to settle the Interest Payment.  
  
This is defaulted as follows:  
  
For Distributions - Today's date as per the Timezone of the Principal Managing Location.  
  
For Roll Ins - this is the next Calendar Date after the Period End Date for which the Interest Payment was generated.  
Agreed Amount | This is the Amount of Interest that the parties have agreed to exchange to settle the Interest Payment.  
  
This is prepopulated with the Interest Accrued Amount.  
Held Period Start | The Start of the Interest Period that is applicable to interest calculated on held cash balances. This is calculated as being the next calendar date after the previous Period End Date.  
Posted Period Start | The Start of the Interest Period that is applicable to interest calculated on posted cash balances. This is calculated as being the next calendar date after the previous Period End Date.  
Period End | The Period End date for the Interest Payment shown. The Period End Date is defined on the agreement.  
Held Index | The Index used to calculate the Interest Payment on held cash positions.  
  
This is defined under the Applies to Held (or both) cash collateral interest terms record for the Agreement  
Posted Index | The Index used to calculate the Interest Payment on posted cash positions.  
  
This is defined under the Applies to Held (or both) cash collateral interest terms record for the Agreement  
Held Spread | The spread that is applied when calculating accrued interest for held balances, as defined under the Applies to Held (or both) cash collateral interest terms record for the agreement.  
Posted Spread | as above but for posted balances.  
Held Day Count Convention | The Day Count Convention for the Index defined under the Applies to Held (or both) cash collateral interest terms record for the agreement.  
Posted Day Count Convention | The Day Count Convention for the Index defined under the Applies to Posted (or both) cash collateral interest terms record for the agreement.  
Held Calculation Type | The Interest Calculation method defined under the Applies to Held (or both) cash collateral interest terms record for the agreement.  
Posted Calculation Type | The Interest Calculation method defined under the Applies to Posted (or both) cash collateral interest terms record for the agreement.  
Calculation Date | The Date of the Interest Calculation that generated the Interest Payment  
Principal | The Principal Entity for the Agreement  
Counterparty | The Counterparty Entity for the Agreement
