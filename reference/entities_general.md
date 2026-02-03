
# Entity Details

## General

**Note:** Fields in red are required.

Section | Field | Information  
---|---|---  
General | Name | Enter the Name of the entity. This should be the name that references across the system. The maximum number of characters allowed is 255.  
| Legal Name | If required, a full Legal Name can also be stored for reporting purposes.  
| Types | Select the entity Type. The options are:  
  
Central Counterparty  
Clearing Client  
Clearing Member  
Counterparty  
Credit Support Provider  
Custodian  
Issuer  
Principal  
  
Multiple types can be assigned to one entity by selecting more than one of the check boxes.  
  
**Note:** When Principal type is selected, the [Monitor Short Positions](<#shortpositions>) becomes enabled and [Statement Options](<#logo>) become available.  
| Groups | Select the [Entity Group(s)](<reference_related_data.md#entity-groups>) associated with the Entity.  
| Monitor Short Positions | This field is only enabled when the entity type is Principal. When this field is selected, it determines two behaviors:  
  
1\. Whether short positions for the Principal are displayed in the Inventory Management module.  
Select the check box to show short positions for the Principal in inventory management screen.  
Conversely, clear the check box to ensure short positions for the Principal are not shown.  
(By default, if Principal is selected as a Type, then this check box will be checked.)  
  
2\. Whether collateral movements for Agreements of this Principal should be [validated when created](<movement_validation.md#validation-of-collateral-movements-added-to-a-margin-call>) to determine whether they will create (or exacerbate existing) short positions.  
In order to for this check to occur for Agreements with this Principal, the system needs to be configured to track short positions, and the Monitor short positions flag needs to be set as on.  
Should the system be configured to track short positions, but the Monitor Short Positions flag is disabled, the movement check will not be performed for any of the Principal's Agreements.  
This provides the flexibility to have [short position checks](<movements_short_position_checking.md>) performed for specific principals.  
  
See [Understanding Short Position Checking on Movements](<shortpositions.md>) for more information.  
| Parent | Select a Parent for the Entity. See [Understanding Parent Entity Relationships](<understand_parent_entity_relate.md>) for more information.  
| Domicile | Select the Domicile of the entity from the list of countries.  
| Industry Sector | Select the entity [Industry Sector](<reference.md#overview>).  
| Organization Type | Select an [Organization Type](<reference.md#overview>).  
| Custodian Identifier | This field only becomes enabled and required when the entity type is **Custodian**.  
  
If no identifier is entered, then the system will prevent the record from being saved.  
Statement Options | Logo | TLM® Collateral Management allows for customization of notices that will be sent to Counterparties.  
  
Specifically, a custom logo and disclaimer can be added that will appear on:  
\- Margin Call Notices  
\- Substitution Notices  
\- Interest Statements  
  
This information is stored at the level of the Principal Entity.  
  
Logo's are applied to the start or header of the notice, while disclaimers are added to the bottom or footer of the notice.  
  
To select a logo, click the **Choose Image** button.  
  
A standard Microsoft™ Windows™ operating system open file dialog box will open and the user can select a logo. The acceptable formats are [JPG; PNG or JPEG]. Click the **Open** button when the file is located.  
  
The logo will appear in the Entity Logo section.  
  
**Note:** To save the logo and associated information, make sure that the service configuration file is set up properly with a directory that exists.  
| Statement Disclaimer Description | Type the statement disclaimer that needs to be on the notices. The disclaimer will appear at the bottom of the notice.  
| Email Disclaimer Description | Type the email disclaimer that needs to be on the notices.  
  
**Note:** The user can elect to have only a disclaimer and no logo, or only a logo and no disclaimer, or neither. To do so simply omit to populate the relevant section.  
  
### Credit Ratings

Entities may be assigned a mixture of short and long term debt structure ratings.

#### Add a Credit Rating

**Procedure**

  1. Under the Credit Rating section, select a value from the drop-down for the Debt Structure, Agency and the Rating.
  2. The ![add_button_entities.jpg](Images/add_button_entities.jpg) button will become enabled.
  3. Click the **Add** button and the rating will be added to the grid.
  4. Click the **Save** button to commit the change to the entity.



Continue to add Credit Ratings to the entity as required. It is not possible to add multiple records for the same debt structure and agency combination. If an entity with multiple ratings for the same agency is entered, a warning indicator will appear stating "**Rating already exists** ".

#### Delete a Credit Rating

**Procedure**

  1. The entity must be in edit mode.
  2. Click the ![delete_icon.jpg](Images/delete_icon.jpg) button to the credit rating that needs to be removed.
  3. A delete rating window will appear confirming of the deletion. Click **Delete** to remove the credit rating.
  4. Click the **Save** button to commit the changes to the entity.



**Note:**

  1. A Rating applies to all roles assigned to the entity.
  2. If the approval process is enabled, the Entity changes made in above will not be truly saved to the database until they are fully approved. Instead the Entity will become locked for approval until either approved or rejected. See [Approvals Process for Entities](<entities_approvals.md>) for more details.



## Aliases

Aliases are used primarily for importing and matching of data items from external systems to TLM Collateral data items.

### Add an Alias

**Procedure**

  1. The entity must be in edit mode
  2. Select an [Alias Group](<reference_related_data.md#alias-groups>) from the dropdown and enter a value for the Alias.
  3. The **Add** button will become enabled and can be clicked to add the alias to the grid.
  4. Click the **Save** button to commit the changes to the entity.



**Note:**

  * Multiple aliases can be added for the same Alias Group as long as they are unique within that Alias Group.
  * The add button will not become enabled until a valid alias is entered, meaning no duplicates.
  * The same alias can be used across different Alias Groups but an Alias cannot be used that is the same as an existing Entity. In this case, the **Add** button will remain disabled until the Alias is changed.
  * If an alias is used which already exists for a different entity, the following message will occur: ![duplicate_alias.jpg](Images/duplicate_alias.jpg)



### Delete an Alias

**Procedure**

  1. The entity must be in edit mode.
  2. Click the delete ![delete_icon.jpg](Images/delete_icon.jpg) icon to the alias that needs to be removed.
  3. A delete alias window will appear confirming the deletion. Click **Delete** to remove the alias.
  4. Click the **Save** button to commit the changes to the entity.



## Branches

### Add Branches

**Procedure**

  1. The entity must be in edit mode.
  2. Enter a name in the **Branch** field and the **Add** button will become enabled.
  3. Click the **Add** button and the branch will be added to the grid.



### Add Branch Alias

**Procedure**

  1. If an Alias needs to be assigned to a branch, click on the Edit ![edit_icon.jpg](Images/edit_icon.jpg) icon. A popup screen will appear.
  2. Select an Alias Group from the drop-down menu and then enter an Alias. Both fields are require values before the Alias can be saved.
  3. This screen follows how [Aliases](<#add-an-alias>) are entered.



### Delete Branches

**Procedure**

  1. The entity must be in edit mode.
  2. Click the delete ![delete_icon.jpg](Images/delete_icon.jpg) icon and a delete branches window will appear confirming the deletion. Click **Delete** to remove the branch.
  3. Click the **Save** button to commit the changes to the entity.



**Note:**

  * When a branch is deleted, all aliases associated to that branch are also deleted.
  * If the branch is already being used in an agreement or in a trade, a error message will occur stating that the branch is currently being referenced by the name of the Agreements to which the branch has been assigned and/or the Trade References and Import Configuration names of trades using that branch.
  * It is currently not possible to delete a branch while it is being referenced elsewhere. If the branch does need to be deleted it would be necessary to first remove it from the relevant places.
  * The branches selected for deletion may be in use by Agreements that the user does not have permission to see as the user is outside the Agreement scope. See [Understanding Agreement Scopes and Agreement Responsibility Groups](<understand_scope_responsibility.md>) for more details on Agreement Scopes.



## Standard Settlement Instructions

When booking a collateral movement, the system allows the user to select which SSI's records to use for the receiving and sending parties. As well as including settlement instruction information, the SSI records selected contain Settlement Offset information which determines the settlement date that will be defaulted to the movement.

In order that an SSI record is available for selection on a collateral movement it must be

  1. Associated to the Agreement.
  2. Have definition criteria matching the collateral movement.



SSI's can be associated to Agreements in two ways:

  * They can be added at an Entity level and cascade down to the associated Agreements.

    * **Note:** The entity must be of type Principal or Counterparty for the SSI tab to be enabled.
  * They can be added directly to an Agreement.




A hierarchy exists between the two levels, and in simple terms, SSI records added directly to an Agreement override any _matching_ SSI's entered at the corresponding Entity Level. Similarly, within the Agreement and Entity levels, SSI records are created either for specific instrument ID's or for specific Instrument _Types_. SSI records created for specific Instruments Id's are higher in the hierarchy than those created for Instrument Types.

Multiple SSI records can be added for each type to an Entity (subject to validations), each of which can be selectable on matching collateral movements - _assuming that there are no matching Agreement Level type SSI records_.

Additionally, an Entity SSI record can be set as default, so that it is automatically selected on matching collateral movements - again assuming that there are no matching Agreement Level SSI records.

In the above contexts, _matching_ means the SSI's definition criteria by which it will apply to collateral movements - Movement Type, Movement Direction, Collateral Type, Applies To, and Instruments.

**Note:** Any Entity SSI Data changes are [audited](<audit.md>) in the standard way.

### Add SSI

When adding an SSI, there are seven available Settlement Instruction Types:

  * **Cash Instrument** \- At the level of the individual Currency ID. (e.g. GBP)
  * **Debt Instrument** \- At the level of the individual security ID. (e.g IT000013684)
  * **Debt Instrument Type** \- Held at the level of the instrument type. (e.g. US T-Bill, US T Note, US Corps, etc)
  * **Equity Instrument** \- Held at the level of the equity instrument. (e.g. Apple Corp)
  * **Equity Instrument Type**
  * **Letter of Credit Instrument** \- At the level of the individual Letter of Credit security ID. (e.g. LOC1235ANZ)
  * **Letter of Credit Instrument Type** \- Held at the level of the letter of Credit instrument type. (e.g. LOC's issued by a specific Bank)



The actual content and layout of this form vary according the SSI type selected.

**Procedure**

This tab will only be enabled when the Entity type is Principal or Counterparty otherwise it will be greyed out.

  1. The entity must be in edit mode.
  2. Click the SSI tab.
  3. Click on the ![add_button.jpg](Images/add_button.jpg) button or if an existing SSI needs amending, then click on the Edit ![edit_icon.jpg](Images/edit_icon.jpg) icon.
  4. The New Settlement Instruction Form opens.
  5. Select a **Settlement Instruction Type** and the below criteria can be defined by which it will be applicable to collateral movements.



**Note:** Required fields are noted in Red. If any of the required fields are not populated, then the ![ok_button.jgp](Images/ok_button.jpg) will not become enabled to add the SSI.

Section | Field | Description  
---|---|---  
**Settle Information** | Settlement Instruction Type | Select one of the 7 available types. Once a selection has been made, it cannot be changed. The SSI will need to be [deleted](<entities_general.md#delete-ssi>).  
| Name | Enter a _unique_ name for the SSI. The name must be supplied and unique, otherwise this error message will appear and will not allow the entity to be saved: ![duplicate_ssi.jpg](Images/duplicate_ssi.jpg)  
| Collateral Type | Select the margin type for collateral movements that the SSI should apply to. By default, the SSI can apply to collateral movements for Variation and Lock up margin types. (See [Working with OTC Agreements that Segregate Lock Up and Variation Margin](<segregate_lockup_varmargin.md>) for more details on margin types.)  
  
There are two choices:  
Lock Up - If the check box is enabled, SSI can be applied to collateral movements for margin type Lock Up.  
Variation - If the check box is enabled, SSI can be applied to collateral movements for margin type Variation.  
  
Clearing a check box means that the SSI will not be applicable to collateral movements for that margin type. (This allows separate SSI records to be created for Lock Up and variation collateral movements.)  
  
At least **_one_** check box must be enabled.  
  
**Note:** If Collateral Type of Guarantee or Surplus is selected, then _Central Clearing_ must be selected for the business line. The user will receive the following error if either or both of these values are selected and the business line does not contain _Central Clearing_ while trying to save the entity:![coll_type_ssi_error_debt_innstr.jpg](Images/coll_type_ssi_error_debt_innstr.jpg)  
| Movement Type(s) | Select from the drop down whether the SSI details are applicable to:  
  
Deliver  
Return  
Both - Deliver and Return Movements (this is the default).  
| Direction | Select from the down whether the SSI will apply to movements that are:  
  
To  
From  
Both - To and From the party (this is the default selection)  
  
This field works in conjunction with Movement Type(s) to allow the definition of separate (asymmetric) SSI details for each of the four collateral movement type/directions for a Party.  
| Business Lines | Select the Business Lines that this SSI will apply to by checking the respective check boxes in Business Lines section.  
| Instrument Types  
  
**Note:** This field will only appear for Settlement Instruction Types: Debt Instrument Type, Letter of Credit Instrument Type, Equity Instrument Type. | Select the debt instrument types that the SSI will apply to.  
  
Click on the drop-down field. Within the dialog, Select **Apply All** or select one or multiple debt instrument types that the SSI will apply to.  
| Instruments  
  
**Note:** This field will only appear for Settlement Instruction Types: Debt Instrument ID's, Cash, Letter of Credit Instrument ID's, Equity Instruments. | Select the instruments that the SSI will apply to.  
  
Click on the drop-down field. Within the dialog, Select **Apply All** or select one or multiple debt instrument types that the SSI will apply to.  
| Apply To  
  
**Note:** This field only becomes available when Cash Settlement Instruction Type is selected. | Select a value of Collateral or Interest.  
**Settlment Instruction** | Custodian | Select the Custodian Entity for the SSI.  
| Custodian ID | The field will automatically be populated based on the Custodian selected.  
| Account Number | All  
| Account Name | Enter an Account Name.  
| Beneficiary Number | Enter a Beneficiary Number. The value can be alphanumeric or numeric.  
| Beneficiary Name | Enter a Beneficiary Name.  
| Reference | Enter any additional information.  
| Comment | Enter any additional information.  
| Settlement Offset | Select from the drop down the offset value that will be used to default a settlement date for movements that this SSI applies to. There choices are:  
  
**Use Agreement Offset** \- This is the default choice, and if selected will use offset values defined at the Agreement Level for Cash and Debt Movements. If no Agreement level offsets are defined, the system level offsets will be used. If these do not exist, then the cash movements will use T+1.  
  
**T** \- Collateral Movements using this SSI will default a settlement date to be the same day as movement creation date.  
  
**T+1** \- Settlement date will be defaulted as following business day from movement creation date.  
  
**T+2** \- Settlement date will default to two business days from movement creation date.  
  
**T+3** \- Settlement date will default to three business days from movement creation date.  
  
**T+4** \- Settlement date will be four business days from movement creation date  
  
**Note:**  
1\. In the above definitions, T means **Today** from the perspective of the Agreement's Principal Managing Location timezone.  
2\. Additionally, for the purposes of settlement dates, Business Days are defined as Monday to Friday.  
3\. Settlement offset can be defined on both Principal and Counterparty SSI records. However, when determining which offset to use in deriving a settlement date, the system will use the offset from the SSI of the **receiving party**. For example, for a Deliver to Principal Movement, the Principal is the receiving party, and this it is the offset from the Principal's Deliver To SSI details which is used.  
| Place of Settlement | Select from the drop-down a Place of Settlement if required.  
  
If the details are populating for a Principal, the SSI information entered will refer to the settlement details that are applicable to the Principal side of collateral movements. The Movement Type and Direction fields further define which of the four movement direction / types that the SSI applies towards.

Principal Settlement Instructions

Movement Types Field | Direction(s) Field | Applies to Movement  
---|---|---  
Deliver | To | Where the Principal is receiving collateral on a **Deliver To Principal** movement.  
Deliver | From | Where the Principal is delivering collateral from on a **Deliver To Counterparty** Movement.  
Return | To | Where Principal is receiving back its previously posted collateral, i.e. on a **Return to Principal** Movement.  
Return | From | Where Principal is returning back previously held collateral, i.e. on a **Return to Counterparty** Movement.  
  
If SSI details are entered for a Counterparty, the information entered here will refer to settlement details that are applicable to the Counterparty. Again, the Movement Type and Direction fields differentiate whether the SSI applies to Delivers or Returns that are To or From where the Counterparty.

Counterparty Settlement Instructions

Movement Types Field | Directions Field | Applies to Movement  
---|---|---  
Deliver | To | Where Counterparty is receiving collateral on a **Deliver To Counterparty** movement.  
Deliver | From | Where Counterparty is delivering collateral from on a **Deliver To Principal** movement.  
Return | To | Where Counterparty is receiving back its previously posted collateral, i.e. on a **Return To Counterparty** movement.  
Return | From | Where Counterparty is returning its previously held collateral, i.e. on a **Return To Principal** movement.  
  
The Combination of Movement Type(s) and Directions(s) fields provides the flexibility to define separate (asymmetric) settlement instructions for Delivers To/From and Returns To/From for each party.

Click the ![ok_button.jpg](Images/ok_button.jpg) when all the information has been entered.

**Note:** The SSI's are not yet saved until the entity is saved.

**Comparison Validations**

The SSI record definition must be unique. That is, there cannot be an identically defined Entity Debt Instrument Type SSI record.

Entity Debt Instrument Type SSI records are evaluated for uniqueness by comparing the values of all the following fields:

  * Collateral Types
  * Movement Type(s)
  * Direction(s)
  * Business Lines
  * Instrument Types
  * Custodian
  * Account Number
  * Account Name
  * Beneficiary Number
  * Reference
  * Comment
  * Settlement Offset
  * Place of Settlement



to existing Entity Debt Instrument Type SSI records. If all the values in the above fields match between the records, the new record is considered a duplicate and the system will prevent the SSI being saved until it is made unique.

**Note:**

  1. Any Entity SSI Data changes are [audited](<audit.md>) in the standard way.

  2. If the approval process [enabled](<system_configuration.md#database-approvals>), the Entity changes made in above will not be truly saved to the database until they are fully approved. Instead the Entity will become locked for approval until either approved or rejected. See [Approvals Process for Entities](<entities_approvals.md>) for more details.




**Note:** If the approval process is [enabled](<system_configuration.md#database-approvals>), the Entity changes made in above will not be truly saved to the database until they are fully approved. Instead the Entity will become locked for approval until either approved or rejected. See [Approvals Process for Entities](<entities_approvals.md>) for more details.

### Delete SSI

**Procedure**

  1. Click on the delete ![delete_icon.jpg](Images/delete_icon.jpg) icon located next the row that needs to be deleted. 
  2. A delete entity window will open asking for confirmation for the deletion as this action is not reversible.
  3. Click **Delete** to remove the SSI.
  4. Click the **Save** button to commit the change to the entity.



### Setting an SSI as Default

It is possible to create multiple SSI records per Settlement Instruction Type. Within these same levels (i.e. per Instruction Type per Agreement SSI and per Instruction Type per Entity SSI) it is also possible to set one or more SSI records (subject to validation) as "default" Entity Level SSI records that are set as default are automatically applied to matching collateral movements. See [Understanding SSI hierarchy, defaults and derivation](<agreements_settleinstr.md#understanding-ssi-hierarchy>) for more information on this matching process.

To set the Principal and/or Counterparty Settlement Instruction as a default, click on the ![settlement_default.jpg](Images/settlement_default.jpg) and select the **Set Default** button.

The system validates that the criteria on the selected record are unique among other Entity SSI records of the same Type. An Entity SSI record can only be set as the default if its criteria are unique within the Type. The SSI criteria are not overlapping with any existing Entity SSI records of the same Type that have already been set as default.

Entity SSI records are validated for overlap within Type by comparing values in the following fields: 

  * Collateral Types
  * Movement Types
  * Direction(s)
  * Items
  * Applies To



to existing Entity SSI records that are set as default. Should an overlap be detected, the system will raise an error message detailing the names of the overlapping Entity SSI records.

### Removing an SSI Default Setting

Entity SSI records that have been set as default can be amended to remove the default setting.

To set the Principal and/or Counterparty Settlement Instruction as a default, click on the ![settlement_default.jpg](Images/settlement_default.jpg) and select the **Remove Default** button.

The Entity SSI selected is updated to no longer be set as default, as indicated by no icon in the Default column.

**Note:** If Approvals functionality is [enabled](<system_configuration.md#database-approvals>), the SSI record will be not be truly updated until it is fully approved. Instead the record will become locked for approval until either approved or rejected. See [Approvals Process for SSI's on an Entities](<entities_approvals.md>) for more details.

## Extensions

The system provides the flexibility for users to create their own parameters on the Entity Object. These parameters are termed "Extensions".

[Entity Extensions](<reference_related_data.md#extensions>) are created in [Reference Data](<reference.md>). Once created, they can be seen, and their values updated on the Extensions Tab.
