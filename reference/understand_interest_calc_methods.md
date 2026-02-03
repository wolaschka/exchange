# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/understand_interest_calc_methods.html

# Understanding Interest Calculation Methods

TLM® Collateral Management calculates Interest accruals separately per currency, per margin type for held and posted cash collateral positions.

That is, interest is calculated separately per currency for:

  1. Held Variation Cash Positions
  2. Posted Variation Cash Positions
  3. Held Lock Up Cash Positions
  4. Posted Lock Up Cash Positions



If the Agreement is defined as netting Interest Payments - that is the Net Held and Posted Interest Payments check box is set as enabled, then Interest Accruals and Interest Payments are netted within currencies and margin types for the interest period.

For calculating interest on the held and posted cash positions, the system supports three standard interest accrual methods. Within the Agreement, a calculation method must be defined to be applicable to held and posted positions. Although uncommon, differing accrual methods can be applied to the held and posted positions. The six standard accrual methods are:

Method | Description  
---|---  
Simple | Interest Accruals are calculated for an agreement, per currency, per position direction, per margin type according to the following:  
  
For each day in the Interest period, sum the accruals calculated as follows:  
  
Daily Accruals = Final Position Balance for day * (Interest Rate + Spread) /100 * Day Count Convention  
  
**Where** :  
  
_Interest Rate_  
  
For held positions: Rate taken from the Index field defined in cash Collateral Interest Terms on Agreement where applies to value equals Held.  
  
For posted positions: Rate taken from the Index field defined in cash Collateral Interest Terms on Agreement where applies to value equals Posted.  
  
_Spread_  
  
For held positions: spread taken from the spread field defined in cash Collateral Interest Terms on Agreement where applies to value equals Held.  
  
For posted positions: spread taken from the spread field defined in cash Collateral Interest Terms on Agreement where applies to value equals Posted.  
  
**Note** : The effective rate of interest used (That is, Interest Rate + Spread) is floored at zero. Should Interest Rate + Spread result in a negative number, a rate of zero is used in the calculation instead.  
  
_Day Count Convention_  
  
For held positions: Day Count Convention for the Index defined in cash Collateral Interest Terms on Agreement where applies to value equals Held.  
  
For posted positions: Day Count Convention for the Index defined in cash Collateral Interest Terms on Agreement where applies to value equals Posted.  
  
Final Position Balance  
  
For Held Positions: Aggregate Held Positions for the currency for the day. (To avoid confusion this is the sum of all Deliver to Principal, and Return to counterparty movements in a settled or In Transit State)  
  
For Posted Positions: Aggregate Posted Positions for the currency for the day. (To avoid confusion this is the sum of all Deliver to Counterparty, and Return to Principal movements in a settled or In Transit State  
  
**Considerations** :  
  
If a Held or Posted Index rate for a particular day is not available, the applicable rate prior to the unavailable date for the Index will be used.  
  
The key difference between this calculation method and compounding methods, is that simple interest does not compound into the collateral position balances during the Interest Period.  
  
This difference is evidenced in the following example interest statement:  
  
Daily Interest is accrued on the Day's Effective Net Balance but is not added into the Effective Net Balance on any day.  
  
At the end of the Interest Period, depending on the distribution method, the following occurs to the Accrued interest  
  
\- If method = Distribute, the accrued interest is paid to either the Counterparty or the Principal at the end of the Interest Period.  
\- If method = Roll In, the accrued interest is added to the Effective Net Balance at the start of the next Interest Period once the payment is Agreed and Approved or considered In-Transit, and as such affects the collateral balance.  
  
**Important** : In Transit cash collateral movements are considered "settled" for purposes of movements, provided that the settlement date of the In Transit Movement is in the past  
  
![Interest_Statement_Simple.jpg](/Images/Interest_Statement_Simple.jpg)  
Simple Allows Negative | This calculation method is identical to Simple, with the key exception that the effective rate used for the daily accrual calculation can be a negative number. For example, in the below Interest Statement, there is a Held Collateral balance throughout August. The effective interest rate is positive on the 1st August, resulting in a Daily Interest amount of negative 236.11. In other words, interest accrual that is due to the Counterparty.  
  
However, from 3rd August onwards, the effective interest rate becomes negative, and results in a daily accrual of +38.88 which is actually due to the Principal.  
  
The effective interest rate remains negative throughout the remainder of the period, resulting in a interest payment of 2,019.33 which is due to the Principal. Had the effective interest rate been positive throughout the month, the interest payment would be due to the Counterparty. In essence the counterparty is having to pay the Principal an interest amount even though the Principal is holding collateral on behalf of the Counterparty.  
  
![Interest_Statement_Simple_Negative.jpg](/Images/Interest_Statement_Simple_Negative.jpg)  
Compound Calendar Days | Interest Accruals are calculated for an agreement, per currency, per position direction, per margin type according to the following:  
  
For each day in the Interest period, sum the accruals calculated as follows:  
  
Daily Accruals = Previous Days Accrued Interest + Final Position Balance for day * (Interest Rate + Spread) /100 * Day Count Convention  
  
**Where** :  
  
_Interest Rate_  
  
For held positions: Rate taken from the Index field defined in cash Collateral Interest Terms on Agreement where applies to value equals Held  
  
For posted positions: Rate taken from the Index field defined in cash Collateral Interest Terms on Agreement where applies to value equals Posted.  
  
_Spread_  
  
For held positions: spread taken from the spread field defined in cash Collateral Interest Terms on Agreement where applies to value equals Held.  
  
For posted positions: spread taken from the spread field defined in cash Collateral Interest Terms on Agreement where applies to value equals Posted.  
  
**Note** : The effective rate of interest used (That is, Interest Rate + Spread) is floored at zero. Should Interest Rate + Spread result in a negative number, a rate of zero is used in the calculation instead.  
  
_Day Count Convention_  
  
For held positions: Day Count Convention for the Index defined in cash Collateral Interest Terms on Agreement where Applies to value equals Held.  
  
For posted positions: Day Count Convention for the Index defined in cash Collateral Interest Terms on Agreement where Applies to value equals Posted.  
  
_Final Position Balance_  
  
For Held Positions: Aggregate Held Positions for the currency for the day. (To avoid confusion this is the sum of all Deliver to Principal, and Return to counterparty movements in a settled or In Transit State)  
  
For Posted Positions: Aggregate Posted Positions for the currency for the day. (To avoid confusion this is the sum of all Deliver to Counterparty, and Return to Principal movements in a settled or In Transit State)  
  
_Previous Days Accrued Interest_  
  
For Held Positions: Sum of daily accruals calculated on held positions up to previous calendar day  
  
For Posted Positions:Sum of daily accruals calculated on posted positions up to previous calendar day  
  
\- If a Held or Posted Index rate for a particular day is not available, the rate prior to the unavailable date for the applicable Index will be used.  
  
Under this method, on each calendar day the Daily Interest for the previous day is compounded into the corresponding collateral position balance (i.e. held accrued interest is added to held positions; posted accrued interest to posted positions) every calendar day.  
  
At the end of the Interest Period, depending on the distribution method, the following occurs to the Accrued interest.  
  
If method = Distribute, the accrued interest is paid to either the Counterparty or the Principal at the end of the Interest Period.  
  
If method = Roll In, the accrued interest is added to the corresponding position's Effective Net Balance at the start of the next Interest Period once the payment is Agreed and Approved or considered In-Transit, and as such affects the applicable collateral position balance.  
  
This is viewable in the below statement, where the Daily Interest amount is added to the next calendar day's Effective Net Balance, and that figure then subject to daily interest accrual.  
  
** In Transit cash collateral movements are considered "settled" for purposes of movements, provided that the settlement date of the In Transit Movement is in the past  
  
![Interest_Statement_Compound_Calendar.jpg](/Images/Interest_Statement_Compound_Calendar.jpg)  
Compound Calendar Days Allows Negative | This calculation method is identical to Compound Calendar Days, with the key exception that the effective rate used for the daily accrual calculation can be a negative number. For example, in the below Interest Statement, there is a Posted Collateral balance throughout August. The effective interest rate is positive on the 1st August, resulting in a Daily Interest amount of 3,541,66. Positive accrual amounts are due to the Principal. However, from 3rd August onwards, the effective interest rate becomes negative, and results in a daily accrual of -145.86. Negative accrual amounts are due to the Counterparty.  
  
The effective interest rate remains negative throughout the remainder of the period, resulting in accrued interest that is due to the Counterparty. This has the effect of reducing the effective net balance throughout the month. In other words reducing the amount of collateral posted for the purposes of calculating interest. The resulting in a interest payment of -4, 916.23 which being a negative number is due to the Counterparty Demo Bank. Had the effective interest rate been positive throughout the month, the interest payment would be due to the Principal. In essence the Principal is having to pay the Counterparty an interest amount even though the Counterparty is holding cash collateral on behalf of the Principal.  
![Interest_Statement_Compound_Calendar_negative.jpg](/Images/Interest_Statement_Compound_Calendar_negative.jpg)  
  
As this is a roll in interest payment which is due to the Counterparty, the payment is applied to collateral held balances. The existing Posted balance is not altered by the roll in. This will result therefore in the following balances at the start of the next period.  
  
Held USD 4,916.23  
  
![Interest_Statement_Compound_Calendar_negative_1.jpg](/Images/Interest_Statement_Compound_Calendar_negative_1.jpg)  
  
Posted USD 15,000,000  
  
![Interest_Statement_Compound_Calendar_negative_2.jpg](/Images/Interest_Statement_Compound_Calendar_negative_2.jpg)  
Compound Business Days | Accruals are calculated per currency per agreement identically to Calendar day Compounding with one key difference. Interest is not compounded per Calendar day, but instead is carried forward and compounded on the next Business Day. Final Position Balance is separated according to the Margin Type of the cash collateral position. That is, an agreement can have a cash collateral position for margin type "lock up" and/or a cash collateral position for margin type "variation". The Movements, and collateral balances are distinct by margin type and are never commingled. To clarify - accruals are calculated separately for Lock Up and Variation Margin Types. Again, interest is calculated separately for held and posted positions, and the accruals are compounded to the corresponding held or posted position per Business Day.  
  
**Note** : If a Held or Posted Index rate for a particular day is not available, the rate prior to the unavailable date for the corresponding Index will be used.  
  
This calculation method is identical to Compound Calendar Days with the chief exception that compounding of Accrued Interest only occurs on valid business days - i.e. typically Monday to Friday. On Saturday and Sunday, or in the case of a Holiday, the Accrued Interest figure is compounded into the Effective Net Balance for the applicable held and/or posted position on the next available valid business date. This is viewable in the below statement, where accrued interest figures are added to Effective Net Balance only on weekdays.  
  
**In Transit cash collateral movements are considered "settled" for purposes of movements, provided that the settlement date of the In Transit Movement is in the past.  
  
![Interest_Statement_Compound_Business.jpg](/Images/Interest_Statement_Compound_Business.jpg)  
  
** Note**: This calculation type floors the effective rate of interest used as zero. That is, if (Interest Rate + Spread) results in a negative number, a rate of zero is used in the calculation instead.  
Compound Business Days Allows Negative | This calculation method is identical to Compound Business Days, with the key exception that the effective rate used for the daily accrual calculation can be a negative number. For example, in the below Interest Statement, there is a Held Collateral balance throughout August. The effective interest rate is positive on the 1st August, resulting in a Daily Interest amount of negative 1,180.55. In other words, interest accrual that is due to the Counterparty. However, from 3rd August onwards, the effective interest rate becomes negative, and results in a daily accrual of 87.51which is actually due to the Principal.  
  
The effective interest rate remains negative throughout the remainder of the period, resulting in accrued interest that is in Favor of the Principal. This has the effect of reducing the effective net balance throughout the month.  
  
The resulting interest payment of USD 3,893.65 created is due to the Principal Prin Bank. Had the effective interest rate been positive throughout the month, the interest payment would be due to the Counterparty. In essence the counterparty Demo Cpty is having to pay the Prin Bank an interest amount even though the Prin Bank is holding collateral on behalf of the Counterparty.  
  
![Interest_Statement_Compound_Business_Neg.jpg](/Images/Interest_Statement_Compound_Business_Neg.jpg)  
  
As this is a roll in interest payment which is due to the Principal, the payment is applied to collateral Posted position. The existing Held position is not altered by the roll in. This will result therefore in the following balances at the start of the next period.  
  
Held USD 9,000.000  
  
![Interest_Statement_Compound_Business_Neg_Next_1.jpg](/Images/Interest_Statement_Compound_Business_Neg_Next_1.jpg)  
  
and a posted position adjusted by the amount of the roll in payment, e.g. USD 3,893.65  
  
![Interest_Statement_Compound_Business_Neg_Next_2.jpg](/Images/Interest_Statement_Compound_Business_Neg_Next_2.jpg)  
  
Irrespective of calculation method chosen above, Interest Calculations are subject to rounding methodology as defined on the Agreement, and levels of decimal precision as defined on the currency.  
  
This rounding and decimal precision is applied to the Interest Calculation in one of two ways, as defined on the Agreement (either applicable to the Daily Accruals, or the Final Payment Only)  
  
Irrespective of the accrual method, at the end of the Interest Period, what happens to the accrued interest depends on how the distribution method has been specified:  
  
**If method = Distribute** ,  
  
Accrued interest is netted if the agreement is defined as such, and is paid to either the Counterparty or the Principal at the end of the Interest Period. If the agreement is defined as not netting interest payments, then the accrued interest is not netted, and a payment is created based on the held positions, and a payment is created based on the posted positions. Each payment is paid either to the Counterparty or Principal at the end of the Interest Period.  
  
**If method = Roll In** ,  
  
Accrued interest is added to the corresponding collateral position at the start of the next Interest Period once the payment is Agreed and Approved or considered In-Transit, and as such affects the collateral balance.  
  
If the agreement is defined as not netting interest payments, then the accrued interest is not netted, and a payment is created based on the held positions, and a payment is created based on the posted positions.  
  
If the Agreement is defined as netting payments then these two payments are netted together to form a single payment.  
  
Where an Interest Payment is generated with a direction of due to Principal it will affect the posted cash position.  
  
Where an Interest Payment is generated with a direction of due to Counterparty it will affect the held cash position.  
  
Following on from the above, it is worth noting that when effective interest rates are negative, calculation types that support negative rates are more likely to produce seemingly unusual results. Namely, interest payments that are due to Principal can be generated from Held Collateral Balances, and payments that are due to Counterparty can be generated from Posted collateral balances. This is also true of other calculation types, but is much more likely when rates are negative.  
  
When distribution preference is set as roll in, this can result in interest payments that affect the "opposite" position. For example, an interest payment generated on a posted position can be in favor of the Counterparty and therefore gets rolled into the held cash position. Similarly, an interest payment generated on a held position which ends up as due to Principal, will affect the Posted position when rolled in.  
  
These are exemplified in the accrual methods _Compound Calendar Days Allows Negative_ and _Compound Business Days Allows Negative_ above.  
  
TLM Collateral Management provides detailed [Workflows for processing Interest Payments](<interest_workflow.md>) for both Distribution Methods.  
  
**Note** : For calculation methods _Simple_ , _Compound Calendar Days_ and _Compound Business Days_ effective interest rates are floored at zero. That is, if the combination of the Index Rate plus spread is lower than zero, then the actual effective interest rate for that day will be set at zero for calculation Purposes.  
  
Calculation methods _Simple Allows Negative_ , _Compound Calendar Days Allow Negative_ and _Compound Business Days Allows Negative_ allow for an effective interest rate that can be negative.
