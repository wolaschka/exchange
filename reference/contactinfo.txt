# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/contactinfo.html

# Contact Information

Currently displays the contact name and the selected email preferences for all the reports available.

Contacts can be [created](<#adding-new-contacts>), [edited](<#editing-contacts>), [deleted](<#removing-or-deleting-contacts>) and add an [existing](<#adding-an-existing-contact>) to an agreement.

### Add New Contacts

Viewing the contacts on the Misc tab, select the **Edit** button.

Click on the **Add New** button that will appear after clicking on the **Edit** button on the agreement.

**Note:** Fields in red are required.

Section | Field | Comment  
---|---|---  
Contact Info | Name | Unique name for the contact.  
| Email Address(es) | Although not a mandatory field, this field is necessary in order to distribute various notices from the application. The system will validate that the email address has been entered in the correct format. Multiple email addresses can be entered for the contact. The email addresses can be separated with commas "," or semicolons ";"  
  
**Note:** When using separators for multiple emails, the user cannot mix and match commas and semicolons. If commas is selected, then use commas only and vice versa for semicolons.  
| Phone Number | Can only be 30 characters long and accepts numerics, characters and symbols.  
| Fax Number | Can only be 30 characters long and accepts numerics, characters and symbols.  
Receive Margin |  | If fields are selected in this section, the contact will receive notices when a Margin Call Notice is sent to the Counterparty as a result of being transitioned through the Workflow. If more than one notice is selected, they will be sent through on the same email in a zipped format.  
| Margin Call Notice | The Margin Call Notice can be sent to the contact by selecting the checkbox. Margin Call Notices are emailed automatically when Demand Notices are advanced through the Workflow.  
| Include Exposure Statement | To include the Exposure Statement in an email with the Margin Notice, the Margin Call Notice must be selected to enable the checkbox for the Exposure Statement.  
| Include Position Statement | To include the Position Statement in an email with the Margin Notice, the Margin Call Notice must be selected to enable the checkbox for the Position Statement.  
| Custom Statement | To include the Custom Statement in the email with the Margin Call Notice, the Margin Call Notice must be selected in order to choose from the dropdown box to select a custom statement.  
Other Notices |  | This section allows the user to specify whether the contact(s) should receive notices that pertain to collateral movements entered on Margin Calls.  
| Collateral Confirmation Notice | When selected, the contact will receive a Collateral Movement Confirmation Notice when Collateral Movements are approved in the Demand and Antic Demand Workflow.  
  
If the contact should receive an Insufficient Collateral Notice when requested via the Demand Workflow, then select the Insufficient Collateral Notice check box.  
| Insufficient Collateral Notice | When selected, the contact will receive an Insufficient Collateral Notice when requested in the Demand Workflow.  
| Substitution Notice | When selected, the contact will receive a Substitution notice when a collateral movement has been set up to be substituted.  
Receive Statements |  | This section govern whether a contact receives various other Notices.  
| Exposure Statements | When selected, the contact will receive a one off Exposure Statement when a Collateral Position statement is manually requested via the Margin Call Workflow.  
| Position Statement | When selected, the contact will receive a one off Collateral Position Statement when a Collateral Position statement is manually requested via the Margin Call Workflow.  
| Custom Statement | When selected, the contact will receive a one off Custom Statement when a Custom Statement is manually requested via the Margin Call Workflow.  
| Interest Variation | When selected, the contact will receive interest statements generated from Variation collateral balances.  
| Interest Lock Up | When selected, the contact will receive interest statements generated from Lock Up collateral balances.  
| Interest Distribution Variation | When selected, the contact will receive an Interest Distribution Confirmation Notice generated from Variation Interest Distribution Payments when approved in the Interest Distribution Workflow.  
| Interest Distribution Lock Up | When selected, the contact will receive an Interest Distribution Confirmation Notice generated from Lock Up Interest Distribution Payments when approved in the Interest Distribution Workflow.  
Associated Agreements | Agreements | To assign the contact to other existing agreements with the same Counterparty, click on the dropdown and select an agreement(s).  
  
### Add an Existing Contact

Contacts can be associated to a specific agreement from other agreements. The list of available contacts is restricted to the agreements that have the same counterparty.

**Procedure:**

  * When in the agreement screen, select the **Misc** tab and expand on **Contact Information**. 
  * Click on the **Edit** button then the **Add Existing** button will become available.
  * Click the **Add Existing** button and a popup screen will appear with two fields, Filter by Agreement and Available Contacts.
  * The _Filter by Agreement_ drop-down box shows a list of the agreements with the same Counterparty that is defined as the Counterparty for the agreement being modified.
    * The choices are to leave field blank, which means **All** agreements, or to select the drop down which is a list of specific agreement(s) that also has the same counterparty. 
  * Once the _Filter by Agreement_ selection is made, the associated contacts with the agreements selected will appear in the Available Contacts list.
    * Select the contact(s) that need to be associated with the agreement that is being modified.
  * Click the **Save** button to save the changes.



### Edit Contacts

**Procedure**

  * Click on the **Edit** ![edit_icon.jpg](Images/edit_icon.jpg) icon next to the contact that needs to be modified.
  * Make the necessary changes.
  * Click the **Save** button to commit the changes.



### Remove or Delete Contacts

**Procedure**

The remove or delete a contact from an agreement, select the black icon with the white stripe next the agreement that needs to be removed or deleted.

The user will be prompted with a popup screen with three options to choose from:

  1. Remove the contact just from the current agreement
  2. Remove the contact from the current agreement and one or more other agreements where it is also being used.
  3. Delete the contact from the system completely. This will remove the contact from all the associated agreements.



**Note:** If option 1 or option 2 is chosen, the contact will remain in the system. The user will be unable to edit it.
