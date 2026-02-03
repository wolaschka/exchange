
# How to Reject Movements that are Pending Cancellation

The Movement Screen allows users with the requisite permissions tor reject collateral movements that are **Pending Cancellation**. That is, a user has already requested that the movement be cancelled, but their request is not processed until a second user actions it. By rejecting a movement that is pending cancellation, the end result is that the cancellation request is discarded.

Please keep in mind that there are controls regarding which users can reject movements that are pending cancellation:

  * The rejecting user cannot be the same user as the user who requested the movement cancellation.
  * The rejecting user must have privilege entitlements sufficient to reject movement cancellation requests.
  * Only collateral movements that are flagged as Pending Cancellation can have cancellation approval rejected.



## Procedure

  1. In the Navigation Pane click Movements.
  2. Locate the movements that are flagged as Pending Cancellation.

**Note:** As well as using search criteria such as Settlement State (only movements that are in a Settled, In Transit or Failed state can be flagged as Pending Cancellation), Settlement Date Range and optionally Instrument Class and/or Agreement Name); records can be further filtered to be returned by using the check box Filter by Pending Cancellation.

  3. Locate the movement that needs to be rejected for cancellation. 

  4. Select the movement by clicking the radial button to the left of the movement or click on the movement. Provided that the above control conditions are met with the user whom requested the cancellation, and the user has sufficient privileges, the Reject Cancellation button will appear enabled.
  5. Click the Reject Cancellation button. A dialog box opens and a **Reject Comment** is required. 

  6. Click the **OK** button to commit the rejection.




The Pending Cancellation is rejected. Specifically:

  1. The **Pending Cancellation** field for the movement is cleared. That is, the tick icon no longer appears in the grid column.
  2. The reject comments entered are stored on the Movement in the **Reject Reason** field.
  3. The Movement's History is updated to clear the pending cancellation flag, as well as with the user whom applied the Reject Cancellation action 
  4. The **Reviewed By** field on the movement is updated with the rejecting user's id; similarly **Reviewed Date** is populated with the time and date the **Reject Cancellation** was applied.
  5. The following right click functions that can typically be applied to a movement are re-enabled:

a. Add Movement to Existing

b. Cancel

c. Cancel / Replace

d. Fail

e. Re-Open

  6. It is important to understand that the settlement state of the movement is not changed when the Pending Cancellation is rejected. Conceptually it is as if the cancellation request did not occur.



