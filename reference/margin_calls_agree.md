# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/margin_calls_agree.html

# Agree to Call

## Agree to a Demand

Before the Counterparty confirms the Demand, the user needs to identify whether a [Demand Notice](<margin_calls_statements.md#margin-call-notice>) has been successfully sent to a Counterparty.

Functionality exists to advance a Demand from the _Unsent_ state to _Sent_ state without physically sending a Margin call notice. This can be used in situations, for example, where a counterparty accepts verbal margin calls only. This can be done by selecting the **Already Notified** button.

Where a user has elected not to send a margin call notice on a demand, these can be uniquely identified in this state from the following:

  * The Comments field will be populated with Complete - Transitioned without sending
  * The Sent Timestamp field will be blank
  * Status field will be complete.



Should it be required, a Margin Call Notice can be sent from this state for any item, irrespective of its transition history.

**Procedure**

  1. Click the **Agree** button.
  2. When the _Agree Margin Call_ dialog box is opened, the user is required to put in an **Agreed Amount**.
  3. The user can also enter the **Cpty Call Amount** then tab out of the field. The **Agreed Amount** will automatically be populated.
  4. The **Agree** button will become enabled when there is a value in the **Agreed Amount** field.

     * If the **Agreed Amount** matches the **Call Amount** and the **Agree** button is clicked, the call will move to the **Agreed** state.
     * If the **Agreed Amount** does _not_ match the **Call Amount** , then a partial dispute will be created when the **Agree** is clicked. See [Partial Disputes](<#agrees-partially>).
  5. When the **Agree** button is clicked, the _Agree Margin Call_ dialog box will appear.




**Note:**

  1. Demands in this Workflow state remain in this state at the end of the day, and are not expired, and affect next day Margin Calculations. However, please note that while a demand exists in this state, it is the agreed amount that is taken into consideration in margin calculations.
  2. As Margin Calls remain in this state until advanced to other states, it is possible that this state could contain Margin Calls for the same Counterparty that were generated on different days. It is therefore recommended, that the optional field of Calculation Date / Time is set to display in the grid to clarify to the user which call was generated on which date.
  3. Demands in this Workflow state can be affected by margin recalculations on the same day that generate differing Margin Calculation Results, i.e. if a Demand is advanced into this Workflow state today and Margin Calculations are run again today that result in a different Margin Calculation Result, the original Demand in this Workflow state will be affected, and the user must select whether to use the original or revised margin calculations.

a. Should the agreement affected be of Collateral Allocation type is "auto allocate", then see [How to Process Original or New Margin Calculation Results](<margin_calls_recalc.md#processing-original-or-new-margin-calculation-results>). 

b. Should the agreement affected be of Collateral Allocation type is "Segregate Lock Up and Variation" then See [How to Process Original or New Margin Calculation Results for Non Auto Allocate Agreements](<margin_calls_recalc.md#how-to-process-original-or-new-margin-calculation-results-for-non-auto-allocate-agreements>) for more details. 

  4. Items in this state are filtered according to the Agreement Scope and Agreement Responsibility Groups that the user is assigned to. See [Understanding Agreement Scopes and Agreement Responsibility Groups](<understand_scope_responsibility.md#understanding-agreement-scopes-and-agreement-responsibility-groups>).




### Understanding How Agreed Amount is Distributed Between Deliveries and Returns

Once an [agreed amount has been recorded](<margin_calls_disputes.md#record-counterparty-responses-and-agreed-amounts-on-demands>) on a Demand Margin Call, the grid view displays the agreed amount that was entered in the **Agreed Total** field.

Agreed amounts that have been entered can be applied to deliveries or returns of collateral, and therefore can affect held and/or posted collateral balances.

A distinction needs to be made whether the agreed amount will represent a return of collateral to the Principal or a delivery of collateral to the Principal, or a combination of a return and delivery.

The system automatically makes this distinction by distributing the agreed amount that was entered in the following manner:

  * If the Demand Call result contains only a Deliver to Prin requirement, the agreed amount is allocated as an Agreed Deliver Amount.
  * If the Demand Call result contains a return to Prin requirement, or Full return to Prin requirement, the agreed amount is first allocated to the Agreed Return Amount.
  * If the Demand Call result contains a return to Prin requirement, or Full return to Prin requirement, and a Deliver to Prin requirement the agreed amount is first allocated to the Agreed Return Amount, and then any surplus to the Agreed Deliver Amount.



These fields are always represented in positive signage.

Agreed Total is therefore the sum of Agreed Deliver and Agreed Return Amounts.

**Note:**

Demands in this Workflow state remains in this state at the end of the day, and are not expired, and affect next day Margin Calculations. However, please note that while a demand exists in this state, it is the agreed amount that is taken into consideration in margin calculations. The market value of collateral movements entered here is not taken into consideration for margin calculation purposes until the demand is advanced to the Confirmed Sent to Settlements State.

As Margin Calls remain in this state until advanced to other states, it is possible that this state could contain Margin Calls for the Same Counterparty that were generated on different days. It is therefore recommended, that the optional field of Calculation Date / Time is set to display in the grid to clarify to the user which call was generated on which date.

Demands in this Workflow State can be affected by margin recalculations on the same day that generate differing Margin Calculation Results, i.e. if a Demand is advanced into this Workflow State today and Margin Calculations are run again today that result in a different Margin Calculation Result, the original Demand in this Workflow state will be affected, and the original or revised margin calculations must be selected.

Should the agreement affected be of Collateral Allocation type is ["auto allocate"](<segregate_lockup_varmargin.md#auto-allocating-agreements>), then see [How to Process Original or New Margin Calculation Results](<margin_calls_recalc.md#processing-original-or-new-margin-calculation-results>).

Should the agreement affected be of Collateral Allocation type is ["Segregate Lock Up and Variation"](<segregate_lockup_varmargin.md#segregated-lock-up-and-variation-margin-agreements-non-auto-allocate>) then see [How to Process Original or New Margin Calculation Results](<margin_calls_recalc.md#processing-original-or-new-margin-calculation-results>) for Non Auto Allocate Agreements for more details.

Items in this State are filtered according to the [Agreement Scope and Agreement Responsibility Groups](<understand_scope_responsibility.md>) that the user is assigned to.

#### Examples

**Distribution of Agreed Amount into Deliver and Return Amounts**

Net exposure is in the Principal's favor by USD 5,240,357, and the Principal has already posted USD 1,000,000 collateral to the Counterparty. The Demand Margin Call is therefore USD 6,240,000 after rounding has been applied.

USD 3,000,000 has been agreed with the Counterparty and has been entered as an agreed amount in the previous Sent state. The USD 3,000,000 is shown in this Workflow state in the Agreed Total field.

The system has automatically allocated USD 1,000,000 as a Agreed Return amount, due to the Full return to Prin Requirement of USD 1,000,000, and the residual USD 2,000,000 has been automatically allocated to the Agreed Deliver amount.

![example_distrib_agreed_amount.jpg](Images/example_distrib_agreed_amount.jpg)

Agreed amounts are not taken into consideration for Margin Calculations for the same day, but are taken into consideration on subsequent days until the item is moved to the next Workflow state.

Agreed amounts are applied to the collateral balances for margin calculation purposes on the next day.

If the agreement type has a Lock Up Calculation type of Not Netted Against variation then the agreed amount is automatically allocated first to satisfy the lock up margin requirement, with any residual amount being applied to variation requirement.

  


**Affect of Agreed Amount Next Day in Margin Calculation for Netted Agreement**

The effect of agreed amounts entered on a previous day's Demand on a current Margin Calculation Result for a netted agreement with no lock up margin.

Net Exposure is USD 5,240,357 in favor of the Principal, and the Principal has posted USD 1,000,000 Collateral to the Counterparty, shown as a negative USD -1,000,000.

However, the USD 3,000,000 which has been agreed to be received from the Counterparty from the prior day is reflected in the calculations:

USD 1,000,000 is shown as an Agreed Return to the Principal under the collateral posted section and USD 2,000,000 is shown as an Agreed Delivery to Principal under the Collateral held section.

Taking this agreed total amount of $3,000,000 into consideration, the net exposure of $5,240,357 in the Principal's favor is offset by an agreed total net collateral position of $2,000,000. This results in a Demand Call Amount of $3,250,000.

![example_distrib_agreed_amount_next_day.jpg](Images/example_distrib_agreed_amount_next_day.jpg)

**Affect of Agreed Amount Next Day in Margin Calculation for Non Netted Lock Up Agreement**

The effect of agreed amounts entered on a previous day's Demand on a current Margin Calculation Result for an agreement with a non netted lock up margin requirement.

A non netted lock up margin requirement of USD 250,000 in favor of the principal exists.

Netted exposure is in favor of the principal by USD 7,847,493.66.

Taking into consideration the Counterparty's threshold of USD 5,000,000 this gives a variation margin requirement of USD 2,850,000, which together with the lock up margin requirement results in the Demand Call for USD 3,100,000.

An agreed amount of USD 1,000,000 has been entered.

![example_agreed_amount_nonnet_lockup.jpg](Images/example_agreed_amount_nonnet_lockup.jpg)

In the next day's calculations, the effect of the Agreed amount is evident in the calculation results.

The USD 1,000,000 agreed amount has been auto allocated as follows:

  * First, the agreed amount is allocated towards the lock up margin requirement - and is seen in the first section of the report as Agree to Deliver for Prin for lock up.
  * Next, any residual agreed amount is then allocated towards the collateral requirement for the variation margin requirement. As the Counterparty had agreed to provide USD 1,000,000 of collateral, this results in the Agree to Deliver to Prin figure of USD 750,000.
  * The Demand Call result of USD 2,100,000 is therefore generated taking into consideration these agreed collateral amounts.



![example_agreed_amount_nonnet_lockup2.jpg](Images/example_agreed_amount_nonnet_lockup2.jpg)

## Agree to a Anticipated Demand

### Agree in Full

**Procedure**

  1. Click on the required Antic Demand, click the **Agree** button in the upper right corner above the grid and select it.
  2. By default, the Cpty Call Type field value is set per the current call type.
  3. Enter the amount into the **Cpty Call Amount** field that the Counterparty has called. When entering amounts, the keyboard shortcuts of k, m, and b can be used.
  4. Tab out of the field and the **Agreed Amount** field will automatically populate with the _Cpty Call Amount_ value.
     1. If the Cpty Call Amount is greater than the Prin Call Amount, the Agreed Amount will default to the Prin Call Amount
     2. If the Cpty Call Amount is less than the Prin Call Amount, the Agreed Amount will be the Cpty Call Amount.
     3. The Cpty Call Amount must have a value greater than zero.
     4. The Agreed Amount value can be overridden if it was defaulted from the Cpty Call Amount.
  5. When the **Agreed Amount** field has a value, the **Agree** button will become enabled.
  6. Click the **Agree** button.
  7. The Anticipated Demand is advanced to the Antic Demand workflow - **Agreed** state where it can be further processed.



**Note:**

  1. The **Agree** button remains disabled until Agreed Amount is populated.
  2. Agreed amounts entered are not taken into consideration as collateral values until the next business day.
  3. [Agree Tolerances](<agreements_general.md#agreetol>) are not applied when Counterparty Call Amount is equal to the Principal Call Amount. 



### Agrees Partially

The Principal Agrees partially to a Counterparty's Margin Call

**Procedure**

  1. Click the checkbox to the left of the Margin Call or click on the Margin Call.
  2. Click the **Agree** button that becomes enabled when the call is selected.
  3. The **Agree Margin Call** dialog box will appear.
  4. Enter the amount that the Counterparty has called for in **Cpty Call Amount** field then tab out.

(when entering amounts, shortcuts can be used: k, m, and b. For example, 1.5m is interpreted as 1,500,000)

  5. The system checks whether [Agree Tolerance](<agreements_general.md#agreetol>) has been defined on the Agreement. If it has not been defined, then the system will automatically populate the **Agreed Amount** field with the amount from the **Cpty Call Amount** field.

  6. When agree tolerance has been defined, the system evaluates the difference between the Principal Call Amount and the Counterparty Call Amount.

a. Should the difference be within the defined Agree tolerance, then the method that is defined on the agreement will be applied to the Agreed Amount.

b. Should the difference be outside the Agree tolerance, no adjustment is made, and the Agreed Amount is populated with the **Cpty Call Amount** value.

**Note:** If for some reason the exposure value was incorrect and the agreed amount needs to be overridden, the agreed amount can be over-typed. The system will never calculate an agreed amount which is greater than the Prin Call Amount.

  7. Click the **Agree** button.

An evaluation now occurs to see if a partial dispute should be created.

Should the difference between the Cpty Call Amount and the Agreed Amount be greater than the dispute tolerance, then a partial dispute item for the difference is created.

Simultaneously, the Dispute Information form appears, and the user is required to enter information to categorize and explain the dispute.

(Although the above step is required by default, the system can be configured by the System Administrator so that it is disabled)

  8. The Partially disputed antic demand margin call and advanced to the Antic Demands Workflow - Disputed state.

  9. The Antic Demand which has been partially agreed is advanced to the Antic Demands Workflow - Agreed state.
  10. Simultaneously the following values are set on the Margin Call.



**Note:**

  1. The **Agree** button remains disabled until **Agreed Amount** is populated.
  2. Agreed amounts entered are not taken into consideration as collateral values until the next business day.
  3. As the Counterparty Call Amount is greater than the Principal Call Amount, the system evaluates whether the difference falls within the [Agree tolerance](<agreements_general.md#agreetol>) on the Agreement and if so will incorporate splitting methodology when calculating the Agreed Amount.


