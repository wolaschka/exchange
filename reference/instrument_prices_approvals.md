# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/instrument_prices_approvals.html

# Approvals Process for Instrument Prices

## Overview

In many institutions, when a user (with sufficient privileges) adds or updated a Debt or Instrument price record an approval of these changes is required which is commonly known among Collateral Practitioners as Approvals.

This control prevents prices being added or changed by one user, and for these changes to have immediate effect in margin results or other system areas.

## Configuration

The requirement for approval of Instrument Prices is not mandatory. It can be [enabled/disabled](<system_configuration.md#database-approvals>) from an external configuration setting.

## Approvals Process

When Approvals for Instrument Prices is [enabled](<system_configuration.md#database-approvals>) the following behavior occurs

Step | Behavior Process  
---|---  
1 | When a new Instrument Price record is added or an existing Instrument Price record is updated by a user, the values are not directly applied to the database when the Save or Apply button is clicked.  
  
**Note:** A single price record is comprised of:  
a) For Debt Instruments [Source, T Adjustment, Bid/Mid/Ask values]  
b) For Equity Instruments [Source, Bid/Mid/Ask, Bid/Ask Spread values]  
2 | Instead, the price records values that were added in step 1) are said to be Pending Approval.  
3 | When an Instrument Price has one or more items that are Pending Approval, the screen to edit the fields is not available to make changes and this applies for all users.  
4 | Locked prices can be identified on the Price tab of the Instrument by the yellow warning icon in the left column. When a user hovers over the icon, a message will appear stating "Locked for changes".  
5 | No further changes or updates can be made to any of the same price record fields while it is Locked for Approval.  
6 | If one of the following data imports  
  
\- Debt Prices  
\- Equity Prices  
  
is run and contains a price record for an Instrument Price record that is in a Locked for Approval state, the price record will fail to be imported and validation messages will be raised for Debt and Equity prices respectively.  
7 | The Price record remains in a state of Locked for Approval until there are no longer any values that are Pending Approval.  
8 | Details of the Price record's Pending Approval changes are placed under the **Pending** Approval Type.  
9 | There are two potential actions that can be applied to the Entity Pending Approval record.:  
  
a) The Pending Approval Record can be **Approved** at which point the Pending Approval values are applied to the Instrument's price record as approved values.  
b) The Pending record can be **Rejected** which will cause the Pending Approval values to be discarded.  
  
In either of the above cases, the Instrument's price record is no longer Locked for Approval.  
Approval, rejection of pending values for a price record is done in **_entirety_**.
