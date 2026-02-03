# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/agreements_settleinstr.html

# Settlement Instructions

## Background

Settlement Instructions can be [added](<agreements.md#create-a-grid-row>), [edited](<agreements.md#edit-a-grid-row>), or [deleted](<agreements.md#delete-a-grid-row>).

When booking a collateral movement, the system allows SSI records to be selected for the receiving and sending parties. It also includes settlement instruction and Settlement Offset information which determines the settlement date that will be defaulted to the movement.

For an SSI record to be available for selection on a collateral movement it must be:

  1. Associated to the agreement.
  2. Have definition criteria matching the collateral movement.



SSI's can be associated to agreements in two ways:

  * They can be added at an Entity level and cascade down to the associated agreements.
  * They can be added directly to an agreement.



A [hierarchy](<agreements_settleinstr.md#understanding-ssi-hierarchy>) exists between the two levels, and in simple terms, SSI records added directly to an agreement override any matching SSI's entered at the corresponding Entity Level.

Multiple SSI records for a cash instrument can be [added](<agreements.md#create-a-grid-row>) to an agreement (subject to validations), each of which can be selectable on matching collateral movements. Additionally, an Agreement Cash Instrument SSI record can be [set as default](<setting-an-agreement-ssi-as-dafault>), so that it is automatically selected on matching collateral movements.

In the above contexts, matching means the SSI's definition criteria by which it will apply to collateral movements - Movement Type, Movement Direction, Collateral Type, Applies To, and Instruments.

Determine whether a Principal or Counterparty SSI needs to be [added](<agreements.md#create-a-grid-row>), [edited](<agreements.md#edit-a-grid-row>), or [deleted](<agreements.md#delete-a-grid-row>).

If populating the details for a Principal, the SSI information entered will refer to the [Settlement Details](<#settlement-details>) that are applicable to the Principal side of collateral movements. The Movement Type and Direction fields will further define which of the four movement direction / types that the SSI applies towards. See [Settlement Instructions Principal](<#settlement-istructions-principal>) below.

If populating the details for a Counterparty, the SSI information entered here will refer to [Settlement Details](<#settlement-details>) that are applicable to the Counterparty. Again, the Movement Type and Direction fields differentiate whether the SSI applies to Delivers or Returns that are To or From where the Counterparty. See [Settlement Instructions Counterparty](<#settlement-instructions-counterparty>) below.

The New Settlement Instruction Form opens.

## Understanding SSI Hierarchy

In order to understand how SSI's are organized and selectable / automatically applied on collateral movements in the system it is necessary first to understand the key concepts involved:

  * SSI Hierarchy Relationships.
  * Multiple SSI records per Instruction Type, and SSI Defaults.
  * Filtering of Entity SSI's to Agreements by Margin Type.
  * Filtering of Entity SSI's to agreements by Tri-Party Custodian.
  * SSI Criteria (Collateral Type, Apply to field, Movement Type(s) and Direction(s) fields)



These concepts are outlined in more detail below.

**SSI Hierarchy Relationships**

SSI's can be entered in the system in two locations:

  * Entities
  * Agreements



And within each location, SSI's are created by Instrument Class and then by specific Instrument Identifiers or Instrument Types. This results in seven types of SSI that can be entered:

  * Cash Instrument Id
  * Debt Instrument Id
  * Debt Instrument Type
  * Equity Instrument Id
  * Equity Instrument Type
  * Letter of Credit Id
  * Letter of Credit Type



Observe that for Debt Instruments, Letter of Credit Instruments and Equity Instruments, SSI's can be entered at an Instrument Type grouping level. For example:

  * Debt Instrument Type (e.g. US T Bill) , and/or at a specific Debt Instrument ID level (e.g. 912974001)
  * Letter of Credit Instrument Type (e.g, LOC's issued by same bank) and/or at a specific Letter of Credit Instrument ID level (e.g. LOC123455)
  * Equity Instrument Type (e.g US Equities, UK Equities) , and/or at a specific Equity Instrument ID level (e.g. Apple shares)



The SSI hierarchy is based on specificity. That is the more specific an SSI record is, the higher it is in the hierarchy. Conversely, the more general the lower in the hierarchy. This can be summarized in the following two rules:

  * Any SSI entered at an Agreement Level is higher in the hierarchy than the corresponding SSI that was entered at the Entity Level.
  * Any SSI entered at for a specific Instrument ID is higher in the hierarchy than one for the corresponding Instrument Type within the same object. (i.e. Entity or Agreement).



When these rules are combined, the hierarchy can be pictorially represented.

![SSIHierarchy.jpg](Images/SSIHierarchy.jpg)

As indicated by the key, if a SSI is entered at the Agreement Debt Instrument Type level, this will be higher than any SSI for the corresponding instrument that was entered at Entity Debt Instrument ID Level, assuming the same instrument is covered in the instrument types defined on the Agreement level SSI. (the same is true or Letters of Credit and Equities)

The highest level of the hierarchy is Instrument ID level SSI entered on an Agreement, while the lowest is Instrument Type SSI entered on an Entity.

**Multiple SSI records per Instruction Type, and SSI Defaults**

The system supports the creation of multiple SSI Records per each of the above Instruction Types. For example, numerous Agreement Cash Instrument ID SSI records can be set up for the same Agreement covering the same cash instrument. Validation that is performed to ensure that each of the SSI records created have unique names and do not have identical definitions. When a collateral movement is created for the same Agreement and cash instrument, the user can manually select which ones of these corresponding SSI records to apply for the Receiving and Sending parties respectively.

To assist and moreover automate this SSI selection process it is possible to set one or more SSI records as a default per Instruction Types. Validation is performed to ensure that default SSI's are not overlapping within each Instruction Type.

When a collateral movement is created and there are several matching SSI records which could be selected, the system will automatically apply the matching SSI record which is:-

  * Highest in the SSI hierarchy.
  * Set as Default



This matching process is further outlined in the How SSI's are derived on Collateral Movements section later on in the topic.

**Entity SSI Filter down to Agreement Process**

SSI's that are entered on Entities will "flow" down to the corresponding agreements, which have the same entities according to the following processes.

  * Filtering by Collateral Type

The Collateral Type for the Entity SSI is evaluated against the [Collateral Allocation Type](<agreements_general.md#collatallocation>) of the Agreement. 

If the Entity SSI is defined as being for Collateral Type Lock Up only - it will be filtered out from any underlying Agreement where the Collateral Allocation type is not Segregate Lock Up and Variation or Lock Up Only. This means entity SSI's defined as Lock Up only will never be applied to any Repo, Securities Lending, and those OTC agreements that have collateral allocation value of auto allocate.

If the Entity SSI is defined as being for Collateral Type Lock Up and Variation, it will be applied to underlying Agreements where the Collateral Allocation type is not Segregate Lock Up and Variation or Lock Up Only, but will have a Collateral Type of Variation only.

  * Filtering by TriParty Custodian

When an Agreement is defined as having a [Tri-Party Custodian](<triparty_custodian.md>), it is assumed that the entity SSI's will not be applicable, and therefore they are filtered out as follows:-

    * If the Entity SSI is for Collateral Type variation only, and the Agreement has a variation collateral [Tri-Party Custodian](<triparty_custodian.md>) defined, the entity SSI is filtered out entirely.
    * If the Entity SSI is for Collateral Type lock up only, and the Agreement has a Lock up collateral [Tri-Party Custodian](<triparty_custodian.md>) defined (by definition the Agreement must be a segregated collateral Agreement or Lock Up Only) then the Entity SSI is filtered out entirely.
    * If the Entity SSI is defined as being applicable to Lock up and variation, and the Agreement has a Collateral Allocation type of segregate lock up and variation, and a Variation collateral [Tri-Party Custodian](<triparty_custodian.md>) defined, the entity SSI will be applied to the Agreement but will have a collateral type of Lock up only.



**SSI Criteria**

SSI criteria define which collateral movements the SSI can be applied to. The criteria are made up of several fields, and it is the combination of these fields that give an SSI record its unique definition.

**Collateral Type**

SSI records can be defined with one or more of the following Collateral Type (1) values, Variation, Lock Up, Surplus, Guarantee. This value equates to margin type on collateral movements. That is, an SSI record defined with a Collateral Type of Lock Up can only be applicable to a collateral movement with a margin type of Lock Up. It cannot be applied to a collateral movement with a margin type of Variation. The converse is true, collateral movements for margin type Lock Up can be populated with SSI's only from SSI records which have a defined Collateral Type value of Lock Up.

If more than one Collateral Type is specified, for example, both Variation and Lock Up it means that the SSI can be applied to collateral movements that are for a margin type of Lock Up or Variation. By definition the SSI record details will be the same for both collateral types.

**Movement Type(s)**

Movement Type (2) can be defined on a SSI record with a value of:

  * **Deliver** \- meaning it will be applicable to collateral movements that are Deliveries (**Deliver** _To_ or **Deliver** _From_) with respect to a Party.
  * **Return** \- meaning it will be applicable to movements that are returns (**Return** _To_ or **Return** _From_ a Party)
  * or **Both** so that it can apply to delivers or returns.
  * Movement Type values are used in conjunction with Direction(s) criteria to further refine the SSI applicability.



**Directions**

An SSI can be defined with a direction (3) of:-:

  * **From** \- meaning it is used for collateral movements _from_ a Party. (_Deliver_ **From** or _Return_ **From**).
  * **To** \- that is, it is used l be applicable to movements _toward_ a Party.(_Deliver_ **To** or _Return_ **To** ).
  * or **Both** so that it can apply to delivers or returns.



The combination of Movement Types and Directions fields allows the flexibility of defining asymmetric settlement instructions (differing return/deliver/from/to SSI details) for each party.

The table below shows how SSI records with these values apply to the Principal and Counterparty for each of the four collateral movements that are possible.

SSI's used for Principal and Counterparty per Movement Direction 

Collateral Movement Direction | Principal Movement Type | Principal Direction | Counterparty Movement Type | Counterparty Direction  
---|---|---|---|---  
Deliver to Principal | Deliver | To | Deliver | From  
Return to Principal | Return | To | Return | From  
Deliver to Counterparty | Deliver | From | Deliver | To  
Return to Counterparty | Return | From | Return | To  
  
**Cash Instrument SSI "Applies To" field**

Similar to Collateral Type, there is another parameter on cash instrument SSI's that governs how it will be applied. A Cash instrument SSI can be defined with an apply to field of either of the following.

  * Collateral and /or Interest



An apply to value of **Interest** means that the SSI will be applicable to cash collateral movements with a [movement type](<movements.md#movementtype>) of interest distribution.

An apply to value of **Collateral** means that the SSI will be applicable to cash collateral movements with any of the following [movement types](<movements.md#movementtype>) [Manual, Margin Call, Substitutions]. Like Collateral Type, if the SSI record has an apply to value of Interest & Collateral, it means the same SSI details will be applied to cash collateral movements that are for Interest Payments as well as standard Margin Call cash movements for the specified cash instruments.

## Settlement Details

### Adding an SSI

**Procedure**

  1. Select **Add** on the Settlement Instructions screen whether it is under Entities or Agreements. A _Create Settlement Instruction_ screen will appear.

**Note:** If an SSI is being added to an Agreement, an SSI can be entered for the [Principal](<agreements_settleinstr.md#settlement-instructions-principal>), [Counterparty](<agreements_settleinstr.md#settlement-instructions-counterparty>) or both.

  2. Click the drop-down for the **Settlement Instruction Type** and select a type. Depending on the type selected will determine what fields are shown and required. See the table below for more information regarding the fields.




**Note:** Fields in red are required.

Field | Types | Comments  
---|---|---  
Name | All | Enter a Unique Name for the SSI in Name field.  
Collateral Type | All | Apply to collateral movements with a margin type of Variation or Lock Up.  
  
  
| Collateral Type Value| SSI can apply to| Comment  
---|---|---  
Variation| Collateral movements for margin type Variation| | Lock Up| Collateral movements for margin type Lock Up  
Surplus| Collateral movements for margin type Surplus| Only applicable to Central Clearing Agreements  
Guarantee| Collateral movements for margin type Guarantee| Only applicable to Central Clearing Agreements  
  
**Note:**  
The Collateral Type field, for most agreements, contains a single value and is grayed out, and cannot be changed.  
  
OTC Agreements that segregate Variation and Lock Up Collateral can be adjusted for which margin types the SSI can be applied to. By default, the SSI can apply to collateral movements for Variation and Lock up margin types. (See [Working with OTC Agreements that Segregate Lock Up and Variation Margin for more details on margin types](<segregate_lockup_varmargin.md>) Movement Type(s) | All | Applies to movements that which are Delivers or Returns.  
  
The values to choose from are:  
  
**Deliver**  
**Return**  
**Both**  
Direction | All | Applies to Deliver/Return movements that are To the Party or From the party.  
  
The values to choose from are:  
  
**To**  
**From**  
**Both** (To and From the party. This is the default selection)  
Instrument Types | Debt  
LOC  
Equity | Select one or many Instrument types associated with the SSI.  
Instrument | Cash  
Debt  
LOC  
Equity | Select one or many cash or instrument(s) associated with the SSI.  
Apply To | Cash Instrument | allows differentiation between standard Collateral Movements, and those on Interest Distribution payments.  
  
The values to choose from are:  
  
**Collateral** \- SSI will be applied to Margin and Manual Movements  
**Interest** \- SSI will be applied toward Interest Distribution Movements  
Custodian | All | The custodian ID for the SSI.  
Custodian ID | All | The field will automatically be populated based on the Custodian selected.  
Account Number | All | Enter the Account Number. The value can be alphanumeric or numeric.  
Account Name | All | Enter an Account Name.  
Beneficiary Number | All | Enter a Beneficiary Number. The value can be alphanumeric or numeric.  
Beneficiary Name | All | Enter a Beneficiary Name.  
Reference | All | Enter any additional information.  
Comment | All | Enter any additional information.  
Settlement Offset | All | Select from the drop down the offset value that will be used to default a settlement date for movements that this SSI applies to. There choices are:  
  
**Use Agreement Offset** \- This is the default choice, and if selected will use offset values defined at the Agreement Level for Cash and Debt Movements. If no Agreement level offsets are defined, the system level offsets will be used. If these do not exist, then the cash movements will use T+1.  
  
**T** \- Collateral Movements using this SSI will default a settlement date to be the same day as movement creation date.  
  
**T+1** \- Settlement date will be defaulted as following business day from movement creation date.  
  
**T+2** \- Settlement date will default to two business days from movement creation date.  
  
**T+3** \- Settlement date will default to three business days from movement creation date.  
  
**T+4** \- Settlement date will be four business days from movement creation date  
  
**Note:**  
1\. In the above definitions, T means Today from the perspective of the Agreement's Principal Managing Location timezone.  
2\. Additionally, for the purposes of settlement dates, Business Days are defined as Monday to Friday.  
3\. Settlement offset can be defined on both Principal and Counterparty SSI records. However, when determining which offset to use in deriving a settlement date, the system will use the offset from the SSI of the **receiving party**. For example, for a Deliver to Principal Movement, the Principal is the receiving party, and this it is the offset from the Principal's Deliver To SSI details which is used.  
Place of Settlement | All | Select from the drop-down a Place of Settlement if required.  
  
### Settlement Instructions Principal

The SSI information entered will refer to the settlement details that are applicable to the Principal side of collateral movements. The Movement Type and Direction fields further define which of the four movement direction / types that the SSI applies towards.

Movement Types Field | Direction(s) Field | Applies to Movement  
---|---|---  
Deliver | To | Where the Principal is receiving collateral on a **Deliver To Principal** movement  
Deliver | From | Where the Principal is delivering collateral from on a **Deliver to Counterparty** Movement  
Return | To | Where Principal is receiving back its previously posted collateral, i.e. on a **Return to Principal** Movement  
Return | From | Where Principal is returning back previously held collateral, i.e. on a **Return to Counterparty** Movement  
  
### Settlement Instructions Counterparty

The SSI information entered will refer to settlement details that are applicable to the Counterparty side of collateral movements. The Movement Type and Direction fields further define which of the four movement direction / types that the SSI applies towards.

Movement Types Field | Direction(s) Field | Applies to Movement  
---|---|---  
Deliver | To | Where the Counterparty is receiving collateral on a **Deliver To Counterparty** movement  
Deliver | From | Where the Counterparty is delivering collateral from on a **Deliver to Principal** Movement  
Return | To | Where Counterparty is receiving back its previously posted collateral, i.e. on a **Return to Counterparty** Movement  
Return | From | Where Counterparty is returning back previously held collateral, i.e. on a **Return to Principal** Movement  
  
### Settlement Detail Validations

The **Save** button is disabled until all required fields are entered.

When the Agreement SSI is saved, the system performs a series of validations.

The Name is a required field and must be unique otherwise the user will receive the following message: ![SSI_validation_name.jpg](Images/SSI_validation_name.jpg)

The SSI record must be unique. The records are evaluated for uniqueness by comparing the values of all the following fields:

  * Collateral Types
  * Movement Type(s)
  * Direction(s)
  * Instrument
  * Apply To
  * Custodian
  * Account Number
  * Account Name
  * Beneficiary Number
  * Reference
  * Comment
  * Settlement Offset
  * Place of Settlement



to existing Agreement SSI records. If all the values in the above fields match between the records, the new record is considered a duplicate, and the following error message is thrown: ![SSI_validation_name.jpg](Images/SSI_validation_name.jpg)

When the Agreement specific SSI is saved, the system performs a series of validations. These are summarized in the below table:

Field | Validation Comments | Prevents Record Saving?  
---|---|---  
Name | Must be supplied and unique, otherwise the user will receive the following error message: "Settlement Instruction Names must be unique. There is already a Settlement Instruction named "ABC". | Yes  
Instruments(*) | At least one Instrument ID must be selected for the SSI to apply to. If not, the **Save** button will become or remain disabled. | Yes  
Instrument Type | At least one Instrument Type must be selected for the SSI to apply to. If not, the **Save** button will become or remain disabled. | Yes  
Cash Instrument | At least one cash instrument must be selected for the SSI to apply to. If not, the **Save** button will become or remain disabled. | Yes  
Custodian | Must be supplied. If not, the **Save** button will become or remain disabled. | Yes  
Account Number | Account Number must be supplied as part of the SSI details. If not, the **Save** button will become or remain disabled. | Yes  
Account Name | Account Name is a required element in SSI record. If not, the **Save** button will become or remain disabled. | Yes  
  
The system will prevent the SSI being saved until it is made unique.

**Note:** If the Approvals functionality is enabled, the SSI record will be not be truly saved against the agreement until it is fully approved. Instead the record will become locked for approval until either approved or rejected. Similarly, the validations will not be performed until the approving user attempts to approve the record. See [Approvals Process for SSI's](<agreement_ssi_approvals.md>) on an Agreement for more details.

## Deleting an SSI

**Agreement**

  1. Locate the SSI that needs to be removed from either the Entity or Agreement.

     * Entity - find the entity, click the **Edit** button, and then click the _SSI_ tab.
     * Agreements - find the agreement, click the **Edit** button, select the _Misc_ tab then Settlement Instructions. **Note:** \- SSI records that are Entity Level cannot be edited or deleted at this level. They will be grayed out.
  2. To delete the corresponding SSI, click on the delete ![delete_icon.jpg](Images/delete_icon.jpg) icon. As this action is not reversible, the user will be prompted with a warning message asking to confirm the deletion or cancel the action. The user can click **Cancel** or **Delete**.

**Note:**

     1. If Approvals are enabled, then the record will not be deleted until approved. See [Approvals Process for SSI's on an Agreement](<agreement_ssi_approvals.md>) for details)
     2. For an Entity SSI, it will simultaneously delete the SSI from all those underlying Agreements that reference it.
     3. The SSI will permanently be deleted once the delete ![delete_icon.jpg](Images/delete_icon.jpg) icon has been clicked an no warning message will appear before it is deleted.
     4. The settlement instructions saved for collateral movements on any affected Agreements will not be altered by this delete. However, any future collateral movements for the same will be.
     5. Any Entity SSI Data changes are [audited](<audit.md>) in the standard way.



## Setting an SSI Default

It is possible to create multiple SSI records per Settlement Instruction Type. Within these same levels (i.e. per Instruction Type per Agreement SSI and per Instruction Type per Entity SSI) it is also possible to set one or more SSI records (subject to validation) as "default" Agreement Level SSI records that are set as default are automatically applied to matching collateral movements. See [Understanding SSI hierarchy, defaults and derivation](<agreements_settleinstr.md#understanding-ssi-hierarchy>) for more information on this matching process.

To set the Principal and/or Counterparty Settlement Instruction as a default, click on the ![settlement_default.jpg](Images/settlement_default.jpg) and then click on the **Set Default** button.

The system validates that the criteria on the selected record are unique among other Agreement SSI records of the same Type. An Agreement SSI record can only be set as the default if its criteria are unique within the Type. The SSI criteria are not overlapping with any existing Agreement SSI records of the same Type that have already been set as default.

The SSI records are validated for overlap within Type by comparing values in the following fields: * Collateral Types * Movement Types * Direction(s) * Items * Applies To

to existing Agreement SSI records that are set as default. Should an overlap be detected, the system will raise an error message detailing the names of the overlapping Agreement SSI records-.

![settlement_set_as_default_error.jpg](Images/settlement_set_as_default_error.jpg)

In order to proceed, the overlap must be resolved, either by amending the overlapping criteria, or removing the default from the existing overlapped Agreement SSI record, and then re-applying the set default option.

## Removing an SSI Default

Entity or Agreement SSI records that have been set as default can be amended to remove the default setting.

To remove a default Settlement Instruction, click on the ![settlement_default.jpg](Images/settlement_default.jpg) again then click the **Remove Default** button.

**Note:** If the Entity SSI is selected, the Remove Default menu option will not be shown. Entity SSI records can only be amended from within the corresponding Entity's form.

Repeat the above steps to remove the default setting from several Entity or Agreement SSI records.

The SSI selected is updated to no longer be set as default, as indicated by no icon in the Default column.

**Note:** If Approvals functionality is enabled, the SSI record will be not be truly updated until it is fully approved. Instead the record will become locked for approval until either approved or rejected. See [Approval Process for SSI's on an Entity](<entities_approvals.md>) or [Approvals Process for SSI's on an Agreement](<agreement_ssi_approvals.md>) for more details.

## How to Make an Entity SSI Agreement Specific

The system allows the entering of SSI details at Entity which are then applied to any Agreements that reference that Entity. In many cases this is sufficient as the SSI's for the Agreement are identical.

Where the details are not identical, specific Agreement level SSI records can be entered on the Agreement itself and these will override any comparable Entity level SSI records. See [Understanding SSI hierarchy](<agreements_settleinstr.md#understanding-ssi-hierarchy>) for more details.

Often, the actual details of Agreement Level SSI's are very similar to those at the Parent Entity, often with minor differences in account numbers and names.

The system reduces the manual effort involved in creating Agreement level SSI, by allowing a user to take an existing Entity Level SSI on an Agreement and use it to create an Agreement specific level SSI with amended details.

To modify the Entity SSI, determine whether the Principal or Counterparty Entity level SSI needs to be specific to the Agreement. If Principal, locate the relevant Entity SSI record in the upper grid; if Counterparty the lower pane.

**Procedure**

  1. Click on the ![dotdotdot.jpg](Images/dotdotdot.jpg) icon to enable the button **_Make SSI Agreement Specific_**. Once the button is clicked, a new settlement instruction form opens with pre-populated SSI detail data taken from the Entity level SSI.
  2. Input a Name for the New Agreement specific SSI record.
  3. Make changes to the SSI record as required. Changes can be made to any of the following fields:

     * Movement Type(s)
     * Directions(s)
     * Instrument Types (or Instrument ID's)
     * Apply to field (if cash Instrument SSI type)
     * Custodian
     * Account Number
     * Account Name
     * Beneficiary Number
     * Beneficiary Name
     * Reference
     * Comment
     * Settlement Offset
     * Place of Settlement

**Note:** The SSI type cannot be altered. If the original Entity SSI was for type Debt Instrument, the Entity specific SSI cannot be created for type Debt Instrument ID. Type must remain identical.

  4. Once required changes have been made, click the **Save** button. A series of validations will occur and then the new Agreement SSI record will be committed if all the validations pass.

     * The name must be **unique** within Agreement level SSI's.
     * There must not be overlap between the Instructions / Instrument Types / Cash Instruments on the Agreement level SSI and any existing Agreement SSI's.
     * The newly created Agreement specific must differ from the Entity SSI from which it originated.
  5. Assuming validations were passed, the newly created Agreement specific SSI is added to the grid, and available for use.




**Note:** If you have [Approvals](<agreements_approvals.md>) functionality [enabled](<system_configuration.md#database-approvals>), the SSI record will be not be truly saved against the agreement, until it is fully approved. Instead the record will become locked for approval until either approved or rejected. See [Approvals Process for SSI's on an Agreement](<agreement_ssi_approvals.md>) for more details.

## How SSI's are derived on Collateral Movements

The system derives which SSI's should be selectable on Collateral Movements according to the following general methodology.

  * The settlement instructions screen on the Agreement is used as the source of SSI records. (i.e. filtered out SSI records are not considered)
  * The system will query for an Agreement level and then Entity level SSI record where the SSI record covers the security on the collateral movement and where the movement's characteristics match the SSI criteria:

    1. The **Margin Type** of the movement matches the **collateral type** of the SSI record. (that is a lock up movement looks for a lock up SSI) 
    2. The **type** of the movement is covered by the **Applies To** value of the SSI record. (that is, an interest cash movement looks for an interest SSI.) 
    3. The **Movement Type** of the movement matches the **Movement Type** value on the SSI record (that is if the movement is a Deliver, it looks for a Deliver SSI)
    4. The **Direction** of the Movement matches the **directions** value on the SSI record.
    5. Should there be matching Agreement and Entity level SSI records, the Entity Level SSI records are filtered out. If the only matching SSI records are Entity Level they are retained.
    6. The system then evaluates whether any of the matching SSI records are **set as default**.
    7. If there is a single SSI record set as default, that is **automatically applied** to the movement.
    8. If there are numerous SSI records set as default, the system **automatically applies** the default SSI record which is defined for the specific Instrument ID
    9. The remaining matching SSI records are not automatically applied to the movement, but are available to be user selected in the movement's instruction drop-down fields.



Specifically, for a **Cash Instrument** **_Collateral Movement_** , for **Margin Type Variation, and for Movement Type Margin** (a standard margin call cash movement) the system will first look to see:

  1. If there are any **Agreement Level Cash Instrument** SSI records with **Apply To** value of _Collateral_ and a **Collateral Type** of Variation with matching **Movement Type** and **Direction**. If so proceed to step 2) If there are not, proceed to step 3) 
  2. The system then checks if one of these matching Agreement SSI records are set as default
     1. If there is, it is **automatically applied** to the movement.
     2. If not, no SSI record is automatically applied to the movement.
     3. However, Irrespective of a) or b) the remaining (non default) Agreement SSI records although not automatically applied to the movement, but are available to be user selected in the movement's instruction drop-down fields.
  3. If no matching Agreement Level SSI record was found in step 1) , the system will see if there are any **Entity Level Cash Instrument SSI** records, again with the same Apply To, Collateral Type, Movement Type, and Direction criteria. If there are proceed to step 4). If there are not, proceed to step 5) 
  4. The system checks if one of these matching Entity SSI records are set as default
     1. If there is, it is **automatically applied** to the movement.
     2. If not, no SSI record is automatically applied to the movement.
     3. However, Irrespective of a) or b) the remaining (non default) Entity SSI records although not automatically applied to the movement, but are available to be user selected in the movement's instruction drop-down fields.
  5. If there no Agreement Level or no Entity Level Cash Instrument SSI record with criteria which cover the collateral movement's attributes can be found, ,then the system deems that no SSI exists for that party for that Instrument and therefore there are no SSI records which can be user selected or automatically applied to the movement.



**Note:** The process is applied to both Principal and Counterparty, and that the SSI records returned do not have to be at the same level. That is, the Principal may have the SSI record at the Entity level, while the Counterparty's are taken from Agreement level. Or vice versa.

The process for a **Debt, Equity and Letter of Credit Instrument Collateral Movements** is essentially the same but with additional steps. Specifically, SSI records are checked in the following order. (Although the below process describes a Debt security SSI derivation, the process is identical for an Equity or Letter of Credit securities.)

  1. First the system checks to see if there are any Agreement Level Debt Instrument ID or Agreement Level Debt Instrument Type SSI records that cover the same debt instrument as on the movement.
  2. The system then checks to see that the movement characteristics match the SSI criteria.

     1. Margin Type of the collateral movement is checked to see if it matches the Collateral Type of the SSI
     2. Movement Type and Direction are checked to see if they match Movement Type and Direction of the SSI

If there are matching SSI records, proceed to step 3). If there are no matching SSI records proceed to step 8)

  3. The system then evaluates whether any of the matching Agreement level SSI records are **set as default**.

  4. If there is a single SSI record set as default, that is **automatically applied** to the movement.
  5. If there are numerous SSI records set as default, the system **automatically applies** the default SSI record which is defined for the specific Debt Instrument ID.
  6. If none of the matching Agreement level SSI records are set as default, no SSI record is automatically applied to the movement 
  7. Irrespective of whether 5) or 6) the remaining matching SSI records that were not automatically applied are available to be user selected in the movement's instruction drop-down fields. 
  8. If no matching Agreement Level SSI records were found, the system then looks at the **_Entity_** **Level Debt Instrument** **_ID_** or **_Entity_** **Letter Debt Instrument** **_Type_** SSI records, again evaluating whether they:
     1. Cover the Debt Instrument of the movement
     2. Have definition criteria -( Collateral Type, Movement Type and Direction values) that match the corresponding values on collateral movement. If there are proceed, to step 9) otherwise proceed to step 14)
  9. The system then evaluates whether any of these matching Entity level SSI records are **set as default**. 
  10. If there is a single SSI record set as default, that is **automatically applied** to the movement. 
  11. If there are numerous SSI records set as default, the system **automatically applies** the default SSI record which is defined for the specific Debt Instrument ID 
  12. If none of the matching Entity level SSI records are set as default, no SSI record is automatically applied to the movement 
  13. Irrespective of whether 10) or 11) the remaining matching SSI records that were not automatically applied are available to be user selected in the movement's instruction drop-down fields. 
  14. It is deemed that _no SSI records exists for the party for that collateral movement_. and therefore there are no SSI records which can be user selected or automatically populated to the movement 



Again, as with the Cash Instrument collateral movements, the process is applied to both the Counterparty and the Principal to locate SSI's for both parties.
