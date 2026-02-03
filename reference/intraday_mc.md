# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/intraday_mc.html

# Intraday Margin Calculations

## Background

Historically, Collateral Practitioners have made a single margin call per day for an OTC Agreement, with the associated calculation based upon the prior close of business day's values.

However, this single daily calculation / call model per Agreement is seen as increasingly inadequate as a form of risk mitigation.

For example:

  * Clearing Houses, (like OTC Collateral Practitioners), calculate margin requirements based on the prior day's close values. These requirements are known as Start of Day Margin Calls.
  * However, Clearing Houses can request additional funds during the working day to cover exposure movements and/or Initial Margin requirements on newly added transactions since the Start of Day Margin Call.
  * These additional margin demands are known as Intraday Calls and can be made several times per day.
  * OTC Practitioners are increasingly seeking to emulate this behavior to mitigate these same "intraday" risk factors.



TLM® Collateral Management provides functionality surrounding Intraday Margin Calculations

Specifically, to:

  1. Define whether an Agreement will be subject to Intraday Margin Calculations.
  2. Run Margin Calculations that recognize where Start of Day Margin Calls exist.
  3. Generate Intraday Margin Calls.
  4. Identify Intraday Margin Calls as such within the workflow.
  5. Denote Intraday Calls on Margin Call Notices, Margin Call Summary Sheet and Margin Summary Notices.



Conceptually, it is important to appreciate that in TLM Collateral, Intraday calls seen as slightly different from Start of day Margin Calls.

Intraday calls (of which there can be several) **cannot** replace Start of Day calls. They can only **increment** Start of Day Calls.

However, Intraday calls can **increment** or **replace** intraday calls previously generated for the same calculation date.

Whether a new intraday call replaces or increments an existing intraday call is determined by the current workflow state of the existing intraday call. If the intraday call has been agreed to, a subsequent intraday call will increment it. If an intraday call has not been agreed to, a subsequently generated intraday call will replace it.

Notwithstanding the above, Intraday Calls are processed through the Standard and Grouped Margin Call workflows identically to any other margin call.

**Note:** The use of Intraday functionality for Repo and Securities Lending will require an additional license - please check with a SmartStream representative for any questions related to license entitlement. 

## Eligibility for Intraday Margin Calls

Intraday Margin Calls can only be generated for an Agreement that is of the OTC Business Line and has defined the Intraday Calcs field value enabled. They can be generate for both the standard and grouped margin call workflows.

## Understanding Start of Day vs Intraday Calls

_Start of Day Calls_

When Margin Calculations are first run on a calculation day for Intraday Eligible Agreements, Margin Call Requirements are generated. These are known as **Start of Day Margin Calls**.

Start of Day Margin Calls can be replaced when the Margin calculation is run again for a day. However, this occurs only if the following conditions are both met:

  1. One or more fields of key data has changed between the newly run Margin Calculation results compared to the existing Margin Calculation results.

and

  2. The Start of day Margin Call has not yet been Agreed.(or further processed)




_Intraday Calls_

In the above scenario, should the Start of Day Margin Call have been Agreed, or further progressed through the Standard Workflow or Grouped Margin Call Workflow , then an Intraday Margin Call is created.

Once an Intraday Call has been created, subsequent Margin Calculations (assuming the key data has changed ) can either

  1. **Replace** the Intraday Call, if it has not yet been agreed with a replacement Intraday Call.
  2. **Increment** the existing Intraday Call, if it has been agreed to or further progressed through the Workflow, with an additional Intraday Call.



Conceptually, therefore for an Agreement for a single calculation date:

Only a one set of Start of day Margin Calls can exist. These can be replaced only by Start of day Calls.

An Intraday Call can only replace an Intraday Call that has not been Agreed.

An Intraday Call can increment an Agreed Start of day Call, or increment an existing Agreed Intraday Call

Therefore, there can be numerous Intraday Calls.

Replacement calls are identifiable in the application, as are intraday calls. Please note that a replacement call can also be an intraday call.

Intraday Margin Calculations use standard Agreement Margin Term parameters, with the exception that instead of applying MTA values, they apply the value in the Intraday Tolerance Amount field during the calculation.

Intraday Calculation Process

For Intraday Eligible Agreements, when the Margin Calculation task is run for the first time on a calculation date, Start Of Day Margin Calls are created and placed in the either the Standard Demand or Antic Demands Unsent Queue or the Grouped Margin Calls Workflow - Unsent Calls Queue depending on how the agreement is set up.

Should the Margin Calculation task be run subsequent times on the same calculation date, otherwise noted as prior, for Intraday Eligible Agreements, the following process occurs.
