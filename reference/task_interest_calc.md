# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/task_interest_calc.html

# Interest Calculation Task

## Overview

The Interest Calculation Task has three key functions:

  1. To calculate an Interest Accrual ("Open Accrual") on Agreement cash collateral held and posted positions. 
  2. To calculate and create Interest Payments ("Open Payments") when Interest Period End Dates have been reached. 
  3. To allow for recalculating Open Interest Payments and Open Interest Accruals. 



**Note:** These three functions are executed at the "margin type" level of cash collateral held and posted positions - see notes at the foot of this topic

The task is configurable by Business Line(s), in that it can be limited to certain agreements by using one or more of the following variables:

  * Ccy
  * Managing Location
  * Agreement Groups



## Create New Task

**Procedure**

  1. Within the Task Configuration screen, select _Interest Calculations_ Configuration from the filter drop-down.
  2. To create a new Margin Calculations Task, select the **Create Interest Calculation** button. The user has a choice of selecting _Standard_ or _Grouped_ configuration.
  3. Based on the selection chosen, a pop-up screen will appear with the following fields made available:

**Note:** Fields in red are required.

Section | Standard or  
Grouped | Field | Description  
---|---|---|---  
Configuration Details | Both | Name | A unique name for the configuration.  
| Both | Description | A meaningful description for the configuration.  
Payments | Both | Generate Payments | Specify whether this configuration should [generate Interest Payments](<#creating-payments>) by selecting the Generate Payments check box. If not selected, the configuration will [calculate interest accruals](<#calculating-interest-accruals>) only.  
Filter Details | Standard | Business Lines  
(OTC, Repo, Sec Lending) | Select at least one Business Line that the Interest Calculation Configuration will apply to by selecting the appropriate check box. Multiple or all business lines can be selected if they apply.  
| Standard | Managing Locations | Select a single, multiple or all Managing Locations that the configuration should be apply to. If a Managing Location is not specified, then the configuration will be applicable to all Managing Locations that meet the other selection criteria.  
| Grouped | Agreement Groups | Select a [Combined Business Line Agreement Group(s)](<agreement_groups.md#combined-business-line-agreement-group>) to be applied to the configuration. At least one group is required.  
| Both | Cash Instruments | By selecting one, multiple or all currencies in the drop-down, it will limit the configuration to the specific cash instruments. If no currencies are selected, the configuration will apply to all currencies, subject to the other selection criteria specified on the configuration.  
  4. Click the **Save** button when all the required and additional fields needed have been filled in.




## Edit Task

  1. Within the Task Configuration screen, select _Interest Calculation Configuration_ from the filter drop-down.
  2. Select the configuration that needs modification by clicking on the configuration.
  3. A pop-up screen will appear where the data can be modified.
  4. Click the **Save** button when all the changes have been made.



## Delete Task

  1. Within the Task Configuration screen, select _Interest Calculation Configuration_ from the filter drop-down.
  2. From the results from the prior step, select a configuration that needs to be deleted by clicking in on a radial button. The **Delete** button will become visible.
  3. Click the **Delete** button.
  4. A popup window will appear confirming the deletion. Select _Cancel_ if this was pressed in mistake or select **Delete** to delete the configuration.



**Note:**

  * When a Interest Calculation configuration is deleted, any history relating to the running of that configuration will remain in the Task Status view however it will be displayed in italics.



## Run Task

**Procedure**

  1. Within the Task Configuration screen, select _Interest Calculation Configuration_ from the filter drop-down.
  2. Select the configuration that needs to be run by clicking the radial button next to the configuration.
  3. The **Run** button will become enabled and available to be clicked.
  4. Click the **Run** button.
  5. The results can be viewed from the [Task Status](<task_status.md#results-of-the-task>) screen.



## Calculating Interest Accruals

The Interest Calculation task calculates daily interest accruals for cash collateral balances, by currency, margin type, by held and posted position, for those agreements which meet the [inclusion criteria of the corresponding Interest Calculation Configuration](<#create-new-task>).

When the calculation task runs, the following processes occur:

  1. Those agreements which are subject to the Interest Calculation Configuration are selected.
  2. For any agreement selected above, where the calculation type is not No Terms Defined, the Interest Calculation task will calculate open Interest Accruals for each cash currency specified in the Cash Collateral Interest Terms.
  3. The Calculation Date / Time is determined per Agreement by determining the Time & Date equivalence in the timezone for the Principal Managing location of the Agreement when the task was executed.

For example:

Assume the task was run at 23:00 (GMT) 10th Feb 2009, and that the TLM® Collateral Management Database and Application server reside in London.

Any Agreement with a **London** Principal Managing Location would have a Calculation Date/Time of 10/Feb/2009 **23:00**.

Any Agreement with a **New York** Principal Managing Location would have a Calculation Date/Time of 10/Feb/2009 **18:00** (GMT-5hrs).

Any Agreement with a **Tokyo Principal** Managing Location would have a Calculation Date/Time of 11/Feb/2009 **08:00** (GMT+9hrs).

See [Understanding Dates and Times](<understand_date_times.md>) for more information.

  4. Interest accruals are calculated from the Start Date of the Interest Period to the prior date of the Calculation Date / Time derived in c) 

For example:

For London & New York Principal Managing Location Agreements in c) above, the accrual would be calculated to 9th Feb

For Tokyo Agreements, the accrual would be calculated out to 10th Feb.

  5. If no previous payments exist for the Agreement, then the Start Date is assumed to be the Start Date as that the oldest movement falls into. 

  6. Interest is calculated per currency, per margin type, per position (i.e. held and posted positions are calculated separately) using the corresponding [Cash Collateral Interest Terms](<agreements_interest.md#cash-collateral-interest-terms>) stored on the agreement. Interest is calculated at the following levels per currency for an agreement:

Agreements | Description  
---|---  
All | **Held** \- Collateral Positions with a **Margin type of Variation**  
  
**Posted** \- Collateral Positions with a **Margin type of Variation**  
Segregate Lock Up and Variation or   
Lock Up Only calculation type agreements | **Held** \- Collateral Positions with a **Margin type of Lock Up**.  
  
**Posted** \- Collateral Positions with a **Margin type of Lock Up**.  
  
For each of the above unique levels, interest is calculated daily according to one of the standard **calculation type** formulas that has been specified in the applicable [Cash Collateral Interest Terms](<agreements_interest.md#cash-collateral-interest-terms>):

Calculation Type | Description  
---|---  
**Do Not Calculate Accrual** | No Interest is accrued under this calculation type.  
**Simple** | Interest Accruals are calculated for an agreement, per currency, per position direction, per margin type according to the following:  
  
For each day in the Interest period, sum the accruals calculated as follows:  
  
Daily Accruals = Final Position Balance for day * (Interest Rate + Spread) /100 * Day Count Convention  
  
Where  
  
**Interest Rate**  
For **held** positions - Rate taken from the Index field defined in cash Collateral Interest Terms on the Agreement where the **_applies to_** value equals **Held**.  
For **posted** positions - Rate taken from the Index field defined in cash Collateral Interest Terms on Agreement where **_applies_** to value equals **Posted**.  
  
**Spread**  
For **held** positions - spread taken from the spread field defined in cash Collateral Interest Terms on Agreement where **_applies to_** value equals **Held**.  
For **posted** positions - spread taken from the spread field defined in cash Collateral Interest Terms on Agreement where **_applies to_** value equals **Posted**.  
  
**Note:** The effective rate of interest used (That is, Interest Rate + Spread) is floored at zero. Should Interest Rate + Spread result in a negative number, a rate of zero is used in the calculation instead.  
  
**Day Count Convention**  
For **held** positions - Day Count Convention for the Index defined in cash Collateral Interest Terms on Agreement where **_applies to_** value equals **Held**.  
For **posted** positions - Day Count Convention for the Index defined in cash Collateral Interest Terms on Agreement where **_applies to_** value equals **Posted**.  
  
**Final Position Balance**  
For **Held** Positions - Aggregate Held Positions for the currency for the day. (To avoid confusion this is the sum of all Deliver to Principal, and Return to Counterparty movements in a Settled or In Transit state).  
For **Posted** Positions - Aggregate Posted Positions for the currency for the day. (To avoid confusion this is the sum of all Deliver to Counterparty, and Return to Principal movements in a Settled or In Transit state).  
  
**Note:**  
i. If an Index rate for a particular day is not available, the last date's available applicable Index rate will be used.  
ii. Daily accruals whether based on held or posted positions are not compounded into the corresponding held or posted positions during the Interest period.  
iii. In Transit cash collateral movements are considered "settled" for purposes of the calculated Final Position Balance, provided that the settlement date of the In Transit Movement is in the past.  
iv. Final Position Balance is separated according to the Margin Type of the cash collateral position. That is, an agreement can have a cash collateral position for margin type "Lock Up" and/or a cash collateral position for margin type "Variation". The Movements, and collateral balances are distinct by margin type and are never commingled. To clarify - accruals are calculated separately for Lock Up and Variation Margin Types.  
v. Interest Accruals are calculated separately for held positions and for posted positions.  
**Simple Allows Negative** | This calculation method is identical to **Simple** , with the key exception that the effective rate used for the daily accrual calculation can be a negative number.  
**Compound Calendar Days** | Interest Accruals are calculated for an agreement, per currency, per position direction, per margin type according to the following:  
  
For each day in the Interest period, sum the accruals calculated as follows:  
Daily Accruals = Previous Days Accrued Interest + Final Position Balance for day * (Interest Rate + Spread) /100 * Day Count Convention  
  
Where  
  
**Interest Rate**  
For **held** positions - Rate taken from the Index field defined in cash Collateral Interest Terms on Agreement where **_applies to_** value equals **Held**.  
For **posted** positions - Rate taken from the Index field defined in cash Collateral Interest Terms on Agreement where **_applies to_** value equals **Posted**.  
  
**Spread**  
For **held** positions - spread taken from the spread field defined in cash Collateral Interest Terms on Agreement where **_applies to_** value equals **Held**.  
For **posted** positions - spread taken from the spread field defined in cash Collateral Interest Terms on Agreement where **applies to** value equals **Posted**.  
  
**Note:** The effective rate of interest used (That is, Interest Rate + Spread) is floored at zero. Should Interest Rate + Spread result in a negative number, a rate of zero is used in the calculation instead.  
  
**Day Count Convention**  
For **held** positions - Day Count Convention for the Index defined in cash Collateral Interest Terms on Agreement where applies to value equals Held.  
For **posted** positions - Day Count Convention for the Index defined in cash Collateral Interest Terms on Agreement where applies to value equals Posted.  
  
**Final Position Balance**  
For **Held** Positions - Aggregate Held Positions for the currency for the day. (To avoid confusion this is the sum of all Deliver to Principal, and Return to counterparty movements in a Settled or In Transit state).  
For **Posted** Positions - Aggregate Posted Positions for the currency for the day. (To avoid confusion this is the sum of all Deliver to Counterparty, and Return to Principal movements in a Settled or In Transit state).  
  
**Previous Days Accrued Interest**  
For **Held** Positions - Sum of daily accruals calculated on held positions up to previous calendar day.  
For **Posted** Positions - Sum of daily accruals calculated on posted positions up to previous calendar day.  
  
**Note:**  
i. If an Index rate for a particular day is not available, the last date's available applicable Index rate will be used.  
Under this method, on each calendar day the accrued interest calculated on the held position for the previous calendar day is compounded into held positions. Similarly, that calculated on posted balances is compounded into posted positions.  
ii. In Transit cash collateral movements are considered "settled" for purposes of the calculated Final Position Balance, provided that the settlement date of the In Transit Movement is in the past.  
iii. Final Position Balance is separated according to the Margin Type of the cash collateral position. That is, an agreement can have a cash collateral position for margin type "Lock Up" and/or a cash collateral position for margin type "Variation". The Movements, and collateral balances are distinct by margin type and are never commingled. To clarify - accruals are calculated separately for Lock Up and Variation Margin Types.  
iv. Interest Accruals are calculated separately for held positions and for posted positions per Calendar Day, and then compounded into the respective held or posted position daily.  
**Compound Calendar Days Allow Negative** | This calculation method is identical to **Compound Calendar Days** , with the key exception that the effective rate used for the daily accrual calculation can be a negative number.  
**Compound Business Days** | Accruals are calculated per currency per agreement identically to Calendar day Compounding with one key difference.  
  
Interest is not compounded per **_Calendar day_** , but instead is carried forward and **_compounded on the next Business Day_**. (.i.e. typically Monday to Friday) On Saturday and Sunday, or in the case of a Holiday, the Accrued Interest figure is compounded into the applicable held and/or posted final position on the next available _valid_ business date.  
  
Again, interest is calculated separately for held and posted positions.  
**Compound Business Days Allow Negative** | This calculation method is identical to **_Compound Business Days_** , with the key exception that the effective rate used for the daily accrual calculation can be a negative number.  
  
See [Understanding Interest Calculation Methods](<understand_interest_calc_methods.md>) for more information and examples of above calculations.  
  
Irrespective of calculation method chosen above, Interest Calculations are subject to:  
  
\- [rounding methodology](<agreements_interest.md#cash-collateral-interest-terms/round>) as defined on the Agreement.  
and  
\- levels of decimal precision as [defined on the currency](<reference_related_data.md#currencies-and-fx-rates>).  
  
This rounding and decimal precision is applied to the Interest Calculation in one of two ways, as defined on the Agreement  
**Applicable to Daily Accruals** | For all currencies under the agreement, the interest calculation does the following:  
  
Decimal places are applied to the following fields [Daily Interest, Accrued Interest, Balance, Effective Net Balance, Sub Totals and Final Accrual]  
Rounding Method applied to Daily Interest Values.  
**Applicable to Final Payment Only** | For all currencies under the agreement, the interest calculation does the following:  
  
\- Ignores the number of decimals places set at a currency at a daily accrual level for calculation purposes.  
\- Does not apply any rounding at a daily accrual level for calculation purposes.  
\- Applies decimal places and rounding only to the final payment amount.  
  7. Once generated, Interest Accruals are displayed Under [Interest Open Accruals](<interest_open_accruals.md>).




## Creating Payments

Creating Interest Payments is the second function of the Interest Calculation Task. The ability to generate payments is a [selectable option on the Interest Calculation Task](<task_interest_calc.md#create-new-task>).

In order to create Interest Payments for agreements, the following conditions must be met:

  * The Interest Calculation configuration task must have the Generate Payments flag enabled.
  * The Interest Period End Date, for agreements selected via the Configuration, must have been exceeded.



When the Interest Calculation Task is run, the following occurs:

  * An Interest Payment is created per currency, per held and posted position, per margin type, for those agreements where the corresponding Period End Date has been exceeded. If the Agreement is [configured to net Held and Posted Interest Payments](<agreements_interest.md#cash-collateral-interest-terms>), the held and posted interest payments for the same currency and margin type are netted together to form a single "net" payment for the period. If the Agreement is not set to net payments, they remain gross (separate).
  * To clarify, by Period End Date being exceeded, it means that the Period End Date for an Agreement's Interest Period is less than the Calculation date/Time as defined in 1c) above.
  * The Period Start date for the next Interest Period is set to be the next calendar date after the Previous Period End Date. The Open accruals figure is adjusted to reflect this.
  * For each Interest Payment generated, an actionable Interest Payment item is placed in the Interest Workflow queues of either Distributions or Roll-Ins. The Interest Payment is created with the same margin type as that on the underlying cash collateral position which it is calculated on.



Interest Payments are available to view in the [Interest Screen under the All Payments](<interest_workflow_actions.md#view-interest-payments>).

Interest Payments that have been created need to be actioned within the [workflow](<interest_workflow.md>).

There are some rules that are used when generating Interest Payments:

  * Only one open interest payment can exist per currency, per margin type, per Held or Posted position, per Agreement at any one time.

    * For example - consider an Agreement with a USD cash collateral position for Variation margin type **only**.

Consider that the agreement has only monthly, end of month, Interest Period End Dates.

Now consider that it is the first day of October, but the previous payment for the August period is still open. The payment for September cannot be generated until the payment for August has been completed, irrespective of whether the Interest Payment generation job is run at the start of October. If an open payment exists, and the interest calculation in unable to create the next payment because of an open payment, an [error message will be generated in the task status](<validation_messages.md#217>).

    * Let's take the same example, but this time with cash collateral balances for Lock Up and Variation margin types to illustrate their independence. 

Consider the Agreement has a Variation margin type cash collateral position of USD 2 million, and a Lock Up margin type cash collateral position of USD 5 million.

Two payments were generated for August:

A Variation interest payment based on the $2mm position.

A Lock Up interest payment based on the $5mm position.

Consider that the Lock Up payment was fully closed.

Consider that the Variation payment is still open.

Consider now that it is the start of October. The interest payment for the $5mm Lock Up position can be created, but the interest payment for the $2mm Variation position cannot be for the reasons outlined above.

**Note:_Key point is that collateral positions are unique at the level of margin type, and position type and so are accruals and payments._**

  * Similarly, the system will only generate one Interest Payment for an agreement/Ccy/margin type trio for a single Interest Period even if multiple periods have elapsed. The reason for this is that the amount of Interest agreed between Counterparties is a component in the next period's interest calculation.

    * For example, assume that an Agreement is set up with end of month Period End Dates. Assume that the Agreement has been active since January, and that cash collateral movements have been occurring since then. Consider that all movements are for Variation margin type. Imagine that the task to generate payments was never run for this agreement until October. The system will only generate the Variation Interest Payment for the first period - that is the period ending January 31st. The system will generate an error message for the periods where interest payments were not generated.

One of two things can be done to resolve this:

      * Process the first payment to completion, then run the task again to create the second payment, process that to completion, and repeat the process until the period for the current period is generated.
      * [Extend the End Date](<interest_workflow_actions.md#extend-end-date>) for the payment generated for the first period, to include the other periods. This will require that interest is manually calculated and entered via the agreed amount to bring the accruals into proof.
    * Similar to the previous example - margin type is a key uniqueness identifier in interest payments. If on the current above example, the agreement also had collateral balances for margin type Lock Up, these would be treated entirely separately, and would not have a bearing on errors associated with Variation interest payments.




## Recalculating Interest Payments

The system allows for Interest Payments to be recalculated while they are in an incomplete and unapproved state. This functionality can be used to recalculate a whole series of Payments if for example, it is discovered that an incorrect Index rate has been used during the interest period.

There are several considerations to be borne in mind when recalculating Interest Payments. This functionality and its outcomes are outlined in detail in [How to Recalculate and Regenerate Multiple Interest Payments](<interest_workflow_actions.md#recalculate-interest-payments>).

**Considerations**

**Note:**

  1. Only Interest calculation methods that have "Allow Negative" in the name, will allow Effective Interest Rates that are negative. For all other interest calculation methods, the effective Interest rates are floored at zero. That is, if the combination of the Index rate plus spread is lower than zero, then the actual effective interest rate for that day will be set at zero for calculation Purposes.
  2. All Collateral Movements and positions in the system have a defined _margin type_. Collateral Positions and movements are segregated at the level of margin type. 

Only OTC agreements with [segregated collateral allocation method](<agreements_general.md#collatallocation>) can have collateral movements and positions defined as either Lock Up or Variation margin type.

Only OTC agreements with [Lock Up Only](<agreements_define.md#otc-lock-up-only>) calculation type can have collateral movements and positions defined as Lock Up.

For all other agreements, all collateral movements and positions are for margin type Variation. 

Additionally, all collateral positions in the system have a defined position - either held or posted. Held positions are composed of movements that have a direction of Deliver to Principal or Return to Counterparty. Posted positions are comprised of movements that have direction of Deliver to Counterparty or Return to Principal. It is possible for an Agreement to have solely held or solely posted collateral positions or a combination of both held and posted positions for the same security. (also known as long and short)

The key point to understand here, is that the terms for calculating cash collateral interest that are defined on an agreement are done so at the level of margin type (Lock Up & Variation) and position direction (Held and Posted)

This means that the following terms are definable per cash currency for a segregated OTC Agreement:

     * Held Cash for Variation Margin Type 
     * Posted Cash for Variation Margin Type 
     * Held Cash for Lock Up Margin Type 
     * Posted Cash for Lock Up Margin Type. 

Non Segregated Agreements only have Variation margin type collateral, so interest terms can only be defined at the held and posted level.

Lock Up Only Agreement only have Lock Up margin type collateral, so interest terms can only be defined at the held and posted level.

It is therefore possible for a segregated agreement to have the following collateral positions:

     * Held $1mm USD for margin type Variation 
     * Held $6mm USD for margin type Lock Up. 
     * Posted $2.5mm USD for margin type Variation. 
     * Posted $4mm USD for margin type Lock Up 

Following on from this, interest accruals, and interest payments are created based on collateral balances per margin type.

This means that four interest accruals/payments are calculated for a segregated agreement.

The held and posted accruals/payments are netted within margin type if the agreement is set to Net Held and Posted Interest Payments. If not, four are produced.

It is worth keeping in mind three factors:

     * Netting is only ever permissible within positions with the same margin type.
     * Accruals are always generated even if there is a zero cash held or posted position.
     * Zero balance Interest Payments although created if there is a zero position, are not actionable through the workflow.
  3. An Index Rate that can be used for the start date of the interest period must exist in the database. For example, consider an agreement that has a period end date of the last day of the month. The period start date is therefore the 1st day of the month. If cash movements exist on the 13th of the month and the relevant index only has index rates from the 13th of the month onwards, [Validation Message 214](<validation_messages.md#214>) will be raised when the interest calculation task is run for the first time for the agreement as there is no rate in existence that can be applied to the 1st of the month.



