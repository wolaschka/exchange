
# Moving Agreements In and Out of a Combined Business Lines Agreement Group

## Background

Combined Business Line Agreement Groups governs how Margin Calls and Interest Payments for Agreements of the OTC and Client Clearing Business Lines are processed within the workflow.

Put simply, if an OTC or Client Clearing Agreement is covered by a Combined Business Lines Agreement Group, then any Margin Calls or Interest Payments generated can be identified by the checkmark under the Grouped column.

It is not expected that the composition of Agreements in Combined Business Lines Agreement Groups will be frequently changed, particularly when there are Margin Calls and/or Interest Payments in progress.

There are restrictions on moving an Agreement in or out of a Combined Business Lines Agreement Group when it has actioned Margin Calls and/or actioned Interest Payments.

These same restrictions occur if a Combined Business Lines Agreement Group is attempted to be deleted.

## Restrictions related to "Actioned" Margin Calls

An Agreement cannot be added to or removed from a Combined Business Lines Agreement Group while is has actioned Margin Calls for the current day.

By actioned, this means any Demand, No Action or Antic Demand that:

  * Has an Agreed Amount applied.
  * Has a Counterparty Call Amount applied, even if this amount is zero.
  * Has any collateral movements associated to the Margin Call.
  * Has pending settlements associated with the current call.
  * Is Fully or Partially disputed - as this implies an Agreed Amount.



If an Agreement has a Margin Call with a variation and a lock up element, both elements must meet the above criteria before the Agreement can be moved

## Restrictions related to "Actioned" Interest Payments

Similarly, an Agreement cannot be added to or removed from a Combined Business Lines Agreement Group while is has an open Interest Payments that has been actioned.

By **actioned** , it means that an interest payment:

  * Has an Agreed amount recorded - even if this amount is zero



**Note:** If an Agreement has payments generated for multiple currencies, then all the payments must meet the above criteria.

Additionally, if Interest is calculated on a Gross basis, both interest payments (due to cpty and due to prin, if applicable) must be unactioned in order that the Agreement can be moved in or out of the group.

An interest payment that “had” an agreed amount or interest movements, and then the payment was “rejected” will be considered an unactioned interest payment.

However, when an interest collateral movement has been failed, the agreed amount is still intact and the interest payment will be considered actioned

## Application

[How to Create a Combined Business Lines Agreement Group](<reference_related_data.md#agreement-group>)

[How to Edit an Agreement Group](<reference.md#editing-reference-data>)

When saving changes in the Combined Business Lines Agreement Group form, the system will check the selections of which Agreements are included/excluded to evaluate whether they have met any of the restrictions outlined above.

### No Criteria Preventing Change

If all the Agreements that are being moved do not have any of the above conditions then the changes will be saved.

The system will show a warning that any associated incomplete margin calls and Interest Payments will be cancelled if continued.

Example: Incomplete Margin Calls will be cancelled for the following agreements: A Bank

Margin Calls for those Agreements listed are cancelled.

The same will occur for open interest payments.

This action is irreversible, so please proceed with caution.

**Note:** The respective margin and/or interest calculation tasks must be re-run to regenerate the margin calls and/or interest payments as they will be cancelled via the above action.

### Criteria Preventing Change

If any of the restrictions exists on any of the Agreements that are being moved, the system will prevent the whole change and throw an error detailing which Agreements in the selection are preventing the change.

**Note:** This means that if multiple Agreements are selected to be moved, and some have no restrictions, but some do, then the whole selection change cannot be saved.

Example: Combined Business Lines Agreement Group _Demo Group 2_ contains the following two Agreements:

  * _Demo Gross Int Segregate_
  * _Demo Gross Interest Distribute_



Both Agreements have waived margin calls for today's date. However, the waived call for _Demo Gross Int Segregate_ has a Cpty Call Amount of zero.

A user attempts to remove both these Agreements from OTC Agreement group _Demo Group 2_. When the user attempts to save the change, an error message will occur stating that the workflow will need to be completed before the removal of the group.
