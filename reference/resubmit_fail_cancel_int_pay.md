# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/resubmit_fail_cancel_int_pay.html

# Identifying and Resubmitting Interest Payments with Failed or Cancelled Interest Payments

## Overview

The system allows users to cancel or fail Interest Movements that have been generated on Interest Payments.

When an Interest Movement is either failed or cancelled, the corresponding Interest Payment, which originally generated the Interest Movement, is updated to a Sent Status and moved back to one of the below queues, depending on whether the payment was for an Agreement that is subject to [interest workflow](<interest_workflow.md>).

If the Interest Payment is standard and not grouped, it is further evaluated for distribution preference.

The actual workflow state that the Interest Payment items are moved back to depends on whether it is grouped or not.

Distribution and Roll In Interest will be sent back to _Sent - to be Agreed_ state and a Grouped Interest will be sent back to the _Sent_ workflow state.

## Identifying Cancelled or Failed Movements

Typically, Interest Payments are advanced into the Sent - to be Agreed workflow state from the initial Interest Workflow states (Due to Prin - to be Sent / Due to Cpty - to be Sent)

However, Interest Payments can be moved back into the Sent - to be Agreed state if the underlying Interest Movement for the payment is cancelled or failed.

When an Interest Movement is failed or cancelled, ![reprocess_icon.jpg](/Images/reprocess_icon.jpg)will be displayed in the Status field of the grid, which represents that the **Status for the Interest Payment is Reprocessed**.

Additionally, by clicking on an individual Interest Payment in the grid, the read only report is displayed. Within the **Movement Information** section of the read only report, the actual Interest Movement that was generated is shown. Under that **Status** field it will have **Failed** or **Cancelled**

When the Interest Movement is failed or cancelled and the Interest Payment is moved back to the Sent - to be Agreed workflow state, the Agreed Amount and Settlement Date that were entered are no longer held on the Interest Payment.

The Agreed Amount and Settlement date will need to be re-entered before the Interest Payment can be submitted for approval again.

If the originally entered values are required, these are viewable in the read only report (as per above) by referring to Notional and Settlement Date in the Interest Movement Details section of the read only report.

## Correcting Interest Payments

If the values were incorrectly entered originally on the Interest Payment or they are different to what was actually settled, then the movement will need to be cancelled or failed to correct it.

Depending on what was wrong with the original Interest Payment, the following corrective action(s) may be required.

  1. An underlying Interest Parameter (e.g. [Spread, Index](<agreements_interest.md#cash-collateral-interest-terms>), [Period End Date](<agreements_interest.md#define-interest-period-end-and-frequency>), [Distribution Preference](<agreements_interest.md#distribution-preference>), etc.) may be incorrect.
  2. The [Agreed Amount and/or Settlement date](<interest_workflow_actions.md#distribute>) may require altering.
  3. It may be necessary to [add historic](<movement_actions.md#adding-backdated-cash-collateral-movements>) / [fail](<movement_actions.md#fail-a-collateral-movement>) / [cancel](<movement_actions.md#cancel-a-movement>) specific cash collateral movement(s) during the period to correctly reflect the actual collateral movements that occurred during the period.
  4. It may be necessary to [manually adjust](<reference_related_data.md#interest-rate-index>) or [load Index Rates](<import_index_rates.md>) for the period.



In each case, it will be necessary to [recalculate and regenerate Interest Payments ](<interest_workflow_actions.md#recalculate-interest-payments>).

## Resubmitting the Corrected Interest Payment

Once necessary corrective action has been taken it is necessary to re-enter the settlement date and agreed amount, which will amend the Interest Movement with the newly entered details and update it to an To be Approved state.

_Correcting /Resubmitting Grouped Interest payments_

For Grouped Interest Payments, it is possible to upload this information or manually enter it

Once recorded, the payment can then be resubmitted for approval

_For standard Interest Payments_

The Agreed amount and settlement date need to be re-entered on the payment.

The Interest Payment together with Interest Movement can then be re-submitted for managerial approval as per any standard Interest Payment. The process for doing this is outlined in detail here.

Workflow | Distribution Preference | Direction | State Moved To  
---|---|---|---  
Standard | Distribution | Due to Prin | Due to Prin - to be Sent  
Standard | Distribution | Due to Counterparty | Due to Cpty - to be Sent  
Standard | Roll In | Due to Prin | Due to Prin - to be Sent  
Standard | Roll In | Due to Counterparty | Due to Cpty - to be Sent  
Grouped | Any |  | Due to be Sent
