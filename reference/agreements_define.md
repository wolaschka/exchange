# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/agreements_define.html

# Define Agreements

**Note:** TLM® Collateral Management license use is governed by Business Line. Before proceeding, please ensure that the correct license is in place to use each Business Line (OTC, Repo, Securities Lending, Central Clearing). The use of Client Clearing functionality may require an additional license. Please check with a SmartStream representative for any questions related to license entitlement.

## Central Clearing

Section | Steps | Description  
---|---|---  
General | 1 | Enter the **Agreement Name**. This should be the name that will be reference across the system.  
  
Agreement names must be unique. The maximum number of characters allowed is 255.  
| 2 | Select the **Agreement Type**. This list is limited to those agreement types which have been defined against the business line Central Clearing.  
Entities | 3 | Select the **Principal** with whom the collateral agreement has been signed.  
| 4 | If the Principal has a **Credit Support Provider** , it can be recorded in the field.  
| 5 | Select the **Principal Managing Location** city which is responsible for managing the agreement. The city selected is used to calculate dates and times that are used and displayed for Margin Call and Interest Processing throughout the system.  
  
See [Understanding Dates and Times](<understand_date_times.md>) for more information.  
  
**Note:** As Principal Managing Location governs the time stamps applied to Margin Calls and Interest Calculations. Caution is recommended if a change is made when open margin calls / Interest Payments exist.  
| 6 | Select the **Counterparty** with whom the collateral agreement has been signed.  
| 7 | If the Counterparty has a **Credit Support Provider** , it can be recorded in the field.  
| 8 | If required, select a **Managing Location** city for the Counterparty.  
Clearing Details | 9 | Select the **Margin Type** for the Agreement. Margin Type determines what form of margin requirement and collateral can be associated to the agreement.  
  
There are four choices:  
Lock Up  
Variation  
Surplus  
Guarantee  
  
Once set, Margin Type cannot be edited.  
  
**Note:** When the Margin Type is set to Lockup, trade coverage can be defined but no trades are assigned. See [OTC Lock Up Only](<>) regarding the rules.  
| 10 | Select the **Clearing Client** for the Agreement.  
Calculation Details | 11 | Select the agreement **Currency**. This is the base currency in which all calculations will be made for the agreement.  
| 12 | Select the **Status** for the Agreement. There are three options:  
  
**Active** \- This is the default for new agreements. All active agreements are subject to Margin Calculations.  
  
**Inactive** \- Agreements that are in this status are not subject to the Margin Calculation task, nor can they be subject to single margin calculation task.  
  
**Monitor** \- Agreements in this status are subject to Margin Calculations, but will always result in No Action Margin Calculation Results. Additionally, the No Action result will have a No Action Type of "Agreement Status of Monitor".  
| 13 | The **Status Detail** field is selectable through a drop down to further explain the Agreement Status. This maybe a useful explanatory suffix where Agreements are in a Monitor status.  
| 14 | Select the **Valuation Agent**. The choices are:  
  
Both  
Principal  
Counterparty  
| 15 | Select whether the Agreement is Unilateral (one way) or Bilateral (two-way) by choosing the applicable value in the **Posting Party** drop down.  
  
There are 3 choices:  
  
| Value| Comments  
---|---  
Both| (Default value) The Agreement is deemed to be bilateral. Both the Principal and Counterparty can be required to post collateral depending on the Margin Requirement.  
Principal| The Agreement is deemed to be unilateral. Only the Principal is required to post collateral. Margin Calls generated and Collateral Movements permissible will be reflected.| Counterparty| The Agreement is deemed to be unilateral. Only the Counterparty is required to post collateral. Margin Calls generated and Collateral Movements permissible will be reflected. |  | 16 | Select the **Calculation Type** which should be used for margin calculations for this agreement. The options are:  
Imported Margin Call  
Collateral and Exposure Valuation | 17 | Select the **Price Source** to be used for valuing Instruments in collateral positions and movements for this agreement.  
  
By default, the agreement is set to use whatever Price Source has been set as a default in Reference Data.  
  
To specify a particular Price Source for the agreement, select the required Price source from the Collateral Price Source drop-down. Only one price source can be chosen.  
| 18 | Select the **Foreign Exchange Rate Source** for the Agreement that it should use when converting values into Agreement Currency equivalents. By default, the agreement is set to use whatever Rate Source has been set as a default in Reference Data.  
  
To specify a particular FX Rate Source for the agreement, select the required FX Rate source from the FX Rate Source drop-down. Only one FX Rate source can be chosen.  
| 19 | Select the **Price Quote** type to be used for valuing collateral positions and movements for this agreement. The drop down choices are:  
  
Bid - Typically represents the price at which the collateral instrument could be sold for.  
  
Mid - This is set as the default. Mid prices are mid points between Bid and Ask prices.  
  
Ask - Typically represents the price at which the collateral Instrument can be purchased for. The default selection is Mid.  
Documentation History | 20 | Click the box to activate the calendar and record the Agreement's **Signature Date**.  
| 21 | If applicable, click the box to the right of Signature Date to activate the calendar and record the **Amendment Date**.  
Master Agreement | 22 | Click the box to activate the calendar and record the Master Agreement **Date**.  
| 23 | Enter the Master Agreement version year.  
| 24 | Select the **Governing Law** jurisdiction from the drop down field.  
  
If no suitable item is available, click to create a new Governing Law /Country reference data item.  
  
**Additional Information:**

In order for Margin Calls that are imported for a Central Clearing Agreement to be viewable and actionable in the Central Clearing Workflow, two conditions must be met:

The Agreement must be a member of a Central Clearing Agreement Group.

Users need to be associated to the Central Clearing Agreement Group in order to see its member Agreements in the Workflow.

It is not possible to define an agreement which has the same entity as both the Counterparty and the Principal. If the user tries to save an agreement with both these parties the same, an error message will appear on the page stating that the principal and counterparty cannot be the same. The message can be viewed by clicking on this icon ![bell_warning.jpg](Images/bell_warning.jpg).

Should the [approval process be enabled](<system_configuration.md#database-approvals>), then populating values is subject to an approval process before the values can be committed to the database. See [Approvals Process](<agreements_approvals.md#approvals-process>) for details.

It is possible to define Agreement Level Margin Amounts, Basic Eligibility, Advanced Eligibility, Ratings Based Eligibility, Wrong Way Risk or Concentration Rules, and assign the Trade Types (1) covered by the agreement.

It is also possible to define settlement offsets, add Aliases, Contacts and Notes® for the agreement, as well as view and populate agreement extension values, and add, view and edit settlement instructions.

**Note:** It is only possible to define trade coverage for Client Clearing Agreements when the Margin Type is defined as Variation.

## Clearing Member to Client

Section | Steps | Description  
---|---|---  
General | 1 | Enter the **Agreement Name**. This should be the name that will be referenced across the system.  
  
Agreement names must be unique. The maximum number of characters allowed is 255.  
| 2 | Select the **Agreement Type**. This list is limited to those agreement types which have been defined against the Client Clearing business line.  
  
The selection of the Agreement Type determines which Trade Types are set to be "Included" on a default Trade Coverage Rule on the Trade Types tab of the agreement.  
Entities | 3 | Select the **Principal** Entity with whom the Collateral Agreement has been signed.  
  
**Note:** When selecting, only those Entities types that have Principal and Clearing Member defined are displayed.<br/  
If an existing agreement is editted and the Principal is changed, the system will check to see whether any principal branches are being used in the agreement. If changes are made, the branches will be removed from the agreement.  
| 4 | Select a **Credit Support Provider** which will be used as a source for credit ratings on behalf of the Principal. The Credit Support Provider should be used in cases where the governing legal agreement allows the user the rating of a parent or related entity. If Credit Support Provider is defined, the system will use the ratings defined on the provider for any ratings related terms, even if the Principal Entity has defined credit ratings.  
| 5 | Select the **Principal Managing Location** city which is responsible for managing the agreement. The city selected here is used to calculate dates and times that are used and displayed for Margin Call and Interest Processing throughout the system.  
  
See [Understanding Dates and Times](<understand_date_times.md>) for more information.  
  
This field is used to calculate local time for the time zone that is applicable to the Principal for Notification Time if it is selected to use standard notification timezones.  
  
**Note:** As Principal Managing Location governs the time stamps applied to Margin Calls and Interest Calculations, caution is recommended if a change occurs when open margin calls / Interest Payments exist.  
  
  
| 6 | Select the **Counterparty** with whom the collateral agreement has been signed.  
  
If the Counterparty is changed after saving the agreement, the system will check to see whether any Counterparty contacts or branches are being used in the agreement. If changes are made, the branches and contacts will be removed from the agreement.  
  
Additionally, if changes are made to the Counterparty (or Principal) on an existing Agreement, and Agreement specific SSI's exist, it is possible that those SSI details will now be invalid.  
  
**Note:** Should a change the Managing Location and a Margin Calculation Result is in the Margin Workflow - the Calculation Date / Time on the Margin Call item will update automatically to reflect the revised Principal Managing Location. This may mean that the item is expired from certain states, depending on where in the Workflow it happens to be.  
  
The behavior for Interest Payments / Accruals is somewhat different. If the Principal Managing Location on an Agreement is amended after the Interest Calculation Task has been run, the revised Principal Managing Location time-stamps are not applied. It is therefore necessary to manually recalculate Interest Accruals/Payments for the affected Agreement to update the Interest item correctly.  
| 7 | If the Counterparty has no credit ratings, it is possible to select a **Credit Support Provider** which will be used as a source for credit ratings on behalf of the Counterparty. The Credit Support Provider should be used in cases where the governing legal agreement allows the user to use the rating of a parent or related entity. If Credit Support Provider is defined, the system will use the ratings defined on the provider for any ratings related terms, even if the Counterparty Entity has defined credit ratings.  
| 8 | If required, select a **Managing Location** city for the Counterparty. The city selected here is used to calculate local time in the Counterparty's time zone if it is selected to use standard notification timezones.  
Clearing Details | 9 | Select the **Margin Type** for the Agreement. Margin Type determines:  
  
\- What form of margin requirements and collateral can be associated to the agreement.  
\- Whether exposure trades can be loaded on to the Agreement. Exposure trades can only be imported when value is set as Variation.  
\- What Margin Term Parameter Methods can be set.  
\- Whether Agreement Level Margins can be defined.  
  
There are two choices available for selection.  
Lock Up  
Variation  
  
**Note:** Once set and the agreement created, Margin Type cannot be subsequently edited.  
| 10 | Select the **Central Counterparty** for the Agreement.  
Calculation Details | 11 | Select the agreement **Currency**. This is the base currency in which all calculations will be made for the agreement.  
| 12 | Select the **Valuation Agent**. The choices are:  
Both  
Principal  
Counterparty  
  
Setting the Valuation as Principal will deem the Agreement as Sole Valuation Agreement and invoke additional Workflow steps when Antic Demands or No Actions are generated for such Agreements.  
| 13 | Select whether the Agreement is Unilateral (one way) or Bilateral (two-way) by choosing the applicable value in the **Posting Party** drop down.  
  
There are 3 choices:  
  
| Value| Comments  
---|---  
Both| (Default value) The Agreement is deemed to be bilateral. That is both the Principal and Counterparty can be required to post collateral depending on the Margin Requirement.  
Principal| The Agreement is deemed to be unilateral. Only the Principal is required to post collateral. Margin Calls generated and Collateral Movements permissible will be reflected.| Counterparty| The Agreement is deemed to be unilateral. Only the Counterparty is required to post collateral. Margin Calls generated and Collateral Movements permissible will be reflected.  
  
See [Understanding Posting Party](<misc.md#understanding-posting-party-on-an-agreement>) for more details.  |  | 14 | Select the **Calculation Type** which should be used for margin calculations for this agreement. The options are:  
ISDA Unsecured (this is the default value for new agreements)  
ISDA Security  
| 15 | Select the **Status** for the Agreement.  
  
There are three options:  
  
**Active** \- This is the default for new agreements. All active agreements are subject to Margin Calculations.  
  
**Inactive** \- Agreements that are in this status are not subject to the Margin Calculation task, nor can they be subject to single margin calculation task.  
  
**Monitor** \- Agreements in this status are subject to Margin Calculations, but will always result in No Action Margin Calculation Results. Additionally, the No Action result will have a No Action Type of "Agreement Status of Monitor".  
| 16 | Select the **Status Detail** field from the drop down item to further explain the Agreement Status. This maybe a useful explanatory suffix where Agreements are in a Monitor status.  
Collateral Valuation | 17 | Select the **Collateral Price Source** to be used for valuing Instruments in collateral positions and movements for the agreement. By default, the agreement is set to use whatever Price Source has been set as a default in Reference Data.<br/  
To specify a particular Price Source for the agreement, select the required Price source from the Collateral Price Source drop-down.  
  
Only one price source can be chosen.  
| 18 | Select the **Foreign Exchange Rate Source** for FX Rates that the Agreement should use when converting values into Agreement Currency equivalents.  
  
By default, the agreement is set to use whatever Rate Source has been set as a default in Reference Data.  
  
To specify a particular FX Rate Source for the agreement, select the required FX Rate source from the FX Rate Source drop-down.  
  
Only one FX Rate source can be chosen.  
| 19 | Select the Price Quote type to be used for valuing collateral positions and movements for this agreement.  
  
The drop down choices are:  
Bid - typically represents the price at which the collateral instrument could be sold for.  
Mid - this is set as the default. Mid prices are mid points between Bid and Ask prices.  
Ask - typically represents the price at which the collateral Instrument can be purchased for.  
  
The default selection is Mid.  
Dispute Resolution | 20 | Select the **Dispute Tolerance** from the drop down.  
  
The choices are:  
  
**Use Counterparty Organization Type Tolerance** \- Use the same tolerance method that has been defined on the Counterparty Organization Type.  
  
**Flat** \- Specify a specific flat amount for this agreement; in which case enter a specific amount together with a currency.  
  
**Percent Of Call Amount** \- Specify a specific percentage of call amount for this agreement.  
| 21 | In the **Agree Tolerance Method**, select the value that will apply to the margin calls for this agreement. The choices are:  
  
**a - Not Specified**  
  
**b - Split Flat** \- if selected, the user must enter an absolute amount for the tolerance and a currency for the amount. Any amount entered here will be converted into the Agreement Currency and used to evaluate whether the difference between Principal Call Amount and Counterparty Call Amount is within the defined tolerance. If it is, then the Agreed amount will be calculated as:  
**For a Demand:** Cpty Call Amount + ((Principal Call Amount - Cpty Call Amount) / 2)  
**For an Antic Demand:** Principal Call Amount +((Cpty Call Amount - Principal Call Amount) / 2)   
  
**c- Split Percent of Call Amount** \- if selected, the user must specify a percentage amount in the **Amount** field. The number must be >0 and <100 and can be entered with two decimal places of precision. Similar to above, the amount entered here will be used to evaluate whether the percentage difference between the Principal Call Amount and the Counterparty Call amounts falls within the defined tolerance. If it does, then the Agreed amount will be calculated in the same manner as the split flat.  
  
**d - Agree Flat** \- if selected, the user must enter an absolute amount for the tolerance and a currency for the amount. Any amount entered here will be converted into the Agreement Currency and used to evaluate whether the difference between Principal Call Amount and Counterparty Call Amount is within the defined tolerance on an Anticipated Demand. If it is, then the Agreed amount will be calculated to the higher call amount.  
  
**e - Agree Percent of Call Amount** \- if selected, the user must specify a percentage amount in the next field. The number must be >0 and <100 and can be entered with two decimal places of precision. Similar to above, the amount entered here will be used to evaluate whether the percentage difference between the Principal Call Amount and the Counterparty Call amounts falls within the defined tolerance on an Anticipated Demand. If it does, then Agreed amount will be calculated in the same manner as the agree flat.  
Documentation History | 22 | Select the box to activate the calendar and record the Agreement's **Signature Date**.  
| 23 | If applicable, select the box to activate the calendar and record the date for the **Amendment Date**.  
Master Agreement | 24 | Select the box to activate the calendar and record the **Date**.  
| 25 | Enter the **Version Year**.  
| 26 | Select the **Governing Law** jurisdiction from the drop down field.  
  
It is not possible to define an agreement which has the same entity as both the Counterparty and the Principal.  
  
**Additional Information:**

  * A Client Clearing Agreement must be associated to a Combined Business Lines Agreement Group in order that it can be covered by the Margin Calculation Configuration and Task. Failing to do this will result in no Margin Calculations being calculated or generated for these Agreements. It is therefore highly recommended that upon creation, the Agreement is associated to a Combined Business Lines Agreement Group upon creation.
  * Margin Type, once defined, cannot be later amended. 



## Client to Clearing Member

**Note:** The use of Client Clearing functionality may require an additional license - please check with a SmartStream representative for any questions related to license entitlement.

Section | Steps | Description  
---|---|---  
General | 1 | Enter the **Agreement Name**. This should be the name that is referenced across the system. Agreement names must be unique. The maximum number of characters allowed is 255.  
| 2 | Select the **Agreement Type**. The list is limited to those agreement types which have been defined against the business line Client Clearing.  
  
The selection of the Agreement Type determines which Trade Types are set to be "Included" on the Trade Types tab of the agreement. If changes are made to the Agreement Type, the Trade Types are reset to correspond to the newly selected Agreement Type.  
Entities | 3 | Select the **Principal** with whom the collateral agreement has been signed.  
  
**Note:** When selecting, only those entities that, at a minimum, are defined as types Principal and Clearing Client are returned. If an existing agreement's is changed, the system will check to see whether any principal branches are being used in the agreement. If changes occur, the branches will be removed from the agreement.<br/  
If changes occur to the Principal (or Counterparty) on an existing Agreement, and Agreement specific SSI's exist, it is possible that the SSI details will now be invalid.  
| 4 | Select the **Principal Managing Location** city which is responsible for managing the agreement. The field is mandatory. The city selected here is used to calculate dates and times that are used and displayed for Margin Call and Interest Processing throughout the system. See [Understanding Dates and Times](<understand_date_times.md>) for more information.  
  
The field is used to calculate local time for the time zone that is applicable to the Principal for Notification Time if it is selected to use standard notification timezones.  
  
**Note:** As Principal Managing Location governs the time stamps applied to Margin Calls and Interest Calculations, caution is recommended if a change is made when open margin calls / Interest Payments exist.  
  
Should a change occur, the Managing Location and a Margin Calculation Result is in the Margin Workflow - the Calculation Date / Time on the Margin Call item will update automatically to reflect the revised Principal Managing Location. This may mean that the item is expired from certain states, depending on where in the Workflow it happens to be. The behavior for Interest Payments / Accruals is somewhat different. If the Principal Managing Location on an Agreement is amended after the Interest Calculation Task has been run, the revised Principal Managing Location time-stamps are not applied. It is therefore necessary to manually recalculate Interest Accruals/Payments for the affected Agreement to update the Interest item correctly.  
| 5 | If the Principal has no credit ratings, it is possible to select a **Credit Support Provider** which will be used as a source for credit ratings on behalf of the Principal.  
  
The Credit Support Provider should be used in cases where the governing legal agreement allows the user to use the rating of a parent or related entity. If Credit Support Provider is defined, the system will use the ratings defined on the provider for any ratings related terms, even if the Principal Entity has defined credit ratings.  
| 6 | Select the **Counterparty** with whom the collateral agreement has been signed. Select for those Entities that, at a minimum, are defined as types of Clearing Member and Central Counterparty.  
  
If modifying an existing agreement and changes are made to the Counterparty, the system will check to see whether any Counterparty contacts or branches are being used in the agreement.  
  
If the changes is made, the branches and contacts will be removed from the agreement.  
  
If changes occur to the Counterparty (or Principal) on an existing Agreement, and Agreement specific SSI's exist, it is possible that those SSI details will now be invalid. The system issues warnings and a check should be done to ensure the validity of the SSIs.  
| 7 | If required, select a **Counterparty Managing Location** city. The city selected here is used to calculate local time in the Counterparty's time zone if it is selected to use standard notification timezones.  
| 8 | If the Counterparty has no credit ratings, it is possible to select a **Credit Support Provider** which will be used as a source for credit ratings on behalf of the Counterparty. The Credit Support Provider should be used in cases where the governing legal agreement allows the user to use the rating of a parent or related entity. If Credit Support Provider is defined, the system will use the ratings defined on the provider for any ratings related terms, even if the Counterparty Entity has defined credit ratings.  
Clearing Details | 9 | Select the **Margin Type** for the Agreement.  
  
Margin Type determines:  
\- What form of margin requirements and collateral can be associated to the agreement.  
\- Whether exposure trades can be loaded on to the Agreement That is, exposure trades can only be imported when value is set as Variation.  
\- What Margin Term Parameter Methods can be set.  
\- Whether Agreement Level Margins can be defined.  
  
There are two choices available for selection.  
Lock Up  
Variation  
  
**Note:** Once set and the agreement has been saved, Margin Type cannot be subsequently edited.  
| 10 | Select the **Central Counterparty** for the Agreement.  
Calculation Details | 11 | Select the Agreement **Currency**. This is the base currency in which all calculations will be made for the agreement.  
| 12 | Select the **Valuation Agent**. The choices are:  
  
Both  
Principal  
Counterparty  
  
Setting the Valuation as Principal will deem the Agreement as Sole Valuation Agreement and invoke additional Workflow steps when Antic Demands or No Actions are generated for such Agreements.  
| 13 | Select whether the Agreement is Unilateral (one way) or Bilateral (two-way) by choosing the applicable value in the **Posting Party** drop down.  
  
There are 3 choices:  
  
| Value| Comments  
---|---  
Both| (Default value) The Agreement is deemed to be bilateral. That is both the Principal and Counterparty can be required to post collateral depending on the Margin Requirement.  
Principal| The Agreement is deemed to be unilateral. Only the Principal is required to post collateral. Margin Calls generated and Collateral Movements permissible will be reflected.| Counterparty| The Agreement is deemed to be unilateral. Only the Counterparty is required to post collateral. Margin Calls generated and Collateral Movements permissible will be reflected.  
  
See [Understanding Posting Party](<misc.md#understanding-posting-party-on-an-agreement>) for more details.  |  | 14 | Select the **Calculation Type** which should be used for margin calculations for this agreement.  
  
The options are:  
ISDA Unsecured (this is the default value for new agreements)  
ISDA Security  
| 15 | Select the **Status** for the Agreement.  
  
There are three options:  
  
Active - (This is the default for new agreements. All active agreements are subject to Margin Calculations)  
  
Inactive - agreements that are in this status are not subject to the Margin Calculation task, nor can they be subject to single margin calculation task.  
  
Monitor - Agreements in this status are subject to Margin Calculations, but will always result in No Action Margin Calculation Results. Additionally, the No Action result will have a No Action Type of "Agreement Status of Monitor".  
| 16 | Select the **Status Detail** from the drop down item to further explain the Agreement Status. This maybe a useful explanatory suffix where Agreements are in a Monitor status.  
Collateral & Exposure Valuation | 17 | Select the **Collateral Price Source** to be used for valuing Instruments in collateral positions and movements for the agreement.  
  
By default, the agreement is set to use whatever Price Source has been set as a default in Reference Data.  
  
To specify a particular Price Source for the agreement, select the required Price source from the Collateral Price Source drop-down.  
  
Only one price source can be chosen.  
| 18 | Select the Foreign Exchange Rate Source for the Agreement that should be used when converting values into Agreement Currency equivalents.  
  
By default, the agreement is set to use whatever Rate Source has been set as a default in Reference Data.  
  
To specify a particular FX Rate Source for the agreement, select the required FX Rate source from the FX Rate Source drop-down.  
  
Only one FX Rate source can be chosen.  
| 19 | Select the **Price Quote** type to be used for valuing collateral positions and movements for this agreement.  
  
The drop down choices are:  
Bid - typically represents the price at which the collateral instrument could be sold for.  
Mid - this is set as the default. Mid prices are mid points between Bid and Ask prices.  
Ask - typically represents the price at which the collateral Instrument can be purchased for.  
  
The default selection is Mid.  
Dispute Resolution | 20 | Select the **Dispute Tolerance** from the drop down.  
  
The choices are:  
  
**Use Counterparty Organization Type Tolerance** \- Use the same tolerance method that has been defined on the Counterparty Organization Type.  
  
**Flat** \- Specify a specific flat amount for this agreement; in which case enter a specific amount together with a currency.  
  
**Percent Of Call Amount** \- Specify a specific percentage of call amount for this agreement.  
| 21 | In the **Agree Tolerance Method** , select the value that will apply to the margin calls for this agreement. The choices are:  
  
**a - Not Specified**  
  
**b - Split Flat** \- if selected, the user must enter an absolute amount for the tolerance and a currency for the amount. Any amount entered here will be converted into the Agreement Currency and used to evaluate whether the difference between Principal Call Amount and Counterparty Call Amount is within the defined tolerance. If it is, then the Agreed amount will be calculated as:  
**For a Demand:** Cpty Call Amount + ((Principal Call Amount - Cpty Call Amount) / 2)  
**For an Antic Demand:** Principal Call Amount +((Cpty Call Amount - Principal Call Amount) / 2)   
  
**c- Split Percent of Call Amount** \- if selected, the user must specify a percentage amount in the **Amount** field. The number must be >0 and <100 and can be entered with two decimal places of precision. Similar to above, the amount entered here will be used to evaluate whether the percentage difference between the Principal Call Amount and the Counterparty Call amounts falls within the defined tolerance. If it does, then the Agreed amount will be calculated in the same manner as the split flat.  
  
**d - Agree Flat** \- if selected, the user must enter an absolute amount for the tolerance and a currency for the amount. Any amount entered here will be converted into the Agreement Currency and used to evaluate whether the difference between Principal Call Amount and Counterparty Call Amount is within the defined tolerance on an Anticipated Demand. If it is, then the Agreed amount will be calculated to the higher call amount.  
  
**e - Agree Percent of Call Amount** \- if selected, the user must specify a percentage amount in the next field. The number must be >0 and <100 and can be entered with two decimal places of precision. Similar to above, the amount entered here will be used to evaluate whether the percentage difference between the Principal Call Amount and the Counterparty Call amounts falls within the defined tolerance on an Anticipated Demand. If it does, then Agreed amount will be calculated in the same manner as the agree flat.  
Documentation History | 22 | Select the box to activate the calendar and record the Agreement's **Signature Date**.  
| 23 | If applicable, select the box to activate the calendar and record the date for the **Amendment Date**.  
Master Agreement | 24 | Select the box to activate the calendar and record the **Date**.  
| 25 | Enter the **Version Year**.  
| 26 | Select the **Governing Law** jurisdiction from the drop down field.  
  
It is not possible to define an agreement which has the same entity as both the Counterparty and the Principal.  
  
## OTC

Section | Steps | Description  
---|---|---  
General | 1 | Enter the **Agreement Name**. This should be the name that is referenced across the system. Agreement names must be unique. The maximum number of characters allowed is 255.  
| 2 | Select the **Agreement Type**. This list is limited to those agreement types which have been defined against the business line OTC.  
  
The selection of the Agreement Type determines which Trade Types are set to be "Included" on the Trade Types tab of the agreement. If there is a change to the Agreement Type, the Trade Types are reset to correspond to the newly selected Agreement Type.  
Entities | 3 | Select the **Principal** with whom the collateral agreement has been signed.  
  
If an existing agreement is edited and the Principal is changed, the system will check to see whether any principal branches are being used in the agreement. If change are made, the branches will be removed from the agreement.  
| 4 | Select the **Principal Managing Location** city which is responsible for managing the agreement. The city selected here is used to calculate dates and times that are used and displayed for Margin Call and Interest Processing throughout the system.  
  
See [Understanding Dates and Times](<understand_date_times.md>) for more information.  
| 5 | If the Principal has no credit ratings, it is possible to select a **Credit Support Provider** which will be used as a source for credit ratings on behalf of the Principal. The Credit Support Provider should be used in cases where the governing legal agreement allows the user to use the rating of a parent or related entity. If Credit Support Provider is defined, the system will use the ratings defined on the provider for any ratings related terms, even if the Principal Entity has defined credit ratings.  
  
The field is used to calculate local time for the time zone that is applicable to the Principal for Notification Time if standard notification timezone is selected.  
  
**Note:** As Principal Managing Location governs the time stamps applied to Margin Calls and Interest Calculations, caution is recommended if changes are being made when open margin calls / Interest Payments exist.  
  
Should a change occur, the Managing Location and a Margin Calculation Result is in the Margin Workflow - the Calculation Date / Time on the Margin Call item will update automatically to reflect the revised Principal Managing Location. This may mean that the item is expired from certain states, depending on where in the Workflow it happens to be.  
  
The behavior for Interest Payments / Accruals is somewhat different. If the Principal Managing Location on an Agreement is amended after the Interest Calculation Task has been run, the revised Principal Managing Location time-stamps are not applied. It is therefore necessary to manually recalculate Interest Accruals/Payments for the affected Agreement to update the Interest item correctly.  
| 6 | Select the **Counterparty** with whom the collateral agreement has been signed.  
  
If an existing agreement is being edited and a change occurs on the Counterparty, the system will check to see whether any Counterparty contacts or branches are being used in the agreement. If a change is made, the branches and contacts will be removed from the agreement.  
  
Additionally, if changes occur on the Counterparty (or Principal) on an existing Agreement, and Agreement specific SSI's exist, it is possible that those SSI details will now be invalid.  
| 7 | Select a Managing Location city for the **Counterparty**. The city selected here is used to calculate local time in the Counterparty's time zone if the standard notification timezone is selected.  
| 8 | If the Counterparty has no credit ratings, it is possible to select a **Credit Support Provider** which will be used as a source for credit ratings on behalf of the Counterparty. The Credit Support Provider should be used in cases where the governing legal agreement allows the user to use the rating of a parent or related entity. If Credit Support Provider is defined, the system will use the ratings defined on the provider for any ratings related terms, even if the Counterparty Entity has defined credit ratings.  
Calculation Details | 9 | Select the Agreement **Currency**. This is the base currency in which all calculations will be made for the agreement.  
| 10 | Select the **Valuation Agent**.  
  
The choices are:  
Both  
Principal  
Counterparty  
  
Setting the Valuation as Principal will deem the Agreement as Sole Valuation Agreement and invoke additional Workflow steps when Antic Demands or No Actions are generated for such Agreements.  
| 11 | Select whether the Agreement is Unilateral (one way) or Bilateral (two-way) by choosing the applicable value in the **Posting Party** drop down.  
  
There are 3 choices:  
  
| Value| Comments  
---|---  
Both| (Default value) The Agreement is deemed to be bilateral. That is both the Principal and Counterparty can be required to post collateral depending on the Margin Requirement.  
Principal| The Agreement is deemed to be unilateral. Only the Principal is required to post collateral. Margin Calls generated and Collateral Movements permissible will be reflected.| Counterparty| The Agreement is deemed to be unilateral. Only the Counterparty is required to post collateral. Margin Calls generated and Collateral Movements permissible will be reflected.  
  
See [Understanding Posting Party](<misc.md#understanding-posting-party-on-an-agreement>) for more details.  |  | 12 | Select the **Calculation Type** which should be used for margin calculations for this agreement.  
  
The options are:  
ISDA Unsecured (this is the default value for new agreements)  
ISDA Security  
| 13 | Select the **Initial Calculation Type** which should be used for this agreement.  
  
The options are:  
Netted Against Variation  
Not Netted Against Variation.  
| 14 | Select the **Collateral Allocation** Method that should be used for this Agreement.  
  
The options are:  
  
**Auto Allocate** \- This is the default selection. If selected, the system will allocate collateral to any lock up requirements that exist first. Once this occurs, if any surplus collateral exists, it will be allocated to variation requirements.  
  
Under this method, all collateral balances and collateral movements reflected in the system will be of Collateral Margin Type "Variation". These forms of agreements are often termed auto-allocating.  
  
**Segregate LockUp And Variation** \- This value is permissible only if Lock Up Calculation Type has been defined as Not Netted Against Variation.  
  
If selected, the following behavior will occur:  
\- The system will treat the lock up and variation margin requirements for a margin call for an Agreement separately.  
\- This will result in separate variation and lock up margin call requirements being generated when margin calculations run.  
\- Each of these margin call requirements will be placed in the applicable Workflow queues, depending on whether the requirement results in a Demand, Antic Demand, No Action or Demand/Antic Demand.  
\- Consequently each margin call requirement on the margin call has its own life-cycle and is treated independently through the margin call Workflow queues.  
\- Additionally, all collateral positions on the Agreement will also be treated separately. That is, collateral will be specifically defined as being of Margin Type "Variation" or "LockUp".  
\- Collateral Positions (and in transit collateral trades) of Lock Up Collateral Margin Type will be applied solely to Lock Up Margin requirements.  
\- Conversely, Collateral Positions (and in transit collateral trades) of Variation Collateral Margin Type will be applied solely to Variation Margin requirements.  
\- Surpluses in either Collateral Margin Type are not automatically applied to any deficit in the other.  
  
See Working with OTC Agreements that Segregate Lock Up and Variation Margin for more details.  
  
Segregate LockUp and Variation can only be selected if Lock Up Calculation Type has been defined as Non Netted Against Variation.  
  
This is a key agreement defining parameter, with implications for how margin calls are calculated.  
| 15 | Select the **Status** for the Agreement.  
  
There are three options:  
Active - This is the default for new agreements. All active agreements are subject to Margin Calculations.  
Inactive - Agreements that are in this status are not subject to the Margin Calculation task, nor can they be subject to single margin calculation task.  
Monitor - Agreements in this status are subject to Margin Calculations, but will always result in No Action Margin Calculation Results. Additionally, the No Action result will have a No Action Type of "Agreement Status of Monitor"  
| 16 | Select the **Status Detail** from the drop down item to further explain the Agreement Status. This maybe a useful explanatory suffix where Agreements are in a Monitor status.  
Collateral & Exposure Valuation | 17 | select the **Collateral Price Source** to be used for valuing Instruments in collateral positions and movements for the agreement.  
  
By default, the agreement is set to use whatever Price Source has been set as a default in Reference Data.  
  
To specify a particular Price Source for the agreement, select the required Price source from the Collateral Price Source drop-down.  
  
Only one price source can be chosen.  
| 18 | Select the source for **Foreign Exchange Rate Source** that the Agreement should use when converting values into Agreement Currency equivalents.  
  
By default, the agreement is set to use whatever Rate Source has been set as a default in Reference Data.  
  
To specify a particular FX Rate Source for the agreement, select the required FX Rate source from the FX Rate Source drop-down.  
  
Only one FX Rate source can be chosen.  
| 19 | Select the **Price Quote** type to be used for valuing collateral positions and movements for this agreement.  
  
The drop down choices are:  
Bid - typically represents the price at which the collateral instrument could be sold for.  
Mid - this is set as the default. Mid prices are mid points between Bid and Ask prices.  
Ask - typically represents the price at which the collateral Instrument can be purchased for.  
  
The default selection is Mid.  
Dispute Resolution | 20 | Select the **Dispute Tolerance** from the drop down.  
  
The choices are:  
  
**Use Counterparty Organization Type Tolerance** \- Use the same tolerance method that has been defined on the Counterparty Organization Type.  
  
**Flat** \- Specify a specific flat amount for this agreement; in which case enter a specific amount together with a currency.  
  
**Percent Of Call Amount** \- Specify a specific percentage of call amount for this agreement.  
| 21 | In the **Agree Tolerance Method** , select the value that will apply to the margin calls for this agreement. The choices are:  
  
**a - Not Specified**  
  
**b - Split Flat** \- if selected, the user must enter an absolute amount for the tolerance and a currency for the amount. Any amount entered here will be converted into the Agreement Currency and used to evaluate whether the difference between Principal Call Amount and Counterparty Call Amount is within the defined tolerance. If it is, then the Agreed amount will be calculated as:  
**For a Demand:** Cpty Call Amount + ((Principal Call Amount - Cpty Call Amount) / 2)  
**For an Antic Demand:** Principal Call Amount +((Cpty Call Amount - Principal Call Amount) / 2)   
  
**c- Split Percent of Call Amount** \- if selected, the user must specify a percentage amount in the **Amount** field. The number must be >0 and <100 and can be entered with two decimal places of precision. Similar to above, the amount entered here will be used to evaluate whether the percentage difference between the Principal Call Amount and the Counterparty Call amounts falls within the defined tolerance. If it does, then the Agreed amount will be calculated in the same manner as the split flat.  
  
**d - Agree Flat** \- if selected, the user must enter an absolute amount for the tolerance and a currency for the amount. Any amount entered here will be converted into the Agreement Currency and used to evaluate whether the difference between Principal Call Amount and Counterparty Call Amount is within the defined tolerance on an Anticipated Demand. If it is, then the Agreed amount will be calculated to the higher call amount.  
  
**e - Agree Percent of Call Amount** \- if selected, the user must specify a percentage amount in the next field. The number must be >0 and <100 and can be entered with two decimal places of precision. Similar to above, the amount entered here will be used to evaluate whether the percentage difference between the Principal Call Amount and the Counterparty Call amounts falls within the defined tolerance on an Anticipated Demand. If it does, then Agreed amount will be calculated in the same manner as the agree flat.  
Documentation History | 22 | Select the box to activate the calendar and record the Agreement's **Signature Date**.  
| 23 | If applicable, select the box to activate the calendar and record the date for the **Amendment Date**.  
Master Agreement | 24 | Select the box to activate the calendar and record the **Date**.  
| 25 | Enter the **Version Year**.  
| 26 | Select the **Governing Law** jurisdiction from the drop down field.  
  
It is not possible to define an agreement which has the same entity as both the Counterparty and the Principal.  
  
## OTC Lock Up Only

Section | Steps | Description  
---|---|---  
General | 1 | Enter the **Agreement Name**. This should be the name that will be referenced across the system. Agreement names must be unique. The maximum number of characters allowed is 255.  
| 2 | Select the **Agreement Type**. This list is limited to those agreement types which have been defined against the business line OTC. The selection of the Agreement Type determines which Trade Types are set to be "Included" on the Trade Types tab of the agreement.  
  
**Note:** OTC Lock Up Only agreement doesn't currently accept trades.  
Entities | 3 | Select the **Principal** with whom the collateral agreement has been signed.  
  
If changes are being made to an existing agreement and the Principal changes, the system will check to see whether any principal branches are being used in the agreement. If a change occurs, the branches will be removed from the agreement.  
| 4 | Select the **Principal Managing Location** city which is responsible for managing the agreement. The city selected here is used to calculate dates and times that are used and displayed for Margin Call and Interest Processing throughout the system. See [Understanding Dates and Times](<understand_date_times.md>) for more information.  
  
The field is used to calculate local time for the time zone that is applicable to the Principal for Notification Time if it is selected to use standard notification timezones.  
  
**Note:** As Principal Managing Location governs the time stamps applied to Margin Calls and Interest Calculations, caution is recommended if a change is made when open margin calls / Interest Payments exist.  
  
Should a change occur, the Managing Location and a Margin Calculation Result is in the Margin Workflow - the Calculation Date / Time on the Margin Call item will update automatically to reflect the revised Principal Managing Location. This may mean that the item is expired from certain states, depending on where in the Workflow it happens to be. The behavior for Interest Payments / Accruals is somewhat different. If the Principal Managing Location on an Agreement is amended after the Interest Calculation Task has been run, the revised Principal Managing Location time-stamps are not applied. It is therefore necessary to manually recalculate Interest Accruals/Payments for the affected Agreement to update the Interest item correctly.  
| 5 | If the Principal has no credit ratings, it is possible to select a **Credit Support Provider** which will be used as a source for credit ratings on behalf of the Principal.  
  
The Credit Support Provider should be used in cases where the governing legal agreement allows the user to use the rating of a parent or related entity.  
  
If Credit Support Provider is defined, the system will use the ratings defined on the provider for any ratings related terms, even if the Principal Entity has defined credit ratings.  
| 6 | Select the **Counterparty** with whom the collateral agreement has been signed. If the existing agreement is edited and the Counterparty changes, the system will check to see whether any Counterparty contacts or branches are being used in the agreement. If a change is made, the branches and contacts will be removed from the agreement.  
  
Additionally, if changes occur on the Counterparty (or Principal) on an existing Agreement, and Agreement specific SSI's exist, it is possible that those SSI details will now be invalid.  
| 7 | If required, select a **Counterparty Managing Location** city. The city selected here is used to calculate local time in the Counterparty's time zone if it is selected to use standard notification timezones.  
| 8 | If the Counterparty has no credit ratings, it is possible to select a **Credit Support Provider** which will be used as a source for credit ratings on behalf of the Counterparty. The Credit Support Provider should be used in cases where the governing legal agreement allows the user to use the rating of a parent or related entity. If Credit Support Provider is defined, the system will use the ratings defined on the provider for any ratings related terms, even if the Counterparty Entity has defined credit ratings.  
Calculation Details | 9 | Select the Agreement **Currency**. This is the base currency in which all calculations will be made for the agreement.  
| 10 | Select the **Valuation Agent**.  
  
The choices are:  
Both  
Principal  
Counterparty  
  
Setting the Valuation as Principal will deem the Agreement as Sole Valuation Agreement and invoke additional Workflow steps when Antic Demands or No Actions are generated for such Agreements.  
| 11 | Select whether the Agreement is Unilateral (one way) or Bilateral (two-way) by choosing the applicable value in the **Posting Party** drop down.  
  
There are 3 choices:  
  
| Value| Comments  
---|---  
Both| (Default value) The Agreement is deemed to be bilateral. That is both the Principal and Counterparty can be required to post collateral depending on the Margin Requirement.  
Principal| The Agreement is deemed to be unilateral. Only the Principal is required to post collateral. Margin Calls generated and Collateral Movements permissible will be reflected.| Counterparty| The Agreement is deemed to be unilateral. Only the Counterparty is required to post collateral. Margin Calls generated and Collateral Movements permissible will be reflected.  
  
See [Understanding Posting Party](<misc.md#understanding-posting-party-on-an-agreement>) for more details.  
  
**Note:** Collateral Allocation Method is not a selectable option on the Lock Up Only agreement. The value defaults to Lock Up Only within the database when Lock Up Only Calculation type is selected to facilitate the execution of margin calculations and other import validations.  |  | 12 | Select the **Calculation Type** which should be used for margin calculations for this agreement.  
  
The options are:  
ISDA Unsecured (this is the default value for new agreements)  
ISDA Security  
| 13 | **Lockup Calculation Type** is not a selectable option on the Lock Up Only agreement. The value automatically defaults to Lock Up Only Calculation.  
  
The following behavior will occur:  
\- The system will only calculate lock up margin requirements for an Agreement.  
\- The lock up margin call requirement will be placed in the applicable Workflow queues, depending on whether the requirement results in a Demand, Antic Demand, or No Action.  
\- The margin call requirement on the margin call has its own life-cycle and is treated independently through the margin call Workflow states.  
\- Collateral Positions (and in transit collateral trades) will be specifically defined as being of Margin Type Lock Up.  
\- “Variation” collateral positions (and in transit collateral trades) cannot be applied to the margin call or agreement.  
  
**Note:** The Lock Up Calculation Type cannot be changed to create a regular OTC Agreement and vice versa.  
| 14 | Select the **Status** for the Agreement.  
  
There are three options:  
Active - This is the default for new agreements. All active agreements are subject to Margin Calculations.  
Inactive - Agreements that are in this status are not subject to the Margin Calculation task, nor can they be subject to single margin calculation task.  
Monitor - Agreements in this status are subject to Margin Calculations, but will always result in No Action Margin Calculation Results. Additionally, the No Action result will have a No Action Type of "Agreement Status of Monitor".  
| 15 | Select from the drop down item for the **Status Detail** to further explain the Agreement Status. This maybe a useful explanatory suffix where Agreements are in a Monitor status.  
Collateral & Exposure Valuation | 16 | Select the **Collateral Price Source** to be used for valuing Instruments in collateral positions and movements for this agreement.  
  
By default, the agreement is set to use whatever Price Source has been set as a default in Reference Data.  
  
To specify a particular Price Source for the agreement, select the required Price source from the Collateral Price Source drop-down.  
  
Only one price source can be chosen.  
| 17 | Select the source for **Foreign Exchange Rate Source** that the Agreement should use when converting values into Agreement Currency equivalents.  
  
By default, the agreement is set to use whatever Rate Source has been set as a default in Reference Data.  
  
To specify a particular FX Rate Source for the agreement, select the required FX Rate source from the FX Rate Source drop-down.  
  
Only one FX Rate source can be chosen.  
| 18 | Select the **Price Quote** type to be used for valuing collateral positions and movements for this agreement.  
  
The drop down choices are:  
Bid - typically represents the price at which the collateral instrument could be sold for.  
Mid - this is set as the default. Mid prices are mid points between Bid and Ask prices.  
Ask - typically represents the price at which the collateral Instrument can be purchased for.  
  
The default selection is Mid.  
Dispute Resolution | 19 | Select the **Dispute Tolerance** from the drop down.  
  
The choices are:  
  
**Use Counterparty Organization Type Tolerance** \- Use the same tolerance method that has been defined on the Counterparty Organization Type.  
  
**Flat** \- Specify a specific flat amount for this agreement; in which case enter a specific amount together with a currency.  
  
**Percent Of Call Amount** \- Specify a specific percentage of call amount for this agreement.  
| 20 | In the **Agree Tolerance Method** , select the value that will apply to the margin calls for this agreement. The choices are:  
  
**a - Not Specified**  
  
**b - Split Flat** \- if selected, the user must enter an absolute amount for the tolerance and a currency for the amount. Any amount entered here will be converted into the Agreement Currency and used to evaluate whether the difference between Principal Call Amount and Counterparty Call Amount is within the defined tolerance. If it is, then the Agreed amount will be calculated as:  
**For a Demand:** Cpty Call Amount + ((Principal Call Amount - Cpty Call Amount) / 2)  
**For an Antic Demand:** Principal Call Amount +((Cpty Call Amount - Principal Call Amount) / 2)   
  
**c- Split Percent of Call Amount** \- if selected, the user must specify a percentage amount in the **Amount** field. The number must be >0 and <100 and can be entered with two decimal places of precision. Similar to above, the amount entered here will be used to evaluate whether the percentage difference between the Principal Call Amount and the Counterparty Call amounts falls within the defined tolerance. If it does, then the Agreed amount will be calculated in the same manner as the split flat.  
  
**d - Agree Flat** \- if selected, the user must enter an absolute amount for the tolerance and a currency for the amount. Any amount entered here will be converted into the Agreement Currency and used to evaluate whether the difference between Principal Call Amount and Counterparty Call Amount is within the defined tolerance on an Anticipated Demand. If it is, then the Agreed amount will be calculated to the higher call amount.  
  
**e - Agree Percent of Call Amount** \- if selected, the user must specify a percentage amount in the next field. The number must be >0 and <100 and can be entered with two decimal places of precision. Similar to above, the amount entered here will be used to evaluate whether the percentage difference between the Principal Call Amount and the Counterparty Call amounts falls within the defined tolerance on an Anticipated Demand. If it does, then Agreed amount will be calculated in the same manner as the agree flat.  
Documentation History | 21 | Select the box to activate the calendar and record the Agreement's **Signature Date**.  
| 22 | If applicable, select the box to activate the calendar and record the date for the **Amendment Date**.  
Master Agreement | 23 | Select the box to activate the calendar and record the **Date**.  
| 24 | Enter the **Version Year**.  
| 25 | Select the **Governing Law** jurisdiction from the drop down field.  
  
It is not possible to define an agreement which has the same entity as both the Counterparty and the Principal.  
  
## Repo

Section | Steps | Description  
---|---|---  
General | 1 | Enter the **Agreement Name**. This should be the name that will be referenced across the system. Agreement names must be unique. The maximum number of characters allowed is 255.  
| 2 | Select the **Agreement Type**. This list is limited to those agreement types which have been defined against the business line Repo. The selection of the Agreement Type determines which Trade Types are set to be "Included" on the Trade Types tab of the agreement.  
  
If the Agreement Type is changed, the Trade Types are reset to correspond to the newly selected Agreement Type.  
Entities | 3 | Select the **Principal** with whom the collateral agreement has been signed.  
  
If changes are being made to an existing agreement and the Principal changes, the system will check to see whether any principal branches are being used in the agreement. If a change occurs, the branches will be removed from the agreement.  
  
If changes to the Principal (or Counterparty) on an existing Agreement are made and Agreement specific SSI's exist, it is possible that the SSI details will now be invalid.  
| 4 | Select the **Principal Managing Location** city which is responsible for managing the agreement. The city selected here is used to calculate dates and times that are used and displayed for Margin Call and Interest Processing throughout the system. See [Understanding Dates and Times](<understand_date_times.md>) for more information.  
  
The field is used to calculate local time for the time zone that is applicable to the Principal for Notification Time if it is selected to use standard notification timezones.  
  
**Note:** As Principal Managing Location governs the time stamps applied to Margin Calls and Interest Calculations, caution is recommended if a change is made when open margin calls / Interest Payments exist.  
  
Should a change occur, the Managing Location and a Margin Calculation Result is in the Margin Workflow - the Calculation Date / Time on the Margin Call item will update automatically to reflect the revised Principal Managing Location. This may mean that the item is expired from certain states, depending on where in the Workflow it happens to be. The behavior for Interest Payments / Accruals is somewhat different. If the Principal Managing Location on an Agreement is amended after the Interest Calculation Task has been run, the revised Principal Managing Location time-stamps are not applied. It is therefore necessary to manually recalculate Interest Accruals/Payments for the affected Agreement to update the Interest item correctly.  
| 5 | Select the **Counterparty** with whom the collateral agreement has been signed. If the existing agreement is edited and the Counterparty changes, the system will check to see whether any Counterparty contacts or branches are being used in the agreement. If a change is made, the branches and contacts will be removed from the agreement.  
  
Additionally, if changes occur on the Counterparty (or Principal) on an existing Agreement, and Agreement specific SSI's exist, it is possible that those SSI details will now be invalid.  
| 6 | Select a **Counterpary Managing Location** city. The city selected here is used to calculate the local time in the time zone that is applicable to the Counterparty if it is using standard notification timezones.  
Calculation Details | 7 | Select the agreement **Currency**. This is the base currency in which all calculations will be made for the agreement.  
| 8 | Select the **Valuation Agent**.  
  
The choices are:  
Both  
Principal  
Counterparty  
  
Setting the Valuation as Principal will deem the Agreement as Sole Valuation Agreement and invoke additional Workflow steps when Antic Demands or No Actions are generated for such Agreements.  
| 9 | Select whether the Agreement is Unilateral (one way) or Bilateral (two-way) by choosing the applicable value in the **Posting Party** drop down.  
  
There are 3 choices:  
  
| Value| Comments  
---|---  
Both| (Default value) The Agreement is deemed to be bilateral. That is both the Principal and Counterparty can be required to post collateral depending on the Margin Requirement.  
Principal| The Agreement is deemed to be unilateral. Only the Principal is required to post collateral. Margin Calls generated and Collateral Movements permissible will be reflected.| Counterparty| The Agreement is deemed to be unilateral. Only the Counterparty is required to post collateral. Margin Calls generated and Collateral Movements permissible will be reflected.  
  
See [Understanding Posting Party](<misc.md#understanding-posting-party-on-an-agreement>) for more details.  |  | 10 | Select the **Calculation Type** which should be used for margin calculations for this agreement.  
  
The options are:  
Repo Net  
Repo Standard (This is the default for new agreements)  
| 11 | Select the **Status** for the Agreement.  
  
There are three options:  
Active - This is the default for new agreements. All active agreements are subject to Margin Calculations.  
Inactive - Agreements that are in this status are not subject to the Margin Calculation task, nor can they be subject to single margin calculation task.  
Monitor - Agreements in this status are subject to Margin Calculations, but will always result in No Action Margin Calculation Results. Additionally, the No Action result will have a No Action Type of "Agreement Status of Monitor".  
| 12 | Select from the drop down item for the **Status Detail** to further explain the Agreement Status. This maybe a useful explanatory suffix where Agreements are in a Monitor status.  
Collateral & Exposure Valuation | 13 | Select the **Collateral Price Source** to be used for valuing Instruments in collateral positions and movements for this agreement.  
  
By default, the agreement is set to use whatever Price Source has been set as a default in Reference Data.  
  
To specify a particular Price Source for the agreement, select the required Price source from the Collateral Price Source drop-down.  
  
Only one price source can be chosen.  
| 14 | Select the source for **Foreign Exchange Rate Source** that the Agreement should use when converting values into Agreement Currency equivalents.  
  
By default, the agreement is set to use whatever Rate Source has been set as a default in Reference Data.  
  
To specify a particular FX Rate Source for the agreement, select the required FX Rate source from the FX Rate Source drop-down.  
  
Only one FX Rate source can be chosen.  
| 15 | Select the **Price Quote** type to be used for valuing collateral positions and movements for this agreement.  
  
The drop down choices are:  
Bid - typically represents the price at which the collateral instrument could be sold for.  
Mid - this is set as the default. Mid prices are mid points between Bid and Ask prices.  
Ask - typically represents the price at which the collateral Instrument can be purchased for.  
  
The default selection is Mid.  
| 16 | In the **Price Adjust** field, select from the drop-down the Price Date Adjustment that will be used for valuing collateral positions and movements for the Agreement.  
  
Drop down choices are:  
T  
T+1  
T+2  
T+3  
  
**Note:** When a collateral position or movement exists for this Agreement, it must have a Price that matches the defined on the Agreement to be considered a valid price.  
\- Price Source  
\- Price Quote Type  
\- Price Date Adjustment  
  
If any of these pricing attributes do not match between the Agreement and the Instrument, then Instrument will be considered to have no price for the purposes of valuation.  
Trades Filters | 17 | The filters determine which trades should be included in the margin calculation based on their start dates and end dates.  
  
The default setting is to "Include trades starting on or before Today" and "Exclude trades ending on or before Today + 2"  
  
T = Today, where Today is the date on the application server.  
  
When applying these filters, the application always uses Business Days. (Note: There are no calendars in the system and "Business Days" are therefore simply non-weekend days.)  
  
Trades must meet BOTH conditions in order to be included in the calculation.  
  
By clearing the check boxes, trades will be included in the calculation regardless of their start and end dates.  
  
**Note:** Irrespective of the Trades Filter value - the Prices that are used for valuing collateral are those with a Price Adjustment of T.  
Dispute Resolution | 18 | Select the **Dispute Tolerance** from the drop down.  
  
The choices are:  
  
**Use Counterparty Organization Type Tolerance** \- Use the same tolerance method that has been defined on the Counterparty Organization Type.  
  
**Flat** \- Specify a specific flat amount for this agreement; in which case enter a specific amount together with a currency.  
  
**Percent Of Call Amount** \- Specify a specific percentage of call amount for this agreement.  
19 |  | In the **Agree Tolerance Method** , select the value that will apply to the margin calls for this agreement. The choices are:  
  
**a - Not Specified**  
  
**b - Split Flat** \- if selected, the user must enter an absolute amount for the tolerance and a currency for the amount. Any amount entered here will be converted into the Agreement Currency and used to evaluate whether the difference between Principal Call Amount and Counterparty Call Amount is within the defined tolerance. If it is, then the Agreed amount will be calculated as:  
**For a Demand:** Cpty Call Amount + ((Principal Call Amount - Cpty Call Amount) / 2)  
**For an Antic Demand:** Principal Call Amount +((Cpty Call Amount - Principal Call Amount) / 2)   
  
**c- Split Percent of Call Amount** \- if selected, the user must specify a percentage amount in the **Amount** field. The number must be >0 and <100 and can be entered with two decimal places of precision. Similar to above, the amount entered here will be used to evaluate whether the percentage difference between the Principal Call Amount and the Counterparty Call amounts falls within the defined tolerance. If it does, then the Agreed amount will be calculated in the same manner as the split flat.  
  
**d - Agree Flat** \- if selected, the user must enter an absolute amount for the tolerance and a currency for the amount. Any amount entered here will be converted into the Agreement Currency and used to evaluate whether the difference between Principal Call Amount and Counterparty Call Amount is within the defined tolerance on an Anticipated Demand. If it is, then the Agreed amount will be calculated to the higher call amount.  
  
**e - Agree Percent of Call Amount** \- if selected, the user must specify a percentage amount in the next field. The number must be >0 and <100 and can be entered with two decimal places of precision. Similar to above, the amount entered here will be used to evaluate whether the percentage difference between the Principal Call Amount and the Counterparty Call amounts falls within the defined tolerance on an Anticipated Demand. If it does, then Agreed amount will be calculated in the same manner as the agree flat.  
Documentation History | 20 | Select the box to activate the calendar and record the Agreement's **Signature Date**.  
| 21 | If applicable, select the box to activate the calendar and record the date for the **Amendment Date**.  
Master Agreement | 26 | Select the box to activate the calendar and record the **Date**.  
| 22 | Enter the **Version Year**.  
| 23 | Select the **Governing Law** jurisdiction from the drop down field.  
  
It is not possible to define an agreement which has the same entity as both the Counterparty and the Principal.  
  
## Securities Lending

Section | Steps | Description  
---|---|---  
General | 1 | Enter the **Agreement Name**. This should be the name that will be referenced across the system. Agreement names must be unique. The maximum number of characters allowed is 255.  
| 2 | Select the **Agreement Type**. This list is limited to those agreement types which have been defined against the business line Securities Lending. The selection of the Agreement Type determines which Trade Types are set to be "Included" on the Trade Types tab of the agreement.  
  
If the Agreement Type is changed, the Trade Types are reset to correspond to the newly selected Agreement Type.  
Entities | 3 | Select the **Principal** with whom the collateral agreement has been signed.  
  
If changes are being made to an existing agreement and the Principal changes, the system will check to see whether any principal branches are being used in the agreement. If a change occurs, the branches will be removed from the agreement.  
  
If changes to the Principal (or Counterparty) on an existing Agreement are made and Agreement specific SSI's exist, it is possible that the SSI details will now be invalid.  
| 4 | Select the **Principal Managing Location** city which is responsible for managing the agreement. The city selected here is used to calculate dates and times that are used and displayed for Margin Call and Interest Processing throughout the system. See [Understanding Dates and Times](<understand_date_times.md>) for more information.  
  
The field is used to calculate local time for the time zone that is applicable to the Principal for Notification Time if it is selected to use standard notification timezones.  
  
**Note:** As Principal Managing Location governs the time stamps applied to Margin Calls and Interest Calculations, caution is recommended if a change is made when open margin calls / Interest Payments exist.  
  
Should a change occur, the Managing Location and a Margin Calculation Result is in the Margin Workflow - the Calculation Date / Time on the Margin Call item will update automatically to reflect the revised Principal Managing Location. This may mean that the item is expired from certain states, depending on where in the Workflow it happens to be. The behavior for Interest Payments / Accruals is somewhat different. If the Principal Managing Location on an Agreement is amended after the Interest Calculation Task has been run, the revised Principal Managing Location time-stamps are not applied. It is therefore necessary to manually recalculate Interest Accruals/Payments for the affected Agreement to update the Interest item correctly.  
| 5 | Select the **Counterparty** with whom the collateral agreement has been signed. If the existing agreement is edited and the Counterparty changes, the system will check to see whether any Counterparty contacts or branches are being used in the agreement. If a change is made, the branches and contacts will be removed from the agreement.  
  
Additionally, if changes occur on the Counterparty (or Principal) on an existing Agreement, and Agreement specific SSI's exist, it is possible that those SSI details will now be invalid.  
| 6 | Select a **Counterpary Managing Location** city. The city selected here is used to calculate the local time in the time zone that is applicable to the Counterparty if it is using standard notification timezones.  
Calculation Details | 7 | Select the agreement **Currency**. This is the base currency in which all calculations will be made for the agreement.  
| 8 | Select the **Valuation Agent**.  
  
The choices are:  
Both  
Principal  
Counterparty  
  
Setting the Valuation as Principal will deem the Agreement as Sole Valuation Agreement and invoke additional Workflow steps when Antic Demands or No Actions are generated for such Agreements.  
| 9 | Select whether the Agreement is Unilateral (one way) or Bilateral (two-way) by choosing the applicable value in the **Posting Party** drop down.  
  
There are 3 choices:  
  
| Value| Comments  
---|---  
Both| (Default value) The Agreement is deemed to be bilateral. That is both the Principal and Counterparty can be required to post collateral depending on the Margin Requirement.  
Principal| The Agreement is deemed to be unilateral. Only the Principal is required to post collateral. Margin Calls generated and Collateral Movements permissible will be reflected.| Counterparty| The Agreement is deemed to be unilateral. Only the Counterparty is required to post collateral. Margin Calls generated and Collateral Movements permissible will be reflected.  
  
See [Understanding Posting Party](<misc.md#understanding-posting-party-on-an-agreement>) for more details.  |  | 10 | Select the **Calculation Type** which should be used for margin calculations for this agreement.  
  
The options are:  
Repo Net  
Repo Standard (This is the default for new agreements)  
| 11 | Select the **Status** for the Agreement.  
  
There are three options:  
Active - This is the default for new agreements. All active agreements are subject to Margin Calculations.  
Inactive - Agreements that are in this status are not subject to the Margin Calculation task, nor can they be subject to single margin calculation task.  
Monitor - Agreements in this status are subject to Margin Calculations, but will always result in No Action Margin Calculation Results. Additionally, the No Action result will have a No Action Type of "Agreement Status of Monitor".  
| 12 | Select from the drop down item for the **Status Detail** to further explain the Agreement Status. This maybe a useful explanatory suffix where Agreements are in a Monitor status.  
Collateral & Exposure Valuation | 13 | Select the **Collateral Price Source** to be used for valuing Instruments in collateral positions and movements for this agreement.  
  
By default, the agreement is set to use whatever Price Source has been set as a default in Reference Data.  
  
To specify a particular Price Source for the agreement, select the required Price source from the Collateral Price Source drop-down.  
  
Only one price source can be chosen.  
| 14 | Select the source for **Foreign Exchange Rate Source** that the Agreement should use when converting values into Agreement Currency equivalents.  
  
By default, the agreement is set to use whatever Rate Source has been set as a default in Reference Data.  
  
To specify a particular FX Rate Source for the agreement, select the required FX Rate source from the FX Rate Source drop-down.  
  
Only one FX Rate source can be chosen.  
| 15 | Select the **Price Quote** type to be used for valuing collateral positions and movements for this agreement.  
  
The drop down choices are:  
Bid - typically represents the price at which the collateral instrument could be sold for.  
Mid - this is set as the default. Mid prices are mid points between Bid and Ask prices.  
Ask - typically represents the price at which the collateral Instrument can be purchased for.  
  
The default selection is Mid.  
| 16 | In the **Price Adjust** field, select from the drop-down the Price Date Adjustment that will be used for valuing collateral positions and movements for the Agreement.  
  
Drop down choices are:  
T  
T+1  
T+2  
T+3  
  
**Note:** When a collateral position or movement exists for this Agreement, it must have a Price that matches the defined on the Agreement to be considered a valid price.  
\- Price Source  
\- Price Quote Type  
\- Price Date Adjustment  
  
If any of these pricing attributes do not match between the Agreement and the Instrument, then Instrument will be considered to have no price for the purposes of valuation.  
Trades Filters | 17 | The filters determine which trades should be included in the margin calculation based on their start dates and end dates.  
  
The default setting is to "Include trades starting on or before Today" and "Exclude trades ending on or before Today + 2"  
  
T = Today, where Today is the date on the application server.  
  
When applying these filters, the application always uses Business Days. (Note: There are no calendars in the system and "Business Days" are therefore simply non-weekend days.)  
  
Trades must meet BOTH conditions in order to be included in the calculation.  
  
By clearing the check boxes, trades will be included in the calculation regardless of their start and end dates.  
  
**Note:** Irrespective of the Trades Filter value - the Prices that are used for valuing collateral are those with a Price Adjustment of T.  
Dispute Resolution | 18 | Select the **Dispute Tolerance** from the drop down.  
  
The choices are:  
  
**Use Counterparty Organization Type Tolerance** \- Use the same tolerance method that has been defined on the Counterparty Organization Type.  
  
**Flat** \- Specify a specific flat amount for this agreement; in which case enter a specific amount together with a currency.  
  
**Percent Of Call Amount** \- Specify a specific percentage of call amount for this agreement.  
| 19 | In the **Agree Tolerance Method** , select the value that will apply to the margin calls for this agreement. The choices are:  
  
**a - Not Specified**  
  
**b - Split Flat** \- if selected, the user must enter an absolute amount for the tolerance and a currency for the amount. Any amount entered here will be converted into the Agreement Currency and used to evaluate whether the difference between Principal Call Amount and Counterparty Call Amount is within the defined tolerance. If it is, then the Agreed amount will be calculated as:  
**For a Demand:** Cpty Call Amount + ((Principal Call Amount - Cpty Call Amount) / 2)  
**For an Antic Demand:** Principal Call Amount +((Cpty Call Amount - Principal Call Amount) / 2)   
  
**c- Split Percent of Call Amount** \- if selected, the user must specify a percentage amount in the **Amount** field. The number must be >0 and <100 and can be entered with two decimal places of precision. Similar to above, the amount entered here will be used to evaluate whether the percentage difference between the Principal Call Amount and the Counterparty Call amounts falls within the defined tolerance. If it does, then the Agreed amount will be calculated in the same manner as the split flat.  
  
**d - Agree Flat** \- if selected, the user must enter an absolute amount for the tolerance and a currency for the amount. Any amount entered here will be converted into the Agreement Currency and used to evaluate whether the difference between Principal Call Amount and Counterparty Call Amount is within the defined tolerance on an Anticipated Demand. If it is, then the Agreed amount will be calculated to the higher call amount.  
  
**e - Agree Percent of Call Amount** \- if selected, the user must specify a percentage amount in the next field. The number must be >0 and <100 and can be entered with two decimal places of precision. Similar to above, the amount entered here will be used to evaluate whether the percentage difference between the Principal Call Amount and the Counterparty Call amounts falls within the defined tolerance on an Anticipated Demand. If it does, then Agreed amount will be calculated in the same manner as the agree flat.  
Documentation History | 20 | Select the box to activate the calendar and record the Agreement's **Signature Date**.  
| 21 | If applicable, select the box to activate the calendar and record the date for the **Amendment Date**.  
Master Agreement | 22 | Select the box to activate the calendar and record the **Date**.  
| 23 | Enter the **Version Year**.  
| 24 | Select the **Governing Law** jurisdiction from the drop down field.  
  
It is not possible to define an agreement which has the same entity as both the Counterparty and the Principal.
