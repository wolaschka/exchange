# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/movement_validation.html

# Movement validation

## Validation of Collateral Movements Added to a Margin Call

Collateral movement entries are subject to validation checks. The following table summarizes the validation performed and whether the particular item being validated will prevent the movement from being saved.

**Note:** Fields in red are required.

Field Name | Validation Performed | Prevents Record Save ?  
---|---|---  
Instrument Ref | Instrument Reference is a mandatory field. The system will not allow the movement to be saved without a value. | Yes  
Instrument Ref | The collateral selected is checked to see that it meets basic, advanced eligibility, ratings based eligibility, and wrong way risk eligibility criteria as defined in the agreement. If the instrument selected does not meet these criteria, a red x is displayed. A message will also appear stating which collateral bucket(s) the instrument fails to meet. | No  
Instrument Ref | For Return to Principal and Return to Counterparty movement types, the collateral is checked to see whether it exists in a settled, in-transit state as a posted or held position.  
If the user tries to save a return to principal movement with collateral that is not being held on behalf of the counterparty, a message will appear showing an inability to return the collateral selected.  
  
Example:  
![movement_rtntoprin_invalid.jpg](Images/movement_rtntoprin_invalid.jpg) | Yes  
Target Type Dropdown and  
  
Target Amount Field | For the Target dropdown field, a value of **_Notional_** or **_Market Value_** must be selected. Once a value is selected, a corresponding target amount must be entered. Click **Calculate** or tab out of the field to populate and calculate the Notional or Market value (in Agreement Currency) fields.  
  
**Note:** If a value of 0.00 is entered, the system will not calculate the Notional and Market Value and the Calculate will become disabled. | Yes  
  
  
Yes  
Notional | Assuming that [short position checking](<entities_general.md#shortpositions>) for movements has been enabled, the movements are subject to [Short Position Checks](<movements_short_position_checking.md>).  
  
This process differs very slightly depending on whether  
  
1\. A Movement is being entered  
2\. A Standalone movement is being rejected.  
3\. A Movement is being canceled  
4\. A Movement is being cancel /corrected.  
  
Scenario 1: Checks Performed When Movements are Entered.  
  
The system checks whether the notional amount of the instrument will:  
___Create_ _, or_ _increase_ _an existing, short position (For Delivery to Counterparty & Return to Counterparty Movements)  
_or, **Fail to resolve** an existing short position (For Delivery to Principal & Return to Principal Movements)  
  
In either scenario, the system is evaluating for the movement's settlement date whether there will be a negative available amount of the specified instrument as a result of the movement (- see note i below). When performing this check, the calculation of available amount differs slightly depending on whether an Asset Pool source is specified on the movement.  
  
If Asset Pool is specified, the current asset pool available balance for the Instrument is calculated. The system evaluates whether by including the movement, a negative available amount will exist (or continue to exist.) If so, then a warning message is shown  
  
If the current available Notional amount calculated was positive, it is shown in the message. If Asset Pool is not defined , conceptually the process is very similar, but the calculation for available collateral is based on the availability of rehypothecatable collateral. Specifically, the system calculates what the current available rehypothecatable notional amount is for the specified Instrument and settlement date.   
  
Once calculated, the system then evaluates the impact of the movement on this calculation, and if the available rehypothecatable notional amount would be (or would continue to be) negative, then a warning message is shown detailing what the short position amount would be.  
  
Again the system outlines the current available notional for the instrument and what the resultant short amount will be.  
  
Scenario 2: Checks Performed when Stand Alone Movements are Rejected.   
  
For Standalone movements, a status of Rejected means the movement is no longer considered part of the collateral inventory. Therefore when they are rejected, the system checks to determine whether their removal will cause a negative available amount.  
  
The calculation of the negative available amount is identical to that outlined above, with the exception that when evaluating the impact of the movement being rejected, the system is evaluating only whether the rejection would cause a short position for today.  
  
For example, consider the following scenario where two movements awaiting approval:-  
  
Movt A - Standalone Movement Deliver to Principal movement for Agreement A for 500,000 JPY for settlement T  
  
Movt B - Margin Call Movement Deliver to Counterparty for Agreement B for 300,000 JPY for settlement T  
  
(for the purposes of explanation, assume no other JPY movements or positions)   
  
Rejecting Movt A will result in a short position of 200,000 on T and therefore trigger a short position warning. It is important to recognize that unlike the check performed on movement entry, for rejections, the system is checking whether the rejection of the movement will cause a short position for Today. In the above example, if Movt B was for settlement T+1, the rejection would not trigger a short warning.  
  
Similarly, if Movt A was for for a settlement prior to T, the check is still done to see the effect of it's removal on T  
  
Scenario 3: Checks Performed when Movements are Canceled.  
  
The short position check performed when a movement is canceled is identical to that performed for rejected Standalone movements. Namely, the system evaluates the impact of the removal of the movement from the calculation of available collateral for Today only. If available collateral will be (or will remain) negative, a warning is thrown  
  
Scenario 4: Checks Performed when Movements are Cancel / Replaced  
  
When a movement is cancel / replaced, it is the replacement movement that is subject to short position checking in a very similar fashion to newly entered movements in scenario 1. above.   
  
There are some minor differences:-  
  
If the replace movement's settlement date is before today, use Today in the calculation.   
  
If the replace movement settlement date is in the future, use the replace movement settlement date.  
  
Additionally:-  
  
When a Deliver to Cpty movement is cancel/replaced, the new (replacing) movement is checked as if for the creation of a new movement  
  
When a Deliver to Principal movement is cancel/replaced, any contingent Deliver to Counterparty movements prior to the new (replacing) Deliver to Principal will be checked. If the contingent Deliver to Counterparty movements are after the settlement date of the the replacing movements there is no check performed.  
  
For example, consider the following:-  
  
Movt A:Deliver to Principal for settlement date T for 100 JPY   
  
Movt B:Deliver to Counterparty for settlement date T+2 for 80 JPY   
  
If Movt A, is cancel/replaced to be a Deliver To Prin for settlement T+3, and a notional of 70, then the system will evaluate that there is a short position of 10 on the revised settlement date of T+3 and show the warning.  
  
If however, Movt A is cancel/replaced to be a Deliver To Prin for settlement T+1, and a notional of 70, then no check is performed..  
  
Note:   
  
When evaluating whether a collateral movement will cause/exacerbate or still result in a short position, the system uses a optimistic settlement methodology regarding non settled movements; assuming that not only will outgoing collateral be sent, but that incoming collateral will be received.   
  
Even if short position warnings are enabled at a global level it is still possible to disable them for specific Principals - see Understanding Short Position Checking on Movements   
  
Short position warnings do not prevent the movement being saved. | No  
Notional | Notional amount is validated against the Instrument's Minimum Lot and Increment values, and rounded if necessary. See [Understanding Notional Rounding on Collateral Movements](<understand_notional_rounding_mvmts.md>) for more information. | No  
Notional | The Notional amount is checked to see whether Amount being returned does not exceed amount delivered.  
  
Notional is checked on Return to Principal and Return to Counterparty movement types to validate whether the notional amount of the specific collateral being returned does not exceed the notional amount either posted or held.  
  
1\. Return to Principal Movement Checks differ slightly depending on whether Asset Pool is defined on the movement.  
  
2\. For Return to Principal Movements without an Asset Pool Defined:   
  
If a return to principal movement is entered on a Demand with a collateral notional amount greater than the amount of collateral the principal has posted, an error message detailing the collateral amount that has been entered as being greater then the amount posted can be seen.  
  
For Return to Principal Movements with an Asset Pool defined:   
  
If a return to principal movement on a Demand is attempted to be entered on a Demand with a collateral notional amount greater than the amount of collateral that has been posted from the Asset Pool, an error message detailing the collateral amount that has been entered as being greater than the amount posted can be seen.  
  
**Note:** The warning states the current amount that is posted (1mm) for the Instrument from the Asset Pool.  
  
Return to Principal movements in excess of 1mm for this Instrument / Asset Pool cannot therefore be created.  
  
Similarly, if a return to counterparty movement is entered on an Antic Demand for more collateral than has been received from the counterparty, an error message detailing the collateral amount that has been entered as being greater than the amount held can be seen.  
  
**Note:** Validations on return movements also take into consideration settlement date.  
  
Consider an Agreement has the following Movements.  
  
Deliver to Principal of USD $10,000,000 for Settlement 23 Oct 2011   
  
Return to Counterparty of USD$9,000,000 for Settlement 22 Oct 2011   
  
The system will prevent the entry of the Return movement as there will not be sufficient USD position for the Agreement on 22nd October.  
  
| Yes  
Settlement Date | Settlement Date allows for a date in the past but there will be a warning if Physical Settlement is checked. | No
