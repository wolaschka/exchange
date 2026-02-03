# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/agreements_general.html

# General

To get to the General tab, click on the _View Details_ icon for a specific agreement that has been returned from the search criteria. From this tab, the user has access to other tabs such as [Margin Terms](<agreements_marginterms.md#margin-terms>), [Eligibility](<agreements_eligibility.md#eligibility>), [Interest](<agreements_interest.md#interest>), [Concentration Rules](<agreements_concentrationrules.md#concentration-rules>), [Trade Coverage](<agreements_tradecoverage.md#trade-assignment>) and [Misc](<agreements_misc.md#Misc>).

**Note:** TLM® Collateral Management license use is governed by Business Line. Before proceeding, please ensure the correct license in place to use each Business Line (OTC, Repo, Securities Lending, Central Clearing) Use of Client Clearing functionality may require an additional license. Please check with a SmartStream representative for any questions related to license entitlement.

**Note:** Fields in red are required.

## General Tab Fields

Section | Field | Information  
---|---|---  
General | Agreement Name | Enter a name to be referenced across the system. Agreement names must be unique. The maximum number of characters allowed is 255.  
| Agreement Type | The list is limited to the [agreement types](<reference.md#agreement-types>) which have been defined against the business line OTC.  
  
The selection of the Agreement Type determines which Trade Types are set to be "Included" on the Trade Types tab of the agreement. If the Agreement Type is subsequently changed the Trade Types are reset to correspond to the newly selected Agreement Type.  
| Business Line | Business line assigned to the Agreement Type.  
Entities | Principal | The principal with whom the collateral agreement has been signed.  
  
**Note:** If the agreement type is a clearing member, only those entities that are types Principal and Clearing Member are returned.  
| Principal Managing Location | Responsible for managing the agreement. The city selected here is used to calculate dates and times that are used and displayed for Margin Call and Interest Processing throughout the system. See [Understanding Dates and Times](<understand_date_times.md>) in TLM Collateral Management for more information regarding this.  
  
Additionally, this field is used to calculate local time for the time zone that is applicable to the Principal for Notification Time if selected to use standard notification timezones.  
  
**Note:** As Principal Managing Location governs the time stamps applied to Margin Calls and Interest Calculations, caution is recommended if it is changed when open margin calls / Interest Payments exist.  
  
See the following:  
Should the Managing Location change and a Margin Calculation Result is in the Margin Workflow - the Calculation Date / Time on the Margin Call item will update automatically to reflect the revised Principal Managing Location. This may mean that the item is expired from certain states, depending on where in the Workflow it happens to be.  
  
The behavior for Interest Payments / Accruals is somewhat different. If the Principal Managing Location is amended on an Agreement after the Interest Calculation Task has been run, the revised Principal Managing Location time-stamps are not applied. It is therefore necessary to manually recalculate Interest Accruals/Payments for the affected Agreement to update the Interest item correctly.  
| Principal Credit Support Provider (**OTC, Central & Client Clearing Only**) | If the Principal has no credit ratings, it is possible to select a Credit Support Provider which will be used as a source for credit ratings on behalf of the Principal. The Credit Support Provider should be used in cases where the governing legal agreement allows the user to use the rating of a parent or related entity. If Credit Support Provider is defined, the system will use the ratings defined on the provider for any ratings related terms, even if the Principal Entity has defined credit ratings.  
| Counterparty | The counterparty with whom the collateral agreement has been signed.  
| Counterparty Managing Location | Managing Location city for the Counterparty. The city selected here is used to calculate local time in the Counterparty's time zone if the [standard notification timezones](<agreements_marginterms.md#timezone>) has been selected.  
| Counterparty Credit Support Provider (**OTC, Central & Client Clearing Only**) | If the Counterparty has no credit ratings, it is possible to select a Credit Support Provider which will be used as a source for credit ratings on behalf of the Counterparty. The Credit Support Provider should be used in cases where the governing legal agreement allows the user to use the rating of a parent or related entity. If Credit Support Provider is defined, the system will use the ratings defined on the provider for any ratings related terms, even if the Counterparty Entity has defined credit ratings.  
Clearing Details (**Central & Client Clearing Only**) | Margin Type | Determines what form of margin requirement and collateral can be associated to the agreement.  
  
The choices are:  
Lock Up  
Variation  
Surplus  
Guarantee  
  
**Note:** When the Margin Type is set to Lock Up, trade coverage can be defined but no trades are assigned.  
| Clearing Type | Select a Clearing client entity from the drop-down menu.  
Calculation Details | Currency | Agreement Ccy is the base currency in which all calculations will be made for the agreement.  
| Valuation Agent | Setting the Valuation as Principal will deem the Agreement as Sole Valuation Agreement and invoke additional Workflow steps when Antic Demands or No Actions are generated for such Agreements.  
  
The values available are the following:  
  
**Both** \- It is commonplace in Collateral Agreements to specify that both parties act as Valuation Agent. The Valuation Agent is the party responsible for calculating the Delivery and Return Amounts and notifying the other party of these. The market standard is that, on any given Valuation Date, the party calling for Collateral is the Valuation Agent, while the exposed party is the Valuation Agent during Dispute Resolutions. Parties to an agreement, however, may nominate a party as the Sole Valuation Agent ( SVA). That party then takes responsibility for notifying of deliveries and returns of Collateral for both parties.  
  
**Principal** \- TLM Collateral Management provides some additional functionality to accommodate agreements where the Valuation Agent is set to Principal - that is, it is the responsibility of the Principal to inform the Counterparty of Anticipated Demands on their behalf. Additional Workflow Queues are available to facilitate this.  
  
In addition, the Principal may also be required to inform their Counterparty when there is a No Action Margin Calculation Result, when the Principal is the Valuation Agent. Again, the system provides additional Workflow Queues to facilitate this. These additional Workflows are displayed when there is a Principal Valuation Agent Agreements.  
  
**Counterparty**  
| Posting Party | Select whether the Agreement is Unilateral (one way) or Bilateral (two-way) by choosing one of the following:  
  
**Both** (Default value)- The Agreement is deemed to be bilateral. That is both the Principal and Counterparty can be required to post collateral depending on the Margin Requirement.  
  
**Principal** \- The Agreement is deemed to be unilateral. Only the Principal is required to post collateral. Margin Calls generated and Collateral Movements permissible, will reflect this.  
  
**Counterparty** \- The Agreement is deemed to be unilateral. Only the Counterparty is required to post collateral. Margin Calls generated and Collateral Movements permissible, will reflect this.  
  
See [Understanding Posting Party](<misc.md#understanding-posting-party-on-an-agreement>) for more details.  
| Calculation Type | Used for margin calculations for the agreement.  
The options are:  
  
ISDA Unsecured (this is the default value for new agreements)  
ISDA Security  
| Lock Up Calculation (**OTC Only**) | Lock Up Calculation Type which should be used for this agreement.  
  
The options are:  
Netted Against Variation  
Not Netted Against Variation. See Posting Party about interaction between Lock Up Calculation type and Collateral Allocation method.  
| Collateral Allocation  
(**OTC Only**) | Select the Collateral Allocation Method that should be used for this Agreement.  
  
The options are:  
**Auto Allocate** \- This is the default selection. If selected, the system will allocate collateral to any lock up requirements that exist first. Once this occurs, if any surplus collateral exists, it will be allocated to variation requirements.  
  
Under this method, all collateral balances and collateral movements reflected in the system will be of Collateral Margin Type "Variation". These forms of agreements are often termed auto-allocating.  
  
**Segregate LockUp And Variation** \- This value is permissible only if Lock Up Calculation Type has been defined as Not Netted Against Variation. If selected, the following behavior will occur:  
\- The system will treat the lock up and variation margin requirements for a margin call for an Agreement separately.  
\- This will result in separate variation and lock up margin call requirements being generated when margin calculations run.  
\- Each of these margin call requirements will be placed in the applicable Workflow queues, depending on whether the requirement results in a Demand, Antic Demand, No Action or Demand/Antic Demand.  
\- Consequently each margin call requirement on the margin call has its own life-cycle and is treated independently through the margin call Workflow queues.  
\- Additionally, all collateral positions on the Agreement will also be treated separately. That is, collateral will be specifically defined as being of Margin Type "Variation" or "LockUp"  
\- Collateral Positions (and in transit collateral trades) of Lock Up Collateral Margin Type will be applied solely to Lock Up Margin requirements.  
\- Conversely, Collateral Positions (and in transit collateral trades) of Variation Collateral Margin Type will be applied solely to Variation Margin requirements.  
\- Surpluses in either Collateral Margin Type are not automatically applied to any deficit in the other.  
  
See [Working with OTC Agreements that Segregate Lock Up and Variation Margin](<segregate_lockup_varmargin.md>) for more details.  
  
Segregate LockUp and Variation can only be selected if Lock Up Calculation Type has been defined as Non Netted Against Variation.  
  
This is a key agreement defining parameter, with implications for how margin calls are calculated. As such it should be set with care, and it is recommended to review [Working with OTC Agreements that Segregate Lock Up and Variation Margin](<segregate_lockup_varmargin.md>) and [Changing Collateral Allocation Type on an OTC Agreement](<agreement_change_collatallocation.md>) to understand the implications of setting / resetting this field.  
| Status | There are three options:  
  
**Active** \- This is the default for new agreements. All active agreements are subject to Margin Calculations.  
  
**Inactive** \- Agreements that are in this status are not subject to the Margin Calculation task, nor can they be subject to single margin calculation task.  
  
**Monitor** \- Agreements in this status are subject to Margin Calculations, but will always result in No Action Margin Calculation Results. Additionally, the No Action result will have a No Action Type of "Agreement Status of Monitor"  
| Status Detail | This maybe a useful explanatory suffix where Agreements are in a Monitor status.  
Collateral Exposure & Valuations | Collateral Price Source | Used for valuing Instruments in collateral positions and movements for the agreement.  
  
By default, the agreement is set to use whatever Price Source has been set as a default in Reference Data.  
  
To specify a particular Price Source for the agreement, select the required Price source from the Collateral Price Source drop-down.  
  
Only one price source can be chosen.  
| Foreign Exchange Rate Source | The source for FX Rates that the Agreement should use when converting values into Agreement Currency equivalents. By default, the agreement is set to use the Rate Source that has been set as a default in Reference Data.  
  
To specify a particular FX Rate Source for the agreement, select the required FX Rate source from the FX Rate Source drop-down. Only one FX Rate source can be chosen.  
| Price Quote | Used for valuing collateral positions and movements for the agreement.  
  
The drop down choices are:  
**Bid** \- typically represents the price at which the collateral instrument could be sold for.  
**Mid** \- this is set as the default. Mid prices are mid points between Bid and Ask prices.  
**Ask** \- typically represents the price at which the collateral Instrument can be purchased for.  
  
The default selection is Mid.  
Trades Filters (**Repo & Securities Lending Only**) | Include Trades On or Before | This filter determine which trades should be included in the margin calculation based on their start dates and end dates.  
| Adjustment | The default setting is to "Include trades starting on or before Today". T = Today, where Today is the date on the application server.  
  
When applying these filters the application always uses Business Days. Trades must meet BOTH conditions in order to be included in the calculation.  
  
If no trades should be filtered in this way then clear the check boxes. In this case, all trades will be included in the calculation regardless of their start and end dates.  
  
**Note:** Irrespective of the Trades Filter value - the Prices that are used for valuing collateral are those with a Price Adjustment of T.  
| Exclude Trades On or Before | This filter determine which trades should be excluded in the margin calculation based on their start dates and end dates.  
| Adjustment | The default setting is to "Exclude trades ending on or before Today + 2".  
  
When applying these filters the application always uses Business Days. Trades must meet BOTH conditions in order to be included in the calculation.  
  
If no trades should be filtered in this way then clear the check boxes. In this case, all trades will be included in the calculation regardless of their start and end dates.  
  
**Note:** Irrespective of the Trades Filter value - the Prices that are used for valuing collateral are those with a Price Adjustment of T.  
Dispute Resolution | Dispute Tolerance | Select the Dispute Tolerance that will apply to the agreement.  
  
The choices are:  
\- Use the same tolerance method that has been defined on the [Counterparty Organization Type](<reference_related_data.md#organization-type>).  
\- Specify a specific flat amount for this agreement; in which case enter a specific amount together with a currency.  
\- Specify a specific percentage of a call amount for this agreement.  
| Amount | This field is required if the Dispute Tolerance is set to either **Flat** or **Percent of Call Amount**  
| Currency | This field is required if the Dispute Tolerance is set to **Flat**.  
| Agree Tolerance Method | Select the Agree Tolerance Method that will apply to the margin calls for the agreement.  
  
The choices are:  
\- **Not Specified** \- no agree tolerance will be applied when calculating what the Agreed amount is within the Margin Call Workflows.  
  
\- **Split Flat** \- if selected, the user must enter an absolute amount for the tolerance and a currency for the amount. Any amount that is entered here will be converted into the Agreement Currency and used to evaluate whether the difference between Principal Call Amount and Counterparty Call Amount is within the defined tolerance. If it is, then the Agreed amount will be calculated as:  
1\. **For a Demand** : Cpty Call Amount + ((Principal Call Amount - Cpty Call Amount) / 2)  
2\. **For an Antic Demand** : Principal Call Amount + ((Cpty Call Amount - Principal Call Amount) / 2)  
  
\- **Split Percent of Call Amount** \- if selected, the user must specify a percentage amount in the next field. The number must be >0 and <100 and can be entered with two decimal places of precision. Similar to above, the amount entered here will be used to evaluate whether the percentage difference between the Principal Call Amount and the Counterparty Call amounts falls within the defined tolerance. If it does, then Agreed amount will be calculated in the same manner as split flat.  
  
\- **Agree Flat** \- if selected, the user must enter an absolute amount for the tolerance and a currency for the amount. Any amount that is entered here will be converted into the Agreement Currency and used to evaluate whether the difference between Principal Call Amount and Counterparty Call Amount is within the defined tolerance on an Anticipated Demand. If it is, then the Agreed amount will be calculated to the higher call amount.  
  
\- **Agree Percent of Call Amount** \- if selected, the user specify a percentage amount in the next field. The number must be >0 and <100 and can be entered with two decimal places of precision. Similar to above, the amount entered here will be used to evaluate whether the percentage difference between the Principal Call Amount and the Counterparty Call amounts falls within the defined tolerance on an Anticipated Demand. If it does, then Agreed amount will be calculated in the same manner as agree flat. See [Examples of Agree Tolerance Method Usage](<example_agree_tolerance_method.md>) for more information.  
| Amount | This field is required if the Agree Tolerance Method is set to either **Flat** or **Percent of Call Amount**  
| Currency | This field is required if the Agree Tolerance Method is set to **Flat**.  
Documentation History | Signature Date | Select a date by clicking in the field if the agreement has a Signature date.  
| Amendment Date | Select a date by clicking in the field if an amendment date exists.  
Master Agreement | Date | Click in the field to record the Master Agreement Date.  
| Version Year | The Master Agreement version year.  
| Governing Law | Select the Governing Law jurisdiction.
