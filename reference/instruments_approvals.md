# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/instruments_approvals.html

# Approvals Process for Instruments

## Overview

In many institutions, when a user (with sufficient privileges) creates or amends an Instrument an approval of the changes will be required which is known among Collateral Practitioners as Approvals. This control prevents Instruments being created or changed by one user, and for these changes to have immediate effect in margin results or other system areas.

## Configuration

The requirement for approval of Instruments is not mandatory. It can be [enabled](<system_configuration.md#database-approvals>) from an external configuration setting.

## Approvals Process

When Approvals for Instruments is [enabled](<system_configuration.md#database-approvals>) the following behavior occurs

Step | Behavior Process  
---|---  
1 | When any of the Instrument (_except instrument prices_) data fields for a _Debt, Equity, Cash_ and _Letter of Credit Instrument_ are populated for the first time, or have their values changed by a user, the values are not directly applied to the database when the **Save** button is clicked. The values are put into a **Pending Approval** state.  
2 | When an Instrument has one or more items that are Pending Approval, the fields within the whole Instrument form becomes disabled for all users. The Instrument is now in a state of **Locked for Approval**.  
3 | Locked Instruments can be identified via the [Instruments grid](<instruments.md#instruments-grid-view>), by the icon in the **Locked for Approval** column.  
4 | No further changes or updates can be made to any of the Instrument fields while it is Locked for Approval (with the exception of Instrument Prices).  
5 | If one of the following data imports:  
  
\- Instruments  
\- Instrument Ratings  
  
is run and contains a record for an Instrument that is in a Locked for Approval state, the record will fail to be imported and a [validation message](<validation_messages.md#364>) will be raised.  
6 | The Instrument remains in a state of **Locked for Approval** until there are no longer any values that are pending approval.  
7 | Details of the Instrument's Pending Approval changes are placed under the **Pending** approval type.  
8 | There are three potential actions that can be applied to the Instrument Pending Approval record.:  
  
a) The Pending Approval Record can be **Approved** at which point the Pending Approval values are applied to the Instrument object as approved values.  
b) The Pending record can be **Rejected** which will cause the Pending Approval values to be discarded.  
c) The approver may **Reject for Resubmission** of the Pending Approval record.  
  
In the case of a) and b) there are no longer any Pending Approval values, and the Instrument is no longer Locked for Approval.  
In the case of c) the Instrument is still locked for approval for all users, except the original updating user who can make additional edits via the Edit for Resubmission right click function.  
  
Approval, rejection or Reject for Resubmission of pending values is done in entirety.
