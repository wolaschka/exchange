
# Send For Approval

In TLM® Collateral Management, the default behavior of the workflows, is that [approvals are enabled](<system_configuration.md#workflow>). This means, that each Antic Demand and its associated Collateral Movements must be approved before it can be advanced to the Settlements state. Once the user is satisfied that they have input all necessary Collateral Movements on the Antic Demand, the Antic Demand must be sent for approval. It is possible to disable workflow approvals, in which case, the antic demand is advanced directly to the sent to settlements state once movements are attached.

**Procedure**

  1. From within the _Anticipated Demands - Agreed_ state, either select the required Anticipated Demand Margin Call by clicking the checkbox to the left of the Margin Call or click on the Margin Call.

The transition buttons that become visible next depend on whether the system administrator has [disabled workflow approvals](<system_configuration.md#workflow>).

  2. If Workflow approvals are enabled, click on the **Send for Approvals** button. If Workflow approvals are disabled, click on **Send to Settlements**.

  3. The system will check to ensure that the Total Entered value for all Collateral Movements is not less than the Agreed Total amount (i.e. that the market value of collateral movements entered is equal to or greater than the agreed amount on the Antic Demand).
  4. If the Total Entered value is less than the Agreed Total Amount following warning message will be displayed: "The market value of the collateral entered does not satisfy your Agreed Amount."

If the Collateral Movements need to be amended to satisfy this check, then click the **Cancel** button. The Collateral Movements can then [added](<#create-movement>) or edited as necessary.

Click the **Proceed** button to ignore this warning check and forward the Antic Demand and its Collateral Movements for approval.

  5. If the total market value of the movement entered exceeds the sum of the Agreed Amount and the Minimum Transfer Amount the following warning message will be displayed: "The market value of the collateral entered exceeds you Agreed Amount and Minimum Transfer Amount."

If the Collateral Movements need to be amended to satisfy this check then click the **Cancel** button. The collateral movements can be edited as necessary.

Click the **Proceed** button to ignore this warning check and forward the Antic Demand and its Collateral Movements for approval.

  6. What happens next depends on whether workflow approval was enabled or disabled.

If workflow approval was **_enabled_** , the Antic Demand and all its associated Collateral Movements are advanced to the Antic Demands Workflow - Confirmed Approval state to await managerial approval.

If workflow approval was **_disabled_** , the Antic Demand and all its associated Collateral Movements are advanced directly to the Antic Demands Workflow - Confirmed state. No approval is required, and the collateral movements are updated to an In-Transit status.




## Progressing Movements from the Agreed state

Once all the required collateral movements have been entered on a particular Demand, the next stage of process is to submit the Demand and its associated Collateral Movements for Movement Approval.

This assumes that the standard TLM® Collateral Management workflows have been implemented in their default state. It is possible to disable the requirement for margin calls to be approved. Should workflow approvals be disabled, this topic is still relevant.

## Transitioning the Margin Call to the Confirmed to be Approved Workflow state

Each Demand Margin Call and its associated Collateral Movements must be approved before the Margin Call can be advanced into the Demand Workflow - Confirmed Approval state.

Therefore the user, once satisfied that all the necessary Collateral Movements on the Demand have been inputted, must send the Demand and its attached Collateral Movements for approval.

  1. From within the _Demands - Agreed_ state, either select the required Demand Margin Call by clicking the checkbox to the left of the Margin Call or click on the Margin Call.

The transition buttons that become visible next depend on whether the system administrator has [disabled workflow approvals](<system_configuration.md#workflow>).

  2. The **Send for Approval** button will appear if the approval functionality is enabled else the **Send to Settlements** button wil appear if the approval functionality is disabled.

  3. The system will check to ensure that the Total Entered value for all Collateral Movements on the Demand is not less than the Agreed Total amount (i.e. that the adjusted market value of collateral movements entered is equal to or greater than the agreed amount on the Demand).




(Please bear in mind that if ineligible collateral has been selected for the movement, then the market value of the movement will be zero)

  1. If the Total Entered value is less than the Agreed Total Amount the following warning message will be displayed:



"The market value of the collateral entered does not satisfy the Agreed Amount."

There are three options here:

  * Click the **Proceed** button to ignore the warning and advance the Demand and all its associated Collateral Movements to the Demand Workflow - Confirmed Approval state to await managerial approval.
  * Click the **Cancel** button to go back and amend the Collateral Movements to satisfy this check. The collateral movements can then be added or edited as necessary, and then resubmit for approval.
  * If the Counterparty needs to be informed that their proposed Collateral Movements have a market value less than the agreed amount on the Demand, click the **Notify Counterparty** button.

This will cause an Insufficient Collateral Notice to be emailed to the contact(s) defined to receive Insufficient Collateral Notices on the Agreement. Example of the email header and details created. Example of the insufficient collateral notice created.

Depending on the discussion with the Counterparty, the user may want to:




### Example

In the below example, Demo MC ISDA Unsecured Lock Up 4 has agreed to deliver USD 140,000 to Prin Bank. However, the agreed amount was USD 150,000, so the proposed collateral movement is insufficient to meet the requirement.

This notice also includes Margin Type which denotes two things:

  * Whether the Margin Call that warrants the collateral movement was generated for a Lock Up Requirement or for a Variation Requirement.
  * Consequently, what the Margin Type on the Collateral Movement is. This will be identical to the margin requirement on the margin call.



In the case of the below example - the collateral is explicitly defined as margin type Lock Up. Only OTC Agreements that segregate Lock Up and variation margin or Lock Up Only agreement allow collateral movements to be defined as Lock Up, so we can conclude that the original call amount of USD 150,000 was generated from a Lock Up requirement.

The details of the collateral movement, including the **Movement ID** are also shown on the notice.

![Insufficient_Collateral_Notice_Demand.jpg](Images/Insufficient_Collateral_Notice_Demand.jpg)

To: TLM Coll Notices

Subject: Insufficient Collateral / Ineligible Collateral - Prin Bank A Bank COB 2009-Sep-21

The collateral that has been allocated is insufficient or ineligible to meet the demand. Please find attached a proposed movements notice for COB 2009-Sep-21.

Regards,

Prin Bank

  * Add to, or edit the Collateral Movements and then resubmit.
  * Submit the Demand with it's current movements for approval.
  * Take some other action.



Once submitted, the Demand and all its associated Collateral Movements are processed as follows:

If approvals are enabled, they are advanced to the Demand Workflow - Confirmed Approval state to await managerial approval

If approvals are disabled, they are advanced to the Demand Workflow - Confirmed state and the collateral movements are updated to an In Transit Settlement state.
