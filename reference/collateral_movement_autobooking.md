# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/collateral_movement_autobooking.html

# Collateral Movement AutoBooking

## Background

In the typical course of Margin Call workflow, collateral movements are booked (either manually in standard workflow or optionally uploaded for grouped workflow) to satisfy the Agreed Amount of the Margin Call.

Autobooking automatically creates the necessary collateral movements on a Margin Call to satisfy the total agreed amount.

It is important to conceptually understand that the autobooking process uses the "in House" collateral positions when calculating collateral movements to create.

## Eligibility for Autobooking

Autobooking functionality requires "Autobooking Criteria" being met.

The current criteria are:

  1. Agreement is for Central Clearing Business Line. 
  2. Agreement Margin Type must be defined as Variation. 
  3. The Agreement must have a single eligible instrument defined. (If eligible buckets are defined, autobooking does not occur) 
  4. The single eligible instrument from 3) must be a Cash Instrument. (It does not necessarily have to be for the same currency as Agreement Currency) 
  5. The Eligible Instrument from 3) must have a valuation percentage greater than zero. 
  6. There cannot be any settled held or posted positions for the Agreement in any instrument other than that referred to in step 3) 



If _one_ or _more_ autobooking criteria are not met, then autobooking will not occur.

## AutoBook Process

Assuming the above criteria is met, the following processes occur when autobooking process is invoked:

  1. Calculate the Agreed Deliver and Agreed Return Amounts for the Margin Call. 

Type | Process  
---|---  
Demand | Set Agreed Total Amount = Call Amount  
  
If the Agreed Total Amount <= Total Posted Collateral Value, then Agreed to Return Amount = Agreed Total Amount  
  
If the Agreed Total Amount >Total Posted Collateral Value, then  
  
Agreed to Return = Total Posted Collateral Value.  
  
Agreed to Deliver = Agreed Total Amount - Total Posted Collateral Value  
Anticipated Demand | Set Agreed Total Amount = Call Amount  
  
If the Agreed Total Amount <= Total Held Collateral Value, then Agreed to Return Amount = Agreed Total Amount  
  
If the Agreed Total Amount >Total Held Collateral Value, then  
  
Agreed to Return = Total Held Collateral Value.  
  
Agreed to Deliver = Agreed Total Amount - Total Held Collateral Value.  
  
**Note:** Total Posted and Total Held Collateral Values used in above calculations, are the "In House" collateral values, and not the collateral values per CCP - That is, they are not the collateral values imported on the Margin Call from the CCP.

  2. Calculate the direction and notional amounts for auto book collateral movements

Type | Process  
---|---  
**Demand Margin Call** | Where Agreed to Deliver Amount from Demand is >0  
  
Create a Deliver to Prin movement, where market value applied (Agmt Ccy)of the movement = Agreed to Deliver Amount  
  
Where Agreed to Return Amount from Demand >0  
  
Create a Return to Prin movement where market value applied (Agmt Ccy) of the movement = Agreed to Return Amount.  
**Antic Demand Margin Call** | Where Agreed to Deliver Amount from Demand is >0  
  
Create a Deliver to Cpty movement, where market value applied (Agmt Ccy) of the movement = Agreed to Deliver Amount  
  
Where Agreed to Return Amount from Demand >0  
  
Create a Return to Cpty movement where market value applied (Agmt Ccy) of the movement = Agreed to Return Amount.  
  3. Set the following attributes on the collateral movements created in step 2): 

Field Name | Comment  
---|---  
Instrument Ref | Cash Instrument reference as per step 3) of autobooking criteria.  
Notional | The notional amount is derived from the value market value applied (Agmt Ccy) amount calculated in calculated in step 2.  
  
The notional equivalent amount is calculated using Market Value Applied (Agmt Ccy) / FX Conversion rate / Valuation percentage / Price  
Price | Defaulted to 1  
Price Date | Defaulted to today  
Market Value (Agmt Ccy) | Calculated as per Notional Amount * Price * FX Rate (if applicable)  
Valuation Percentage | The system will populate this field with the appropriate Valuation percentage for the collateral as defined in the Basic Eligibility tab of the agreement.  
  
The valuation percentages that are used depend on the movement type being created, and are as follows:  
  
**Deliver to Principal** \- Uses Held Valn%  
**Return to Principal** \- Uses Posted Valn%  
**Deliver to Cpty** \- Uses Posted Valn %  
**Return to Cpty** \- Uses Held Valn%  
Market Value Applied (Agmt Ccy) | As per step 2 above.  
Receiving Settlement Instruction | The system will automatically populate this with the receiving party's matching SSI record which has been set as default. assuming that it exists.  
  
Should no matching SSI record exist that has been set as default, the field will not be populated. It is worth noting that Settlement Date default value is derived.  
  
Derived from the settlement offset value of receiving party SSI record. See [Understanding Settlement Date Defaults](<#settlement-date-defaults>) for more information.  
Sender Settlement Instruction | Automatically populated identically to Receiving Instruction field, but for the matching default SSI record applicable to the Sending Party on the Collateral Movement.  
Settlement Date | This date will default according to settlement offsets defined in the system. Settlement offset values can be defined in three areas in the application. Specifically, the system will seek values in the following locations in this order:  
  
a) Settlement offsets defined on receiving party's relevant Agreement or Entity matching SSI. set as default.  
b) If not found, then any settlement offsets that are defined on the agreement,  
c) If no agreement level offsets exist, it will default to system level default settings.  
d) If no values are defined at the system level either, the date will defaults to Today +1 business day  
  
"Today" is defined as the current date in the Principal Managing Location of the Agreement. See [Understanding Settlement Date Defaults](<#settlement-date-defaults>) for more information.  
Physical Settlement | Set as off.  
Reason for Movement | Defaulted to be Autobooked.  
  4. Set the Settlement state of the movement(s) to be In Transit.

  5. Transition the movement(s) into the Central Clearing Margin Call Workflow - Confirmed - Awaiting Settlements Queue 



**Note:** When calculating which collateral movements to create, the autobooking process uses collateral positions that are recorded at the time of the Margin Call creation. Any collateral position changes subsequent to the Margin Call creation will not be taken into consideration in the autobooking calculation.

It is therefore strongly recommended that any position adjustments are completed before importing margin calls.

Should collateral positions be altered subsequent to importing margin call, it is recommended that the margin call be re-import before attempting to process it so that the autobooking process uses the revised collateral positions.
