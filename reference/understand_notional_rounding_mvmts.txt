# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/understand_notional_rounding_mvmts.html

# Understanding Notional Rounding on Collateral Movements

It is possible to define Minimum Lot and Lot Increment on Debt Instruments.

When defined, any collateral movements for the Instrument must meet the following criteria.

  1. The Notional on the Collateral Movement must be equal to or greater than the defined Minimum Lot.
  2. The Notional on the Collateral Movement must be divisible by the Lot Increment.



When a notional amount is entered on a collateral movement the system will perform the following adjustments.

## Delivery Movements booked via standard Workflow

  1. Notional is checked to ensure that it is >= Minimum Lot. If it is not, it is rounded up to be equal to Minimum Lot.

  2. If Notional is greater than Minimum Lot, but not divisible by the Lot Increment as per the following screen shot, the system will round up the notional to be divisible by the lot Increment .




## On Return Movements booked via Standard Workflow

  1. The system checks to see if the Notional is < Minimum Lot. If it is, it is rounded up to the Minimum Lot. 

  2. The system then checks that the Notional is divisible by the Lot Increment. If it is not, it is rounded down to the nearest amount that satisfies the Minimum Lot and Lot Increment criteria.




**Note** : When entering movements using a Market Value target amount, the system applies exactly the same rounding logic to calculate a Notional Amount that meets Minimum Lot and Lot Increment definitions

## On Movements Uploaded during Grouped Workflow

In Grouped Margin Call workflow, collateral movements can be populated on a margin call summary sheet and uploaded into the system. Validation is done on the uploaded margin call summary sheet to ensure that the collateral movements it contains are compliant with any defined Minimum Lot / Lot Increment Criteria as outlined above. If the defined notional on the collateral movement is < Minimum Lot, the uploaded movement causes an exception and is not imported.

Similarly, if the notional amount defined on the Margin Call Summary file is not divisible by the Lot Increment, an exception is raised during the file upload, and the movement is not imported.
