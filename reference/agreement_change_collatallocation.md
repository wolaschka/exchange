# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/agreement_change_collatallocation.html

# Changing Collateral Allocation Type on an OTC Agreement

## Background

The Collateral Allocation value on an OTC Agreement is a key field which denotes whether lock up and variation collateral requirements should be treated completely separately or not.

The setting of the field has functional implications on the following system areas:

  * Margin Calculations.
  * Margin Call Workflow.
  * Recalculation Processing.
  * Collateral Movement processing.
  * Inventory Management.
  * Substitutions.
  * Interest Accrual creation.
  * Interest Payment creation.
  * Interest Workflow Processing.
  * Settlement Instructions.
  * Settlement Processing.
  * Collateral Notices.



It is therefore **_strongly_** recommended that the correct value is set at the time the agreement is set up.

The key differences in how the system functionality differs between the default value of _AutoAllocate_ and setting the value to _Segregate Lock Up and Variation_ are outlined in the topic Working with OTC Agreements that Segregate Lock Up and Variation Margin.

**Note:** This topic should be read and understood fully before contemplating altering the value of this field.

In simplistic terms there are two possible scenarios that can occur in terms of changing this field:

  * Changing Collateral Allocation from _Auto Allocate_ to _Segregate Lock Up and Variation_.
  * Changing Collateral Allocation from _Segregate Lock Up and Variation_ to _Auto Allocate_.



There are pre-requisites, considerations and, in certain cases, limitations that can apply depending on the scenario.

These are outlined below.

## Changing Collateral Allocation Type

### Auto Allocate TO Segregate Lock Up and Variation

This is the most straightforward scenario for changing Collateral Allocation from Auto Allocate to Segregate Lock Up and Variation.

This should be done at the end of the business day when margin calls for the agreement in question will not be generated again until the next business day.

There are no restrictions.

  1. Locate and select the Agreement for editing.
  2. On the General tab, alter the drop-down value of the Collateral Allocation field to **Segregate LockUp and Variation**.

**Note:** The following warning prompt is displayed.

![collateral_allocation_type_change.jpg](Images/collateral_allocation_type_change.jpg)

  3. Click **Continue** to proceed, or click **Cancel** to rescind the change.

If **Continue** has been selected, the changes have not yet been committed to the Agreement.

  4. Press **Save** to commit the changes. At this point the whole agreement is validated.




**Note:** Considerations:

  * Existing Cash Collateral Interest terms for Variation will be applied identically to Lock Up.
  * Available for rehypothecation value will not be altered, so should be reviewed to ensure the value is now applicable.
  * Include Lock Up Accrual in Margin Calc flag is now enabled, but will not be set, so should be reviewed and edited accordingly.
  * Any Entity specific Lock Up SSI's will now be applied to the Agreement.
  * The Lock Up Tri-Party Collateral field is now enabled and can be set if required, so should be reviewed.



The next business day when the margin calculation is run for this agreement, separate margin requirement calls will be generated. See [Working with OTC Agreements that Segregate Lock Up and Variation Margin](<segregate_lockup_varmargin.md>) for more information.

### Segregate Lock Up and Variation TO Auto Allocate

This is a more complicated scenario due to potential positions existing at a Lock Up margin type level.

The following pre-requisites and restrictions apply.

**Any** of the following conditions _cannot_ exist when the change is applied:

  * An open margin call in any state for the Agreement.
  * A collateral position with a margin type of Lock up.
  * A collateral movement for margin type of Lock up, that is not in a settlement state of cancelled or failed.
  * An Interest accrual for margin type Lock up.
  * An Interest payment for margin type Lock up in any state.

  * Look Up Calc value cannot be Netted against variation.

  * Locate and select the Agreement for editing.

  * On the General tab, alter the drop-down value of the Collateral Allocation field to Segregate LockUp and Variation. 



**Note:** The following warning prompt is displayed:

![collateral_allocation_type_change2.jpg](Images/collateral_allocation_type_change2.jpg)

  1. Click **Continue** to proceed, or click **Cancel** to rescind the change.

If **Continue** has been selected, the changes have not yet been committed to the Agreement.

  2. Press **Save** to commit the changes. At this point the whole agreement is validated.




The system will validate that the above conditions have been met. If they are not, then the following error message will be displayed, and the changes are not committed.

![collateral_allocation_type_change3.jpg](Images/collateral_allocation_type_change3.jpg)

Note the following: 

  * Existing [Cash Collateral Interest terms](<agreements_interest.md#cash-collateral-interest-terms>) for Lock up will be removed.
  * [Available for rehypothecation](<basiceligibility.md#rehypoth>) value will be untouched. It should be reviewed to ensure it is now applicable. See Note 1) below.
  * [Include Lock Up Accrual in Margin Calc](<agreements_interest.md#including-accrued-interest-in-margin-calculations>) flag will be disabled, and any value that existed ignored.
  * Any [Entity specific SSI's for collateral type](<agreements_settleinstr.md#how-ssis-are-derived-on-collateral-movements>) Lock Up only will now be filtered out from the Agreement.
  * The [Lock Up Tri-Party Collateral](<triparty_custodian.md>) field will be disabled and any value that existed in it will be ignored.
  * The [Apply to Lock Up MTA and Rounding check boxes](<agreements_marginterms.md#lockupterms>) will be disabled, and their values cleared.



The next time the margin calculation is run for this agreement, a single margin call for a combined requirement will be generated. Separate margin calls for lock up and variation requirements will no longer be generated.

**Note:**

  1. The Available for rehypothecation value is not reset during this process, and needs to be reviewed to ensure it is applicable. If the value was set as Lock Up only, this will be invalid when the agreement is changed to auto allocate.
  2. The Available for rehypothecation flag must be changed to something other than Lock Up only before the agreement can be saved with a Collateral Allocation value of Auto Allocate. 
  3. The collateral allocation flag cannot be amended from segregate to auto allocate via the [agreement import](<import_agreements.md>). Due to the significance of the field, it can only be changed via the Agreement screen via the application.


