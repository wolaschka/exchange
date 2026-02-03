# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/audit.html

# Audit

## Filters

The filters available for the Audit screen are the following:

Field | Description  
---|---  
From Date | Used to select a date range. To view data for a single day, select the same date for both "From" Date and "To" Date. Date default to today's date.  
To Date | Used to select a date range. To view data for a single day, select the same date for both "From" Date and "To" Date. Date default to today's date.  
Type | Select from a list of available areas for additional filtering of the data.  
Name | Type in the name of the specific item.  
  
For example: For a particular agreement, enter the name of the agreement. Make sure the filter is set to a Type which would include that type of data. In this example, the type would be set to either All or Agreement.  
  
When data is returned, the fields displayed on the screen with the relevant information are the following:

Field | Description  
---|---  
Action | The actions are update, insert or delete.  
Type | The type is the area that the change was made.  
Name | The name of the record that has been modified.  
Amended By User | The user who made the changes.  
Amended Date Time | The date and time the changes were made.  
Approved By | This field is only shown:  
  
When Approvals is enabled.  
When a data field that requires approval has been populated/changed.  
When shown, this field displays the name of the user who approved the data value change.  
Approved date | This field is only shown:  
  
When Approvals is enabled.  
  
When a data field that requires approval has been populated/changed.  
  
When shown, this field displays the date and time of when the data field value change was approved  
  
The default sorting order is by Amended Date Time.

Select an individual record in the grid. A fly-out window will appear to the right with the full audit details in the report.

The report shows, in addition to the summary details contained in the grid, a field by field view of the changes that were made with the Before Value and After Value for each field.

## Grid Features

The audit grid can be [sorted](<grid_features.md#sorting>), [paged](<grid_features.md#paging>), [exported](<grid_features.md#export-grid>), [reorder columns](<grid_features.md#reorder-columns>), and fields can be [disabled or resized](<grid_features.md#display-and-resizing-columns>).

## Data

The following data objects are currently audited within TLM® Collateral Management:

Data Objects | Description  
---|---  
Agreements | Any field on the Agreement is audited as part of the Agreement as a whole. There is one audit record for all Agreement fields that have been populated for the first time or updated.  
  
There are a few exceptions whereby certain Agreement data is treated separately from the Agreement and has its own audit record. These exceptions are:  
  
Specific Trade Coverage  
Standard Settlement Instructions  
Agreement Margins  
  
Additionally, changes are made to Basic Eligibility, Advanced Eligibility, Ratings Based Eligibility or Concentration Rules on an agreement are also captured in Audit records. See [Understanding Audit records for Eligibility (Basic, Advanced, Ratings Based) and Concentration Rules](<understanding_agmt_eligibility_audit.md>).  
Asset Pools |   
Collateral Buckets |   
Collateral Groups |   
Collateral Ladders | Although audited, these objects are created/amended/deleted in the TLM Collateral Manager web application.  
Contacts | There are two audit "types" relating to contacts: Contact and Agreement.  
  
A Contact is created from an agreement but is actually stored against an entity which allows it to be subsequently used for other agreements with that same entity. A contact therefore has a number of "Associated Agreements". Each time a contact is inserted, edited or deleted an audit record is created for the contact itself plus the associated agreement(s).  
  
See [Contacts](<contactinfo.md#adding-an-existing-contact>) for more information.  
Entities |   
Eligible Collateral | The audit for Eligible Collateral includes Basic, Advanced, Ratings Based, Wrong Way Risk and Concentration Rules.  
  
These different areas allow rules to be set up for the agreement.  
  
Each time one or more of the Rules is inserted, edited or deleted on an Agreement, a single audit record is created on the Agreement Object.  
  
Although there is a single audit record created, it does however have two elements to it.  
Exposure Trade Overrides |   
Instruments |   
Instrument Pricing |   
Reference Data | Please see the Note below.  
User Statement Definitions | Although audited, these objects are created/amended/deleted in the TLM Collateral Management Self-Service Portal web application.  
  
The following data objects are currently not audited:

  * Extract Configurations
  * Global Concentration Rules



Whenever one of the audited data objects is inserted, updated or deleted, a record of that action is stored for audit purposes. These records are displayed to the user through the Audit option on the navigation pane.

**Note:** The audit records for certain Reference Data objects are subject to Agreement Scope filtering. If the audit records contain information for Agreements that fall outside of the user's Agreement Scope, then those details will not be displayed. See [Understanding Agreement Scopes and Agreement Responsibility Groups](<understand_scope_responsibility.md>) for more details on Agreement Scope.

The specific reference data objects are:

  * Agreements
  * Agreement Responsibility
  * Contacts



Not all data objects can be deleted.
