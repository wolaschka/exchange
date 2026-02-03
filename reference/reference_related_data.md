# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/reference_related_data.html

# Related Data

### Agreement Responsibility Group

Agreement Responsibility Groups are used to assign a user responsibility for particular Agreements - in essence to show which Agreements a user should focus on.

Agreement Responsibility Groups work in conjunction with [Agreement Scopes](<#agreement-scopes>), that is a user's Agreement Scope will be applied to the Agreement Responsibility groups that the user is a member of.

Please see [Understanding Agreement Scopes and Agreement Responsibility Groups](<understand_scope_responsibility.md>) for more details.

Agreement Responsibility Groups are used to specify which Agreements a user can see in certain sections of the system.

Currently, agreement responsibility group filtering is implemented in the following screens:

  * Margin Calls and Workflow screens

  * Movements Screen

  * Substitutions

  * Interest Workflow

  * Inventory Management




A user needs to be assigned to an Agreement Responsibility Group, in order to see the agreements that are associated with the Agreement Responsibility Group. A user can be assigned to more than one Agreement Responsibility Group, and will therefore see the superset of all agreements captured under those Agreement Responsibility Groups.

Agreement Responsibility Groups are composed of several criteria:

  * Business Line

  * Principal Managing Locations

  * Counterparty Organization Type

  * Principal Entities

  * Counterparty Entities

  * Agreements selected by use of specific start letters, or range of letters

  * Specifically Included Agreements

  * Specifically Excluded Agreements




Once the criteria for establishing the contents of an Agreement Responsibility Group are made, users are then assigned to the Group.

Agreement Responsibility Groups are created via the Reference Data option in the Navigation Pane.

They can be found under the Data Type:Agreements, Related Data:Agreement Responsibility.

**Procedure:**

Select Reference from the navigation pane.

Click on the Agreements drop down and select Agreement Responsibility.

Click on the **Create Agreement Responsibility** button.

A form will open up and will contain 3 tabs. Two of the tabs will require fields data before the Save button will appear.

**Note:** Fields in red are required.

Tab | Fields | Information  
---|---|---  
General | Name  
  
Email Address  
  
  
  
  
  
Description | The name for the Agreement Responsibility Group. The name must be unique.  
Enter an Email Address that will be as the sending "from address" for notices that will be sent for agreements that fall under this Agreement Responsibility Group. It is recommended that the email address entered here is accessible by any users assigned to this Agreement Responsibility Group. See [Understanding Agreement Responsibility Group Email Address](<understand_scope_responsibility.md#understanding-agreement-responsibility-group-email-addresses>).  
Enter a meaningful description for the Agreement Responsibility Group.  
Criteria  
  
*At least one Agreement Responsibility Criteria is required. | Business Lines  
  
  
  
  
Principal Managing Locations  
  
Counterparty Organization Types  
  
Principals  
  
  
Counterparties  
  
Agreement Name starts with  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
Specific Agreement Assignment (Include/Exclude) | Select the Business line(s) that should be included. Note: (Only Business Lines for OTC, Repo and Securities Lending are selectable. If the user wishes this Agreement Responsibility to cover a Client Clearing or Central Clearing Agreement, the user should use other criteria)  
  
Select Principal Managing Location(s) as a criteria for Agreement inclusion.  
  
Select Agreements where the Counterparty Entity is associated to a specific Organization Type.  
  
Use Principal Entity as a selection criteria for Agreements to include in the Agreement Group.  
  
Use Counterparty Entity as a selection criteria.   
  
Agreements can be included based on the start letters of their name.  
There are three potential choices:   
1.Include based on the name starting with a particular alpha numeric character or characters - Enter the specific characters that the name starts with in the first box.  
Example: select all those agreements that start with Ba, enter Ba in the first box  
2\. Include those agreement names that fall within a range of alphanumeric characters - Enter the character for the start of the range in the first field, select Through from the dropdown selector in the middle field, and enter the character for the end of the range in the third box.  
Example: select all agreements that start between Ca and Yo, enter Ca in the first field, select Through from the dropdown, and enter Yo in the final field.  
3\. Include agreements where the agreement name begins with one specific character or another.  
Example: Include agreements that begin with A or D, enter A in the first field, select Or from the dropdown box and enter D in the end field.  
  
Allows the user to define particular agreements to either specifically include, or specifically exclude from the Agreement Group.  
**Note:** The Agreements available are filtered according to the user's Agreement Scope. See [Understanding Agreement Scopes and Agreement Responsibility Groups](<understand_scope_responsibility.md>)  
User Assignment | Users | Assign particular users to the agreement responsibility group that have just been created and defined. Users who are assigned to this agreement responsibility will be able to see the agreements associated to this group in the Margin Calls and Movements screens  
  
Until a user is assigned to an agreement group, the user will not be able to see any Margin Calculation Results in the Margin Calls Workflow.

**Note:** A user who is not associated to any agreement groups cannot create a user group that includes specific agreements for inclusion or exclusion, (because they don't yet have permission to see those agreements as they have no agreement group membership yet).

Additionally as outlined above, those agreements available for selection in the include/exclude boxes are already pre-filtered by Agreement Scope.

It is suggested to use the following model for setting up agreement groups:

Create an Agreement Group called All [Security User] that has entitlements to see all agreements, and has an Agreement Scope that is not restricted.

Associate a security user to this group, i.e. not a Collateral Rep.

### Agreement Scope

An Agreement Scope is a set of criteria that defines what data a user can potentially see within the system.

Currently Agreement Scope definition is limited to Principal criteria only, and used as a mechanism of determining which Agreements a user can (and can't) see in the system.

An Agreement Scope is associated to a user via the user reference data object.

Agreement Scope filters Agreements into those that a user can see "In scope", and those that a user can't see "Out of scope"

Agreement Scope is applied in the Application in the following areas:

  * [Agreements](<agreements.md#viewing-agreements>) (Exclusively)

  * [Margin Workflow](<margin_calls_overview.md#viewing-the-margin-calls>)

  * [Interest Workflow](<interest.md#interest-workflow>)

  * [Substitution Workflow](<substitutions.md#substitution-workflow>)

  * [Movements](<movements.md#movements>) (Exclusively)

  * Exposure Trades

  * Collateral Positions

  * Inventory Management.




Please note that for some of the above areas Agreement Responsibility filtering is applied also. See [here](<understand_scope_responsibility.md#agreement-scope-and-responsibility-areas-applied>) for a matrix of how filtering is applied in the system.

**Example Usage**

By way of an illustration, consider the following set up:

TLM® Bank Inc. has two Principal trading Entities:

TLM Bank London Ltd

and

TLM Bank Tokyo.

Employees of TLM Bank London Ltd are not permitted to see any Agreements or Agreement related data for TLM Bank Tokyo, and vice versa.

Agreement Scopes would be used to segregate the data:

An Agreement scope "Tokyo" would be created which included Principal "TLM Bank Tokyo"

A second Agreement scope "London" would be created which included Principal "TLM Bank London Ltd"

Employees of TLM Bank Tokyo would be associated to Agreement Scope Tokyo.

Employees of TLM Bank London Ltd would be associated to Agreement Scope London.

### Agreement Types

**Procedure:**

Select **Reference** from the navigation pane. 

Click on the **Agreements** drop down and select **Agreement Type**.

**To Add a new group:**  
* Click on the **Create Agreement Type** button located on the top right side of the screen.

**Note:** Fields in red are required.

Fields | Information  
---|---  
Name | Required unique name or label  
Business Line | Select an available business line:  
  
OTC  
Repo  
Securities Lending  
Central Clearing  
Client Clearing  
  
The association of the Agreement Type to Business Line determines whether the new Agreement Type will be available for selection when the new agreement is created.  
Jurisdiction | Specify the territory as to where the Agreement Type has authority  
[Trade Types](<#trade-types>) | Select which Trade Types are associated with the Agreement Type. It is then possible to select which Trade Types are associated with the Agreement Type. This is used to filter down the Trade Types that are available for selection when creating a new agreement.  
Description | Enter a description or information  
  
## Alias Groups

Aliases are used throughout TLM® View Collateral in two main ways:

**Procedure:**

Select **Reference** from the navigation pane. 

Click on the **Aliases** drop down and select **Alias Groups**.

**To Add a new group:**

Click on the **Create Alias Group** button located on the top right side of the screen.

  1. To define the keys by which values in TLM Collateral Management are identified in other systems. These aliases are used primarily for matching of data items from external systems to TLM Collateral data items.

For example, a Counterparty known in the collateral system as 'ABC Bank Ltd' is the same entity which is referenced in one of the trading systems as ABC. ABC would therefore be an alias for ABC Bank Ltd.

It is possible to have a group of systems that share the same set of aliases.

For example, all of the OTC trading systems (Interest Rates, FX, Equity etc.) might use one set of Counterparty identifiers while a Repo trade system might use a separate set of Counterparty identifiers. 

There are four Alias Types currently available in the system:

     * Agreement
     * Entity
     * Trade Type
     * Branch
     * Entity Groups
  2. When an Alias Group is set as default, any aliases created on an Agreement for this group, can be seen on Margin Call Summary Notices.




**To Edit a group:**

Click on the **Edit** icon next to the group that needs to be modified, make the changes and click the **Save** button to save the changes.

## Agreement Group

Agreement groups provide a mechanism for grouping together Margin Calls.

Combined Business Line Agreement Groups are used to group together Collateral Agreements so that bulk processing of 

  * Margin Calls
  * Interest Payments



for Agreements within the OTC and Client Clearing Business line can be facilitated within TLM® Collateral Management

For example, a Fund Manager may be responsible for managing the collateral requirements across a number of Funds (typically a separate Collateral Agreement would be in place for each Fund), and wishes to bulk process Margin Calls and Interest Payments.

Agreement Groups provide a mechanism of grouping together these "Funds" for bulk processing.

Note: Only OTC Agreements and Client Clearing Agreements can be added to a Combined Business Line Agreement Group.

To view the Agreement Groups, the user will be presented with the following fields when selected.

Field | Description  
---|---  
Name | Unique name for the Agreement Group.  
Description | Free from description of the Agreement Group  
Margin Contact Name | The contact person for Margin Call notifications for the Group.  
  
This is the name of the person that will receive Margin Call Summary Sheets for this group via the Grouped Calls Workflow.  
Margin Contact Email | The email address for the Margin Contact Name If there are numerous email addresses, they are shown separated by commas.  
Collateral Contact Name |   
Collateral Contact Email |   
Interest Contact Name | The contact person for Interest Payment notifications for the Group. This is the name of the person that will receive Interest Payment Summary sheet for this group via the Grouped Interest Workflow  
Interest Contact Email | The email address for the Interest Contact Name If there are numerous email addresses, they are shown separated by commas  
Sender Email | The from email address that is used to send out information.  
Agreement Group Type | The type of the Agreement Group. Two Types of Agreement Groups can be created:  
  
[Combined Business Lines](<agreement_groups.md#combined-business-line-agreement-group>) \- can contain Agreements from the Client Clearing and OTC Business Lines  
  
[Central Clearing](<agreement_groups.md#central-clearing-agreement-group>) \- can only contain Agreements from the Central Clearing Business Lines  
Upload Alias Group |   
  
## Currencies and FX Rates

**Procedure**

Select **Reference** from the navigation pane. 

Click on the **Agreements** drop down and select **Currency**.

**To Add a new group:**  
Click on the Create Currency button located in the top right portion of the screen.

**To Edit a group:**  
* Click on the **Edit** icon next to the group that needs to be modified, make the changes and click the **Save** button to save the changes.

**Note:** Fields in red are required.

Section | Field | Information  
---|---|---  
Currency | Currency | Enter the 3 figure ISO code for currency  
Description | Description | Enter a meaningful description  
Alias | Alias | This field can be used to define an alternative name by which the FX rate will be known in an external system from which rates will be received.  
Example:  
The file used to import the rates might contain the currency and the base currency, " AUD USD".  
Import Tolerances | Min Amount  
Max Amount  
Percentage | It is then possible to specify tolerances against which the rates will be checked as they are imported. **Note:** When the currency is first set up these tolerances will be applied to the FX rate defined in Current Default FX Rate.  
Quote Convention | Quote Convention | Specify whether the currency is the Primary or Secondary currency in the exchange rate. The Primary currency is the base currency which has a constant value of 1 unit. The Secondary currency is the variable currency. ( 1 primary unit = X secondary units. )  
  
Example:  
Looking at an exchange rate between USD and EUR:  
1 USD = 0.7613 EUR  
1 EUR = 1.3136 USD  
  
If USD was set up as the Primary currency, the exchange rate for EUR would be imported as 0.7613 and defined as a Secondary currency.  
  
If EUR was set up as the Primary currency, the exchange rate for USD would be imported as 1.3136 and defined as a Secondary currency.  
  
New currencies are defaulted to be "Secondary".  
Current Default FX Rate | Source  
Rate  
Date | As FX rates for currencies are used throughout the system, an FX rate must be entered when the currency is first create. Once an FX rate has been manually added, it can no longer be edited from the application. Any subsequent amends to the rate must be done by FX feed imports. Other data however on the form can be subsequently edited.  
  
It is therefore highly recommended that as soon as a currency is created, import the FX rates for all FX rate sources in order that accurate rates are used.  
Interest Accruals | Decimal Places | Select Zero or Two for the number of decimals that Interest Accruals should be rounded.  
  
## Custom Statements

TLM® Collateral Management ships with the ability to produce several Custom Statement templates built into the application. These "templates" need to be created first as reference data objects where they can be configured to be in various output formats.

A report template has three sections that can be configured: **Header** , **Top Table** , **Bottom Table**

**Procedure**

Select Reference from the navigation pane.

Click on the Reports drop down and select Custom.

Click on the Create Custom Statement button located in the top right portion of the screen.

**Note:** Fields in red are required.

Field | Description  
---|---  
Name | Enter a unique name for the custom statement report template.  
Description | Enter a description if needed.  
Header Type | Three available choices:  
  
[Standard](<custom_statement.md#standard-header>)  
Blank  
[Custom Statement](<custom_statement.md#custom-statement-header>)  
Top Table | This is data that will appear after the Header, but before the bottom Table. It can be defined to contain Trade exposure or Collateral Information. Select the form and format of the data that will appear in the Top Table of the report. Select one template item from the following:  
  
[Custom Position Statement Writer](<custom_statement.md#custom-position-statement-writer-section>)  
[Report One OTC Exposures Statement Writer](<custom_statement.md#report-one-otc-exposures>)  
[Report Two OTC Exposures Statement Writer](<custom_statement.md#report-two-otc-exposures>)  
[Report Three OTC Exposures Statement Writer](<custom_statement.md#report-three-otc-exposures>)  
[Report Four OTC Exposures Statement Writer](<custom_statement.md#custom-exposures-four>)  
[Report Five OTC Exposure Statement Writer](<custom_statement.md#report-five-otc-exposures>)  
[Repo Exposure Trade Writer](<custom_statement.md#eepo-exposure>)  
Bottom Table | Select the from and format of the data that will appear in the Bottom Table of the report. The available choices are:  
  
(Blank)  
[Custom Position Statement Writer](<custom_statement.md#custom-position-statement-writer-section>)  
[Report One OTC Exposures Statement Writer](<custom_statement.md#report-one-otc-exposures>)  
[Report Two OTC Exposures Statement Writer](<custom_statement.md#report-two-otc-exposures>)  
[Report Three OTC Exposures Statement Writer](<custom_statement.md#report-three-otc-exposures>)  
[Report Four OTC Exposures Statement Writer](<custom_statement.md#custom-exposures-four>)  
[Report Five OTC Exposure Statement Writer](<custom_statement.md#report-five-otc-exposures>)  
[Repo Exposure Trade Writer](<custom_statement.md#repo-exposure>)  
Report Type | Determines the output format of the custom report. Available choices are the following:  
  
Excel  
PDF  
CSV  
  
**Note:** Custom Report Reference Data Items are audited in the standard manner.

## Dispute Category

To modify dispute category data, see [Add](<reference.md#add-reference-data>), [Edit](<reference.md#edit-reference-data>), or [Delete](<reference.md#delete-reference-data>) Reference Data.

**Edit the Order of Dispute Category**

  1. Select the **Edit Order** button. The _Edit Dispute Category Order_ dialog will appear with the current display order.

**Note:** This is the same as the numerical Order column in the Dispute Categories pane.

  2. Select the category that needs to be reordered.

  3. Click the up arrow to raise the display order for the highlighted category. Click the down arrow to lower the display order of the highlighted category.
  4. Click the **Ok** button to save the changes. The dialog closes and the new display order is recorded.

**Note:** The numerical value(s) in the Order column in the main Dispute Category pane reflects the update.




## Entity Groups

When defining Entities, the user can specify which Entity Group(s) are associated to the Entity.

**Procedure**

Select Reference from the navigation pane.

Click on the Entities drop down and select Entity Group.

Click on the Create Entity Group button located in the top right portion of the screen.

**Note:** Fields in red are required.

Field | Information  
---|---  
Name | Enter the required name.  
Applies to Concentration | See [Understanding Concentration using Entity Groups](<misc.md#understanding-concentration-using-entity-groups>)  
Applies to Wrong Way Risk | See [Understanding Wrong Way Risk using Entity Groups](<wrongwayrisk.md#understanding-wrong-way-risk-using-entity-groups>)  
Description | Enter a meaningful description  
  
## Extensions

TLM® Collateral Management provides the flexibility for users to create their own parameters on the following:

  * Agreement Object
  * Entities Object
  * Instruments Object
  * Instrument Type Object
  * OTC Exposure Trades
  * Repo Exposure Trades 



These parameters are termed "Extensions".

Extensions can be defined to contain the following data types:

  * **Alphanumeric Values** \- Can contain any character. (Can also be hyperlinks.)
  * **Numeric Values** \- Can contain only numeric characters.
  * **Date Values** \- Can contain only dates.
  * **Boolean** \- Can contain only True or False values.
  * **List** \- Allows the user to define a list of items. **Note:** The data type **List** is not defined in OTC and Repo Exposure Trades.



Once extensions have been created, values can be populated, either directly through the GUI, or via data imports.

**Note:** The system administrator must be informed if an Extension Reference Data has been added/changed and the TLM Collateral Reporting Layer is being used. Alterations will be need to take place for the Reporting Database and Universe.

Extensions are created in Reference Data and be can seen and updated through the appropriate screen as follows:

  * Agreements Screen in the Misc tab
  * Entities
  * Instruments
  * Instrument Types
  * OTC Exposure Trades
  * Repo Exposure Trades



**Procedure**

Select Reference from the navigation pane.

Select the Data Type for the extension that needs to be defined.

Click on the button of the **Type** of extension that needs to be created.

**Note:** Fields in red are required.

Type | Field | Description/Information | Not Available in these Related Areas  
---|---|---|---  
Alphanumeric | Extension Name  
  
Is Searchable  
  
  
Copy on New From  
  
  
Label Name  
  
  
Business Lines  
  
Lower Limit  
  
Upper Limit  
  
Default Data Field  
  
Is Hyperlink | Must be unique, cannot contain spaces and the maximum length permissible is 25 characters.  
  
  
Click the checkbox if the field can be used as criteria when searching for Agreements or Entities.  
  
  
Any value in this extension that is not the default value will be copied over to a new agreement when a user copies an agreement with the copy from function or Agreement Replication import. Should the check box be clear, when an Agreement is copied, irrespective of what value exists in the field on the agreement selected to copy, the new agreement will be populated with the default value.  
  
Enter a Label Name that will appear on the Extension field. It can contain spaces and the maximum length permissible is 25 characters. **Note:** When extensions are displayed on Agreements, they appear alphabetically based on Label Name.  
  
Check the relevant check boxes for those Business Lines that this Extension should apply to.  
  
The minimum length for the underlying data values. By default, the value is set as 1.   
  
The maximum length for the underlying data values. By default, the value is set as 250.  
  
Enter data that is to be a default value when the data object is created.  
  
  
By clicking this field, it will allow a hyper link to a file store or website to be entered in the Default Field value. |   
  
  
Instrument, Instrument Type, OTC, Repo  
  
Entities, Instrument, Instrument Type, OTC, Repo  
  
  
  
  
  
Entities, Instrument, Instrument Type, OTC, Repo  
Boolean | Extension Name  
  
Is Searchable  
  
  
Copy on New From  
  
Label Name  
  
  
Business Lines  
  
Default Data Field | Must be unique, cannot contain spaces and the maximum length permissible is 25 characters.  
  
Click the checkbox if the field can be used as criteria when searching for Agreements or Entities.  
  
  
Any value in this extension that is not the default value will be copied over to a new agreement when a user copies an agreement with the copy from function. Should the check box be clear, when an Agreement is copied, irrespective of what value exists in the field on the agreement selected to copy, the new agreement will be populated with the default value.  
  
Enter a Label Name that will appear on the Extension field. It can contain spaces and the maximum length permissible is 25 characters. Note: When extensions are displayed on Agreements, they appear alphabetically based on Label Name.  
  
Check the relevant check boxes for those Business Lines that this Extension should apply to.  
  
This field can be the following:  
**True:** specified by clicking the check box  
**False:** specified by clearing the check box  
  
  
|   
  
  
Instrument, Instrument Type, OTC, Repo  
  
Entities, Instrument, Instrument Type, OTC, Repo  
  
  
  
  
Entities, Instrument, Instrument Type, OTC, Repo  
Date | Extension Name  
  
Is Searchable  
  
  
Copy on New From  
  
Label Name  
  
  
Business Lines | Must be unique, cannot contain spaces and the maximum length permissible is 25 characters.  
  
  
Click the checkbox if the field can be used as criteria when searching for Agreements or Entities.  
  
  
Any value in this extension that is not the default value will be copied over to a new agreement when a user copies an agreement with the copy from function. Should the check box be clear, when an Agreement is copied, irrespective of what value exists in the field on the agreement selected to copy, the new agreement will be populated with the default value.  
  
Enter a Label Name that will appear on the Extension field. It can contain spaces and the maximum length permissible is 25 characters. Note: When extensions are displayed on Agreements, they appear alphabetically based on Label Name.  
  
Check the relevant check boxes for those Business Lines that this Extension should apply to. |   
  
  
Instrument, Instrument Type, OTC, Repo  
  
Entities, Instrument, Instrument Type, OTC, Repo  
  
  
  
  
Entities, Instrument, Instrument Type, OTC, Repo  
List | Extension Name  
  
Is Searchable  
  
  
Copy on New From  
  
  
Label Name  
  
  
Business Lines  
  
  
List Item | Must be unique, cannot contain spaces and the maximum length permissible is 25 characters.  
  
  
Click the checkbox if the field can be used as criteria when searching for Agreements or Entities.  
  
  
Any value in this list type extensions will be copied over to a new agreement when a user copies an agreement with the copy from function or Agreement Replication import. Should the check box be clear, when an Agreement is copied, irrespective of what value exists in the field on the agreement selected to copy, the new agreement will be populated with the default value.  
  
  
Enter a Label Name that will appear on the Extension field. It can contain spaces and the maximum length permissible is 25 characters. Note: When extensions are displayed on Agreements, they appear alphabetically based on Label Name.  
  
Check the relevant check boxes for those Business Lines that this Extension should apply to.  
  
  
All list value items should be defined as < 100 characters long and are treated as strings irrespective of their content. | Instrument, Instrument Type, OTC, Repo  
  
Instrument, Instrument Type, OTC, Repo  
  
Entities, Instrument, Instrument Type, OTC, Repo  
  
  
Instrument, Instrument Type, OTC, Repo  
  
Entities, Instrument, Instrument Type, OTC, Repo  
  
Instrument, Instrument Type, OTC, Repo  
Numeric | Extension Name  
  
Is Searchable  
  
  
Copy on New From  
  
  
Label Name  
  
  
Business Lines  
  
Minimum Value  
  
Maximum Value  
  
Digits After Decimal  
  
Default Data Field | Must be unique, cannot contain spaces and the maximum length permissible is 25 characters.  
  
  
Click the checkbox if the field can be used as criteria when searching for Agreements or Entities.  
  
  
Any value in this extension that is not the default value will be copied over to a new agreement when a user copies an agreement with the copy from function or Agreement Replication import. Should the check box be clear, when an Agreement is copied, irrespective of what value exists in the field on the agreement selected to copy, the new agreement will be populated with the default value.  
  
Enter a Label Name that will appear on the Extension field. It can contain spaces and the maximum length permissible is 25 characters. Note: When extensions are displayed on Agreements, they appear alphabetically based on Label Name.  
  
Check the relevant check boxes for those Business Lines that this Extension should apply to.  
  
The smallest numeric value that any data value can be.  
  
  
The largest numeric value that any data value can be.  
  
  
The number of levels of decimal precision that any numeric value will be stored to.  
  
  
Enter data that is to be a default value when the data object is created. |   
  
  
Instrument, Instrument Type, OTC, Repo  
  
Entities, Instrument, Instrument Type, OTC, Repo  
  
  
  
  
  
Entities, Instrument, Instrument Type, OTC, Repo  
  
## FX Rate Source

Agreements define what FX rate source they should use for calculation purposes.

**Procedure:**

Select **Reference** from the navigation pane. 

Click on the **Instruments** drop down and select **FX Rate Source**.

**To Add a new group:**  
Click on the Create FX Rate Source button located in the top right portion of the screen.

  * Enter a unique required name in the Name field.
  * Enter a meaningful description in the Description field if needed.
  * Click the **Default** checkbox if the FX Rate Source is the source to be used when entering a new Agreement. The source can be modified within the Agreement.



**Note:** The first FX Rate source that is entered becomes the default FX rate source. If more than one FX Rate source reference data item has been created, the user can specify which source will be deemed the default. Like any other reference data items, FX rate sources can be edited and FX rate source activity is audited in the standard manner.

**Note:** When a FX Rate Source is created, a default FX Rate of 1 and an FX Rate Date of 1st Jan 1990 is applied to all currencies for the newly created FX Rate Source. It is therefore highly recommended that as soon as the FX Rate Source is created that valid FX rates for this source are imported.

**To Edit a group:**  
* Click on the **Edit** ![edit_icon.jpg](Images/edit_icon.jpg) icon next to the group that needs to be modified, make the changes and click the **Save** button to save the changes.

## Holiday Calendars

Holiday Calendars are used within the system to hold reference data that defines which dates are non valuation dates due to being public holidays.

Holiday Calendars are attached to Agreements. An Agreement can reference one or several Holiday Calendars. If a holiday date contained in the referenced Holiday Calendar falls on the same date as would normally be a valuation date for an agreement, then a No Action Margin Calculation type result will be generated when Margin Calculations are run.

Once a Holiday Calendar has been created, the actual holiday dates for that calendar can be manually added.

Once fully populated, Holiday Calendars are added to agreements.

## Index

Index reference data object needs to be created before Index Rates can be imported into the system.

**To add an Index**  
\- Click on the **Create Index** button located in the top right portion of the screen. \- Enter the required data, noted below in red, and click the **Save** button.

**To edit an Index**  
\- Click on the **Edit** ![edit_icon.jpg](Images/edit_icon.jpg) icon next to the group that needs to be modified, make the changes and click the **Save** button to save the changes.

Although it is anticipated that most users will import Index Rates into the corresponding Index object, it is possible to manually update the rate data on an Index.

Tab | Section | Field | Description  
---|---|---|---  
General | General | Index Name | The name of the index.  
|  | Description | This will define the index.  
|  | Alias | An alias can be used to reference the Index Name as defined in TLM® Collateral to the name given in your external systems, and is used during import of rates. This name cannot be the same as the Index name or another that exists on another Alias.  
|  | Day Count Convention | Select the Day Count Convention that the Index follows for interest accrual calculations.  
  
Choices are:  
Act / 360 (default)  
Act / 365  
| Tolerances |  | It is then possible to specify tolerances against which the Index rates will be verified as they are imported or manually added into the Index.  
  
When the Rates for the Index are imported or added, the tolerances are checked against the most recent, previous date values available in the database for that Index. If there is no previous value for a particular rate the " Min" and "Max" tolerances will still be checked but the percent tolerance will pass automatically.  
|  | Minimum Amount | Enter the minimum tolerance amount if applicable.  
|  | Maximum Amount | Enter the maximum tolerance amount if applicable.  
|  | Percentage | Enter a percentage tolerance amount if applicable.  
Rates | Rates | Add New Rate | Select the date that the rate should be added for from the calendar drop-down Date field.  
|  | Rate | Add the corresponding rate. Rates can be entered as either positive or negative numbers, and can be entered with up to 6 decimal places of precision.  
  
**To add Index Rate**

To manually add an index rate

**To delete Index Rate**

## Instrument Types

Instrument Type is a user defined value which is used to group types of instruments together.

**Procedure:**

Select **Reference** from the navigation pane. 

Click on the **Instruments** drop down and select **Instrument Type**.

**To Add a new group:** Click on the **Create Instrument Type** button.

A form will open up and contain 2 tabs. The first tab will require fields of data before the **Save** button will appear.

**To Edit a group:**  
Click on the **Edit** icon next to the group that needs to be modified, make the changes and click the **Save** button to save the changes.

**Note:** Fields in red are required.

Tab | Field | Description/Information  
---|---|---  
General | Name | Enter a unique name for the Instrument Type.  
| Instrument Class | Instrument Class is a system defined value which is used to determine the pricing method that should be applied to an instrument. The current options are:  
  
Cash  
Debt  
Equity  
Letter of Credit  
| Description | Enter a description if required.  
Extensions | If any extensions have been created for Instrument Types, they can be seen here and values can be entered. |   
  
## Interest Rate Index

**Procedure:**

Select **Reference** from the navigation pane. 

Click on the **Instruments** drop down and select **Index**.

Click on the **Create Index** button.

A form will open up and contain 2 tabs. Two of the tabs will require fields data before the **Save** button will appear.

**Note:** Fields in red are required.

Tab | Fields | Information  
---|---|---  
General | Index Name | Enter a name for the Index.  
| Description | Enter a description if it is required.  
| Alias | Enter an Alias for the Index. An alias can be used to reference the Index Name as defined in TLM® Collateral to the name given in the user's external systems and is used during import of rates.  
  
Example:  
If the user defines the Index Name as Federal Funds but the systems refer to is as FFUNDS then populate the name in the Alias field.  
| Day Count Convention | Select the Day Count Convention that the Index follows for interest accrual calculations.  
  
The choices are:  
Act / 360 (default)  
Act / 365  
| Minimum Amount  
  
Maximum Amount  
  
Percentage | Specify tolerances against which the Index rates will be verified.  
  
When the Rates for the Index are  added, the tolerances are checked against the most recent, previous date values available in the database for that Index.  
  
If there is no previous value for a particular rate the " Min" and "Max" tolerances will still be checked but the percent tolerance will pass automatically.  
Rates | Date | Click in the date field and the user is prompted to select a date of the rate.  
Rates | Rate | Enter the rate for the date and click the **Add** button.  
  
If Rate Tolerances (min/max/percentage change) have been defined on the General tab, the rate entered will be compared to the previous day's entry to see if it exceeds any defined tolerances. If it does a warning dialog message will be shown.  
  
To remove an rate from an Index, select the **Delete** ![delete_icon.jpg](Images/delete_icon.jpg) icon. The rate will be marked for deletion. If the rate should be removed, then click the red check. If it was a mistake then click the **x**. 

**Note:** The Creation of Indexes as a reference data item is subject to standard auditing reporting within TLM Collateral.

## Managing Location

Select Reference from the navigation pane.

Click on the **Agreements** drop down and select **City**.

**To Add a New Managing Location**  
* Click on the **Create City** button located in the top right portion of the screen.

  1. Enter the name of the city.
  2. Select the applicable time zone for the city via the drop down selection.
  3. Select the **Managing Location** if the city is to meant to be a managing location. 

**Note:** If a Managing Location city has been set on an Agreement and an attempt to deselect the city as a Managing Location by clearing the check box, an error message will be received when the record is attempted to be saved.

  4. Enter a meaningful description if required.

  5. Set a Payment Tolerance Amount if High Value Payments needs to trigger additional approvals. If selected, enter the Tolerance Amount and Currency. The amount field will only accept positive numbers.



**To Edit a Managing Location**  
* Click on the **Edit** icon next to the group that needs to be modified, make the changes and click the **Save** button to save the changes.

## Organization Type

**Procedure**

Select Reference from the navigation pane.

Click on the Entities drop down and select **Organization Type**.

Click on the **Create Organization Type** Source button located in the top right portion of the screen.

  * Enter a unique required name in the **Name** field.
  * Enter a meaningful description in the **Description** field if needed.
  * Click on the **Dispute Tolerance** drop-down and select from these values:

    * _None_ \- No dispute tolerance will be used for any agreement with a Counterparty entity associated to this Organization type, unless a dispute tolerance has been set up on the individual agreement. This method is selected by default. 
    * _Flat_ \- If selected, an absolute amount and a currency are required. A zero can be entered as an absolute amount, meaning that any difference between agreed amount and call amount will be regarded as a dispute. 
    * _Percent of Call Amount_ \- If selected, the percentage amount must be specified under the required _Amount_ field. This number must be > 0 and <=100, and can be entered to 2 precise decimal places. 

Dispute Tolerances can be defined at two levels in the system:

    * At an Organization Type Level. 
    * At an individual [agreement level](<agreements_general.md#dispute>).

**Note:** Dispute tolerances that are defined at agreement level take precedence over dispute tolerances defined at Organization level.

Dispute Tolerances are used to prevent minor differences between margin call amounts and agreed amounts being recorded as partial disputes.

Dispute Tolerances can be set as either a percentage of the margin call or as a fixed absolute amount.


Example | Scenario  
---|---  
Percentage of Call Amount | Consider a 5% dispute tolerance.  
  
A Margin call of USD 1,000,000 is calculated and sent to a Counterparty.  
  
The Counterparty agrees USD 900,000, which is input as an agreed amount.  
  
The original demand margin call item with USD 900,000 agreed is advanced to the next stage of the Workflow.  
  
A partial dispute of USD 100,000 is created and placed in the disputes queue, because the difference between the agreed amount and call amount is 10% of the call amount.  
  
If the Counterparty agreed USD 960,000 - no dispute would be recorded as the USD 40,000 difference between the agreed amount and call amount is 4%.  
  
The difference between the call amount and the agreed amount needs to be 5% or greater to create a partial dispute item in this scenario.  
Fixed Amount | Consider a USD 10,000 fixed amount Dispute Tolerance.  
  
A Margin call of USD 1,000,000 is calculated and sent to a Counterparty.  
  
The Counterparty agrees USD 980,000. USD 980,000 is input as an agreed amount.  
  
The original demand margin call with USD 980,000 agreed amount recorded is advanced in the Workflow.  
  
A partial dispute of USD 20,000 is created as the absolute difference between the agreed amount and the call amount is greater than USD 10,000.  
  
The partial dispute of USD 20,000 is advanced to the disputes Workflow.  
  
If the Counterparty agrees to USD 990,001 or more, than no partial dispute will be created, as the absolute difference between agreed amount and call amount is less than USD 10,000.  
  
The difference between the call amount and the agreed amount must be less than USD 10,000 for no dispute item to be created.  
  
## Price Source

Agreements define what price source they should use for valuing collateral positions.

**Procedure**

Select Reference from the navigation pane.

Click on the **Instruments** drop down and select **Price Source**.

Click on the **Create Price Source** button located in the top right portion of the screen.

  * Enter a unique required name in the Name field.
  * Enter a meaningful description in the Description field if needed.
  * Click the Default checkbox if the Price Source is the source to be used when entering a new Agreement. The source can be modified within the Agreement.



**Note:** The first price source that is entered becomes the default FX rate source. If more than one price source reference data item has been created, the user can specify which source will be deemed the default. Like any other reference data items, price sources can be edited, and price source activity is audited in the standard manner.

## Rating Agency

Rating Agencies can be [added](<reference.md#add-reference-data>) and [edited](<reference.md#edit-reference-data>).

Optionally, once [Ratings](<#ratings-equivalencies>) have been added for the Rating Agency for a debt structure, it is then possible to [define specific ratings to be regarded as not provided](<rating_for_agency_not_provided.md>).

## Ratings Equivalencies

TLM® Collateral Management contains Four Debt Structures:

  * [Long Term Debt Structure](<rating_equivalencies.md#long-term-rating-equivalencies>)
  * [Short Term Debt Structure](<rating_equivalencies.md#short-term-rating-equivalencies>)
  * [Financial Strength Debt Structure](<rating_equivalencies.md#financial-strength-rating-equivalencies>)
  * [Internal Rating](<rating_equivalencies.md#internal-rating-equivalencies>)



For Short Term and Long Term debt Structures, ratings are already prepopulated for the following Agencies:

  * Fitch
  * Moodys
  * S&P



Additional Rating Agencies can be also [created](<reference.md#adding-reference-data>). Once created, their rating equivalencies can be [added](<rating_equivalencies.md#add-rating-equivalency>) to a debt structure's table or existing rating equivalencies can be [modified](<rating_equivalencies.md#edit-rating-equivalency>).

By default, the Financial Strength Debt Structure and Internal Rating Debt Structures are not prepopulated with any Rating Equivalencies. This also means that the ordinals necessary to support the table being populated may not yet exist.

Rating Equivalencies are used in the following areas:

  * Instrument Ratings 
  * Collateral Buckets 
  * Entity Ratings 
  * Ratings Based Margin Terms 
  * Credit Scenario Analyzes 



## Trade Types

Select Reference from the navigation pane.

Click on the **Agreements** drop down and select **Trade Types**.

**To Add a New Trade Type**  
* Click on the **Create Trade Type** button located in the top right portion of the screen.

**To Edit a Trade Type**  
* Click on the **Edit** icon next to the group that needs to be modified, make the changes and click the **Save** button to save the changes.

**Note:** Fields in red are required.

Field | Information  
---|---  
Name | Enter a name for the Trade Type.  
Description | Enter a description if it is required.  
[Agreement Types](<#agreement-types>) | Select which Agreement Types which are associated with the Trade Type. This is used to filter down the Trade Types that are available for selection when creating a new agreement.  
  
## Waive Category

To modify waive category data, see [Add](<reference.md#add-reference-data>), [Edit](<reference.md#edit-reference-data>), or [Delete](<reference.md#delete-reference-data>) Reference Data.

**Edit the Order of Waive Category**

  1. Select the **Edit Order** button. The _Edit Waive Category Order_ dialog will appear with the current display order.

**Note:** This is the same as the numerical Order column in the Waive Categories pane.

  2. Select the category that needs to be reordered.

  3. Click the up arrow to raise the display order for the highlighted category. Click the down arrow to lower the display order of the highlighted category.
  4. Click the **Ok** button to save the changes. The dialog closes and the new display order is recorded.

**Note:** The numerical value(s) in the Order column in the main Waive Category pane reflects the update.



