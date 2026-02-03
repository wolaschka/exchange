# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/movements_approval_pendcancel.html

# Approve Pending Cancellation Movements

The Movement Screen allows users with the requisite permissions to approve collateral movements that are **Pending Cancellation**. That is, a user has already requested that the movement be cancelled, but their request is not processed until a second user approves it. By approving a movement that is pending cancellation, the end result will be that the movement gets cancelled.

**Note:** There are controls regarding which users can approve movements that are pending cancellation. They are:

  * The approving user cannot be the same user as the user who requested the movement cancellation.
  * The approving user must have privilege entitlements sufficient to approve movement cancellation requests.
  * Only collateral movements that are flagged as **Pending Cancellation** can have cancellation approval applied.



## Procedure

  1. In the Navigation Pane click **Movements**.
  2. Locate the movements that need approval for cancellation by using the [filter criteria](<movements.md#filter-criteria>) that are flagged as **Pending Cancellation**.

**Note:** As well as using search criteria such as Settlement State (only movements that are in a Settled, In Transit or Failed state can be flagged as Pending Cancellation), Settlement Date Range and optionally Instrument Class and/or Agreement Name); the records to be returned can be further filtered by using the check box **Filter by Pending Cancellation**.

  3. Click on the required movement. Provided that the above control conditions are met, the user is not the one who requested the cancellation and has sufficient privileges, then the Approve Cancellation button will appear.

  4. Click Approve Cancellation.



## Validations

The system then performs a series of validations:

  1. If short position movement checking has been enabled, the system performs a [short position check](<movements_short_position_checking.md>) to see if cancelling the movement will cause a (or exacerbate an existing) short position.

**Note:** A short position warning will not prevent the movement being cancelled. T 2\. The system also validates that cancelling the movement would not result in an invalid position. That is, whether there are any dependent movements linked to the movement being cancelled. If this is the case the system will throw an exception message and the pending cancellation will not be approved.

Example:  
---  
There are two movements for German Bank Repo.  
  
\- A Deliver to Principal for GBP 1,000,000 for 1st April which is in an in transit state.  
\- A Return to Counterparty for GBP 1,000,000 for 4th April which is also in an in transit state.  
\- German Bank Repo ignoring these movements, has no GBP settled position.  
  
The movements have been made in error, and both need to be canceled.  
  
They are both set to pending cancellation.  
  
If an attempt to approve the cancellation of the Deliver to Principal movement, the user will be blocked with an error message of "This movement can not be canceled because doing so would results in an invalid position."  
  
The system is validating the cancellation approval, and determining that if it is cancelled, the movement to return GBP collateral to the Counterparty would result in an invalid position as collateral can't be returned that isn't held.  
  
To resolve this situation take the following action:  
1\. First, select the Return to Counterparty movement for settlement date 4th April 2008, click the Cancel button. Then have the resulting pending cancellation approved to fully cancel the return movement.  
2\. Next, select the deliver to principal movement for settlement date 1st April, click the cancel button. Then have the resulting pending cancellation approved.  
  
Following this method, both movements will be marked as cancelled, and will be ignored for margin calculation and settle movement tasks.  



Assuming the validations are passed, then the Pending Cancellation is approved. Specifically:

  * The movement's settlement state is updated to Cancelled.

    * Bear in mind the following - when the cancellation of a settled collateral movement is approved, any associated collateral position could be affected. That is, if the cancellation that was approved for a collateral movement that settled using the "adjust positions" flag, then the corresponding settled collateral position will be affected when the collateral movement is cancelled, as it will "roll out" of the position.
  * The Pending Cancellation flag on the movement is cleared.

  * The Reviewed By and Reviewed Date fields of the movement are updated with the cancellation approving user and the time the pending cancellation was approved.



**Note: Important Interest Payment Consideration**

If the cancellation of a cash collateral movement(s) for a settlement date within an open interest period is approved, it is strongly recommended to recalculate any open interest payment(s) for the affected agreement to ensure the approved cancelled movement is correctly reflected within the ending balance of the open payment period and the beginning balance of the open accrual.
