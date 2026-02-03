
# Approvals

## Overview

Approvals is a way to monitor the data that gets into the system. Approvals must first be [enabled](<system_configuration.md>) by a System Administrator or Database Administration team.

If Approvals has been enabled for the following objects:

  * [Agreements](<agreements_approvals.md>)
    * [Agreement Margins](<agreement_margin_approvals.md>)
    * [Agreement SSI](<agreement_ssi_approvals.md>)
    * [Specific Trade Coverage](<specifictradecoverage_approvals.md>)
  * [Contacts](<contacts_approvals.md>)
  * [Entities](<entities_approvals.md>)
  * [Indexes](<indexes_approvals.md>)
  * [Instrument Prices](<instrument_prices_approvals.md>)
  * [Instruments](<instruments_approvals.md>)



then changes to an object, whether that is the creation of a new object or changing field values on an existing object, are not automatically committed to the database when the user saves the object.

Instead, they are placed in a "pending approval" state and require approval before they are fully committed to the database. While in the pending approval state, the object is locked for approval and cannot be amended.

Where one of the above objects has values that are pending approval, a record of the object and the corresponding pending approval changes is placed into the Approvals Workspace within the TLM® Collateral Management Self Service Portal where it can be further processed.

## Search Criteria

The data that gets returned on the Approvals screen will be determined by the value that is selected at the top of the screen though **Approval Type**. The default value is [Pending](<#pending>).

When the field is clicked, a drop-down will display the other values which include [Approved](<#approved>), [Rejected](<#rejected>), and [Awaiting Resubmission](<#awaiting-resubmission>)

Types | Description  
---|---  
Pending | When items are in this state of "pending approval", they require approval before they are fully committed to the database.  
  
While in this state, the object is locked for approval within the system and cannot be amended.  
  
Where one of the above objects has values that are pending approval, a record of the object and the corresponding pending approval changes will appear in when the Approval type of _Pending_ is selected.  
Approved | Whether it is a creation of a new object or an edit of field values on an existing object, the values are not automatically committed to the database when the user saves the changes.  
  
Instead they are placed in a pending approval state and require approval before they are fully committed to the database.  
  
While in the pending approval state, the object is locked for approval and cannot be amended.  
  
Within the Pending view, the record can be Approved.  
  
**Considerations**  
When the record is approved, all the pending approval changes on the record are approved. It is not possible to approve a change on one data field, but reject the change on another data field. Approvals and rejections are applied in entirety to all the corresponding pending approval items on the record.  
Rejected | Whether it is the creation of a new object or the edit of field values on an existing object are not automatically committed to the database when the user saves the changes.  
  
Instead they are placed in a pending approval state and require approval before they are fully committed to the database.  
  
Within the Pending view, the record can be rejected.  
  
When the record is rejected, all the pending approval changes are rejected. It is not possible to approve a change on one data field, but reject the change on another data field. That is, Rejections and Approvals apply in entirety to all the corresponding pending approvals on the record.  
  
**Considerations**  
Rejecting a Pending Approval record that is for an Insert action is logically the same as a delete. To put it another way, it is as if the creation (insert) of that object did not occur.  
Awaiting Resubmission | Whether it is the creation of a new object or the edit of field values on an existing object are not automatically committed to the database when the user saves the changes.  
  
Instead they are placed in a pending approval state and require approval before they are fully committed to the database. Alternatively, they can be rejected in which case the pending changes are discarded.  
  
However, there is a third action that is supported.  
  
The approving user may conclude that on the single pending approval record some of the pending changes are correct, while others are incorrect.  
  
Rather than rejecting the pending record in entirety, the approving user may instead request a re-submission.  
  
By doing this, the underlying object record remains locked for approval. Crucially however, it can be edited by the original updating user.  
  
This allows the original user to make the necessary changes to fully correct the pending changes and then resubmit the changes on the object for approval.  
  
As such, when an object is in the resubmitted screen, it can be thought of as being in an intermediary state.  
  
**Considerations & Limitations**  
The original updating user may request re-submission of their own pending value changes. This allows the updating user to correct their own entries prior to submitting the item for approval.  
  
When a pending approval record is requested for re-submission, only the original updating user can make changes to it in TLM® Collateral Management Version 5 - the record is locked to all other users.  
  
Pending approvals for the following items are excluded from re-submission process:  
\- Instrument Prices  
\- Agreement Margin  
\- Agreement Standard Settlement Instructions  
\- Specific Trade Coverage  
\- Contacts  
  
## Grid Features

The Approvals grid can be [sorted](<grid_features.md#sorting>), [paged](<grid_features.md#paging>), [exported](<grid_features.md#export-grid>), [reorder columns](<grid_features.md#reorder-columns>), and fields can be [disabled or resized](<grid_features.md#display-and-resizing-columns>).

## Grid View

Approval Type | Field | Description  
---|---|---  
All | Date Submitted | Date & time Stamp of when the pending changes were created.  
All | Type | The type of object that has the pending changes. Currently in the approvals workspace that can be one of the following  
• Entity  
• Index  
• Instrument  
• Instrument Price  
• Agreement  
• Agreement Margin  
• Agreement SSI  
• Contact  
• Specific Trade Coverage  
All | Action | This details the action that was applied against the object which caused it to be placed in a Pending Approval state.  
There can be one of two values:  
  
**Update**  
Meaning that one or more of an object's existing current values was updated to a new (pending approval) value.  
  
**Insert**  
Meaning that no object values existed and the value(s) entered (inserted) are new (Pending Approval values).  
This is likely to mean that the object itself is new.  
  
**Note:** If the type is rejected, this will likely mean the Object itself will be deleted if it did not already exist prior to the rejected Insert Action.  
All | Name | The name of the object with the pending approval records.  
All | Created By | The user who performed the Action on the objects data fields.  
Approved | Date Approved | The timestamp that the Approved By user approved the pending changes.  
Approved | Approved By | The user who approved the pending changes.  
Rejected/  
Awaiting Resubmission | Date Rejected | The timestamp when the Rejected By user rejected the pending changes.  
Rejected/  
Awaiting Resubmission | Rejected By | The user who Rejected the pending changes.  
Rejected/  
Awaiting Resubmission | Reason | This shows the text that was entered when an approving user rejected the Pending Approvals.  
  
## Details View

Click on the row to see the details of the record whether it is waiting for [approval](<#pending>), [approved](<#approved>), [rejected](<#rejected>) or [waiting for resubmission](<#awaiting-resubmission>). The screen will display the values prior to and after the change along with additional information.

Area | Field | Description  
---|---|---  
Top Section | Date Submitted | Date & time Stamp of when the changes were created.  
Top Section | Type | The type of object that had the pending changes. Currently in the approvals work space it can be one of the following:  
  
• Entity  
• Index  
• Instrument  
• Instrument Price  
• Agreement  
• Agreement Margin  
• Agreement SSI  
• Contact  
• Specific Trade Coverage  
Top Section | Action | This details the action that has been approved.There can be one of two values:  
  
**Update** \- Meaning that one or more of an existing object's values was updated to a new value via the approval.  
  
**Insert** \- Meaning that one or more object did not exist prior to the approval. This is likely to mean that the object itself is new.  
Top Section | Created By | The user who created the pending changes.  
Top Section | Name | The name of the object which had pending changes approved.  
Top Section | Approved By | This field will appear when the Approval Type is **Approved**. This field is the user whom approved the pending changes.  
Top Section | Date Approved | This field will appear when the Approval Type is **Approved**. This field is the timestamp that the Approved By user approved the pending changes.  
Top Section | Rejected By | This field will appear when the Approval Type is **Rejected** or **Reject for Resubmission**. The user whom Rejected the pending changes.  
Top Section | Date Rejected | This field will appear when the Approval Type is **Rejected** or **Reject for Resubmission**. The timestamp when the Rejected By user rejected the pending changes.  
Top Section | Reason | This field will appear when the Approval Type is **Rejected** or **Reject for Resubmission**. This shows the text that was entered when an approving user rejected the Pending Approvals.  
Grid | Type | The type of object that has the pending changes.  
Grid | Field Name | The name of the object field that has a pending value change.  
Grid | Before | The value that the object field name had before the pending changes occurred.  
Grid | After | The value that the field will be changed to, should the pending change be approved. For the avoidance of doubt, it is the After Values that represent the changes that were made which are currently Pending Approval.  
  
## Actions

### Approve

**Procedure**

Step | Description  
---|---  
1 | To approve the record click the approve link on the main page of the Pending tab in the Actions field or click on the Approve button in the right hand corner of the details screen.  
2 | The system validates the pending changes to ensure that they are still valid.  
3 | Assuming Validation checks are passed, the object's values that are shown in the After column are applied to the Agreement Data object and are saved to the Database.  
4 | Simultaneously, the following happens:  
  
1\. Underlying object is no longer locked for approval in TLM® Collateral Management Version 5, and can now be edited.  
2\. The pending approval record transitions to the Approved Screen.  
3\. The Approved By field is populated with your user ID.  
4\. The Date Approved field is updated with the current date and time.  
**Notes:** | 1\. In order for a user to be able to approve records in this screen, the following two conditions must be met:  
a. Approving user cannot be the same as the Created By User. In other words, a user cannot approve their own changes.  
b. The Approving user must have sufficient privileges to approve the object type.  
  
2\. If both these conditions are not met, then the approve link will not appear.  
  
### Reject

It is possible to reject one's own pending approval values, provided that the user that is rejecting their changes has the security privilege.

As rejecting one's own pending approval changes is functionally identical to not having made any changes, it does not require a separate user.

To reject another user's change, follow the below procedure.

**Procedure**

Step | Description  
---|---  
1 | Click the Reject link (red circular arrows) on the main page of the Pending tab in the Actions field or click on the Reject button in the right hand corner of the details screen.  
2 | The Reject dialog box appears, requiring the mandatory entry of a valid reason for the rejection.  
3 | Click save to continue.  
4 | The values on the Pending Approval item are discarded.  
5 | It is important to understand the consequences of rejecting the record.  
  
Should the Pending Approval item be an Insert Action, in essence, the user is rejecting the creation of the object.  
As such, the Pending Approval object is deleted.  
  
Should the Pending Approval item be an Update Action, entries in the Before Value column remain on the object.  
Additionally, the object is no longer locked for approval and can now be edited.  
6 | Irrespective of whether the pending approval was for an Insert or Update, the following happens:  
  
1\. The pending approval record transitions to the Rejected Screen.  
2\. The Rejected By field is populated with the user's user ID.  
3\. The Date Rejected field is updated with the current date and time.  
  
### Edit Resubmission

The resubmit functionality is currently only available through TLM Collateral Management. See the TLM Collateral Management User Guide for more information.
