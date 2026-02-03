
# Standard Statements

Within the margin call workflow, the following statements can be sent or viewed from any state.

## Exposure Statement

Once the Margin Calculation and Margin Calculation Analysis tasks have completed, the exposure trades that have been used in the margin calculation are stored against the Margin Calculation Results.

Exposure Trades can be viewed or sent to the counterparty from the workflow. 

### Sending Exposure Statements

If the exposure statement is being sent, then a contact must exist on the agreement. Exposure statements are sent via email to the contacts defined on the agreement and will be sent from the email address that is defined on the agreement group.

An exposure statement formatted for Microsoft™ Excel spreadsheet software will be sent as an email attachment to all contacts on the agreement who have been defined as eligible to receive one off exposure statements.

The email message will be titled Exposure Statement < Principal > \- < Agreement Name > \- COB< YYYYMMDD> and come from the [email address defined in the Agreement Responsibility Group](<reference_related_data.md#agreement-responsibility-group>) for this Agreement.

The Excel attachment will be named Exposure Statement  \-  \- COB< YYYYMMDD>.xls.

Please see [File Sizes and Exposure Statements](<#file-sizes-and-exposure-statements>) for additional information on sending large files.

Validation is performed when the **Send Exposure Statement** is selected.

  * The exposure statement to a counterparty will not be sent if no contacts are defined on the agreement. The user will receive a message stating "No contacts on the agreement "ABC Example" are set to receive Exposure Statements".

    * To remedy the situation, set up contacts with email address on the agreement or assign existing contacts to the agreement and repeat the process.

**Note:** If at least one of the contacts on the agreement has a valid email address, then the exposure statement will be sent to the valid email address and no error message will be displayed.

  * If there are no exposure trades saved against the margin call either because there are no trades for the agreement or the Margin Calculation Analysis task has not been run, then the user will receive a message stating "A statement cannot be generated if there are no exposure trades for this margin call or if the analysis has not been run for this margin call.




### Viewing Exposure Statements

**Procedure**

  1. To view the exposure statement, click on the **More** button and select **View Exposure Statement**.
  2. An exposure statement formatted for Microsoft™ Excel spreadsheet software will generate and appear at the bottom of the screen.
  3. The user can then click on it and open it up to view the statement.



![exposure_statement.jpg](Images/exposure_statement.jpg)

### File Sizes and Exposure Statements

It is possible to send Exposure Statements to Counterparties from within TLM® Collateral Management.

The Exposure Statements are created as Microsoft™ Excel spreadsheet software Files and emailed. However, there is a potential that the resultant Excel files may larger than the users Company's email servers will permit, particularly for larger trade portfolios.

TLM Collateral provides configuration settings to circumvent such mail size limits. Details of how to configure this is outlined in the "TLM Collateral Version 5 Installation guide".

Although these configurations will most likely be defined by the system administrator, it is important to understand how Exposure Statements are treated, particularly if the file size exceeds a defined limit.

  * If a size limit for the mail server has been defined and the created file is below that limit, it will be sent as an single Excel file.
  * If the file size is above this limit, it will be compressed to a zip file and if now below the defined limit, it will be sent as a single zipped file.
  * If, once compressed, the zipped file is still above the defined limit, then the zipped file will be broken up into multiple parts, equal to, or below, the mail size limit and transmitted in multiple emails.
  * The recipients of multiple part emails will be notified in the email subject header of multiple deliveries, as the subject line will state 1 of X. (where X = the last part number)
  * The first file of any multiple file delivery will have an extension of .zip, with subsequent parts being labeled .zo2, z03 etc.
  * The recipients of the email can re-assemble the file by saving all component parts to a common directory and then opening the first .zip file with Winzip or a similar archiving utility.



## Position Statement

The collateral positions that were used in the margin calculation can be sent from the call to the counterparty.

There are three pre-requisites for this:

  1. A contact (with a valid email address) must be defined as eligible to receive position statements on the Agreement that has the Margin Call.
  2. The contact must be configured as able to receive Position Statements.
  3. There must be Collateral Positions existing on the Margin Call at the time the Position Statement is requested to be sent.



A statement in Microsoft™ Excel spreadsheet software format will be emailed to those contacts on the agreement who are configured to receive Collateral Position Statements.

The email header reads Collateral Positions < Principal> < Counterparty> COB YYYYMMDD.xls where COBYYYMMDD equals the close of business day that the Margin Call is calculated for.

The Collateral Position statement contains Settled Positions and all In Transit state Collateral Movements for the selected Agreement, separated by Margin Type.

### Send Position Statement

  1. To send the position statement, click on the **More** button and select **Send Position Statement**.

  2. A statement in Microsoft™ Excel spreadsheet software format will be emailed to those [contacts on the agreement who are configured to receive Collateral Position Statements](<contactinfo.md#adding-new-contacts>).




### Position Statement Example

![Collateral_Position_Statement_example.jpg](Images/Collateral_Position_Statement_example.jpg)

As outlined above in pre-requisites, certain validations occur when the Collateral Position Statement is requested to be sent.

  * If there are no contacts defined on the Agreement or the contacts defined on the agreement are not configured as being eligible to receive position statements, the user receive a message stating "No contacts on the agreement "ABC Example" are set to receive Position Statements".

    * To fix the issue, add or configure contacts with eligibility to receive position statements.
  * If there are no collateral positions on the Agreement, then the user will receive this message, "A statement cannot be generated if there are no positions for this margin call" when the user attempts to send the Position Statement.

    * To fix the issue, check the status of the movements. Only movements in a state of In Transit and settled position are included. If neither of these exist, the error is valid.



## Margin Call Notice

The user can view the call notice that is sent to the counterparty.

The naming convention for the Margin Call Notice is <_Intraday_ >Margin Notice<_Margin Type_ ><_Call Type_ ><_Agreement Name_ > where:

_Intraday_ is populated with "Intraday" only when the Margin Call is an Intraday Margin Call. If the Margin Call is not an Intraday margin call this value is omitted.

_Margin Type_ = Variation, or Lock Up

_Call Type_ = Demand, Anticipated Demand, or No Action

_Close of Business Date_ is defined as prior business date to Today, where "business day" is defined as Monday to Friday, and "Today" is determined using the current Date in the Principal Managing Location of the Agreement. The Close of Business Date is now subject to adjustment by Holiday Calendars.

The content details on the Margin Call Notice vary, depending on Collateral Allocation type defined on the Agreement, and whether the margin call is Intraday or not.

### Viewing Margin Call Notice

**Procedure**

  1. To view the call notice, click on the **More** button and select **View Call Notice**.

  2. The a pdf will generate and appear at the bottom of the screen.

  3. The user can then click on it and open it up to view the statement.




### Margin Call Notice Examples

Example for an Agreement with Collateral Allocation Type of Auto Allocate and no lock up exposure requirements.

![i_StdMarginNotice_1_rot.jpg](Images/i_StdMarginNotice_1_rot.jpg)

Example for an Agreement with Collateral Allocation Type of Segregate Lock Up and Variation.

![i_SegregateMarginNotice_1_rot.jpg](Images/i_SegregateMarginNotice_1_rot.jpg)

Example for an Agreement with Collateral Allocation Type of Lock Up Only.

![MarginCallNotice_lockUpOnly.jpg](Images/MarginCallNotice_lockUpOnly.jpg)

Example for an Agreement with Collateral Allocation Type of Auto Allocate, and has Lock Up exposure requirements.

![i_AutoAllocateMarginCall_1_rot.jpg](Images/i_AutoAllocateMarginCall_1_rot.jpg)

Example for an Agreement with Collateral Allocation Type of Auto Allocate and no lock up exposure requirements.

![i_StdMarginNotice_1_rot.jpg](Images/i_StdMarginNotice_1_rot.jpg)

## Confirmation Notice

Within the Margin Call Workflow, notices are sent to Counterparties confirming the collateral movements that have been in respect of a Margin Call.

These notices are called Collateral Movement Confirmation Notices and are sent automatically when the collateral movements attached to Margin Calls are approved.

### Confirmation Notice Example

The Collateral Movement Confirmation Notice opens in the user's default PDF viewer:

![CollateralMovementConfirmationNotice.jpg](Images/CollateralMovementConfirmationNotice.jpg)

## Custom Statement

To send a custom statement from the margin call, there are a few prerequisites.

  * Custom Statement Reference Data item must exist.
  * A contact (with a valid email address) must be defined as eligible to receive a custom statement on the Agreement that has the Margin Call.



Those contacts on the agreement that are configured to receive custom statements will receive the particular custom statement that they are configured to receive in the format that has been defined on the custom statement reference data item.

**Note:** Only one custom statement can be associated to a single contact. However, differing contacts can be configured to receive differing custom statements; therefore selecting send will result in each contact receiving the custom statement that they are configured to receive.

The email header for Custom Statements reads < Name of Custom Statement > < Principal> < Agreement Name> COB YYYYMMDD .xls where COBYYYMMDD equals the close of business day that the Margin Call is calculated for:

  * Agreement Name is the name of the Agreement with the Margin Result

  * Principal is the Principal to the Agreement

  * Name of Custom Statement is the Name entered when the Custom Statement Reference Data item was created




The data contents and format of the custom statement vary according to the Custom Statement Type of the Custom Statement that the contact is configured to receive.

More information on Custom Statement is located [here](<custom_statement.md>).

### Custom Statement Example

Example of Custom Statement Type "Report One OTC Exposure Statement"

![CustomStatementExample.jpg](Images/CustomStatementExample.jpg)
