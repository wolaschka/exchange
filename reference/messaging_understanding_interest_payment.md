
# Understanding Interest Payments

## Overview

Beginning in TLM® Collateral Management version 5.13, interest payment messages can now be sent to Acadia and updates to those messages will be used to transition interest payments in the workflow.

## What information is sent to Acadia?

When the user sends or resends an interest payment in TLM Collateral Management, the Interest Adapter will send a request to create an interest payment statement in Acadia based upon the published message, including:-

  * Agreement
  * Currency
  * Payment Amount
  * Collateral Margin Type
  * Period Start and End
  * Interest Disbursement Type
  * [Interest Calculation Type](<messaging_knownconsiderations.md>)
  * [Interest Benchmark](<messaging_knownconsiderations.md>)
  * [Value Date](<messaging_knownconsiderations.md>)



## What updates are actioned in TLM Collateral Management?

The Interest Adapter will poll Acadia for updates to the interest payments sent from TLM Collateral Management. Only the updates to the interest payments sent from TLM Collateral Management are handled by the Interest Adapter. TLM Collateral Management will make updates and transition for the following:-

  * [Agreed Amount](<messaging_knownconsiderations.md>)
  * [Settlement Date](<messaging_knownconsiderations.md>)



**Note:**

The Agreed Amount and Settlement Date information may have been updated due to operational tolerances within Acadia. Please refer to Acadia documentation for further information.

While TLM Collateral Management will transition the interest payment for approval, Acadia will consider the interest payment as finalized and completed. Rejecting the interest payment in TLM Collateral Management may require the user to reach out to their counterparty for further processing.

## What updates are actioned from Acadia?

The Interest Adapter handles the following business states from Acadia:

  * Finalized
  * Mismatched
  * Disputed



Any other Acadia business states (Unmatched, Amended) are not considered by the Interest Adapter. Users may need to update the interest payments in TLM Collateral Management and Acadia to realign the business states to continue automated processing.
