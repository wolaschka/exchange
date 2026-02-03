# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/indexes_approvals.html

# Approvals Process For Indexes

## Overview

In many institutions, when a user (with sufficient privileges) creates or amends an Index (and other reference data items) an approval of the changes will be required which is known among Collateral Practitioners as Approvals.

This control prevents Indexes and their rates being created or changed by one user, and for these changes to have immediate effect in margin results or other system areas

## Configuration

The requirement for approval of Indexes is not mandatory. It can be [enabled](<system_configuration.md#database-approvals>) from an external configuration setting.

## Approvals Process

When Approvals for Indexes is [enabled](<system_configuration.md#database-approvals>) the following behavior occurs

Step | Behavior Process  
---|---  
1 | When any of the Index data fields (including Rates) are populated for the first time, or have their values changed by a user, the values are not directly applied to the database when the **Save** button is clicked.  
  
The values that are added are said to be **Pending Approval**.  
2 | When an Index has one or more items that are **Pending Approval** , the fields become disabled and the whole form is non editable for all users. The Index is now in a state of **Locked for Approval**.  
  
Locked Indexes can be identified via the column of the locked icon.  
3 | No further changes or updates can be made to any of the Index fields (including rates) while it is Locked for Approval.  
4 | If one of the following data imports  
  
\- Index Rates  
  
is run and contains a record for an Index that is in a Locked for Approval state, the record will fail to be imported and a [validation message](<validation_messages.md#354>) will be raised.  
5 | The Index remains in a state of **Locked for Approval** until there are no longer any values that are pending approval.  
6 | Details of the Indexes Pending Approval changes are placed into the Pending view in the Approvals screen.  
7 | Within the Pending view, there are three potential actions that can be applied to the Indexes Pending Approval record.:  
  
a) The Pending Approval Record can be **Approved** at which point the Pending Approval values are applied to the Index object as approved values.  
b) The Pending record can be **Rejected** which will cause the Pending Approval values to be discarded.  
c) The approver may request **Reject for Resubmission** of the Pending Approval record.  
  
In the case of a) and b) there are no longer any Pending Approval values, and the Index is no longer Locked for Approval.  
In the case of c) the Index is still locked for approval for all users, except the original updating user who can make additional edits via the Edit for Resubmission right click function.  
  
Approval, rejection or Requesting for Resubmission of pending values is done in entirety.
