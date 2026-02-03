# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/positions.html

# Positions

## Overview

Positions contains a "live" view of the collateral position and movements for an agreement or for a specific instrument. It includes settled positions as well as collateral movements with a settlement state of "In Transit". The market values displayed are calculated using the latest [eligibility](<agreements_eligibility.md>), [price](<instruments_debt.md#prices>) and [fx rate](<reference_related_data.md#currencies-and-fx-rates>) data.

## Search Criteria

**Procedure**

  1. Select from the drop-down or type in an agreement and/or an instrument.

**Note:** For the Instrument field, the search can be done on any one of the four Instrument Identifiers that exist. [ISIN, CUSIP, SEDOL, and Internal ID]

  2. Click on the **Search** button.




The agreements displayed in the drop-down are based upon the user's [scope](<understand_scope_responsibility.md#agreement-scope>).

## Viewing the Positions

Positions are grouped according to Instrument Reference, Held/Posted, State, Margin Type and [Asset Pool](<assetpools.md>).

The fields displayed in the grid are the following:

Field | Description  
---|---  
Radial Button | Used to select for [substitution](<substitutions.md>).  
Agreement Name | An identifier to the position.  
Eligibility | This provides a live eligibility evaluation of the instrument on the position/movement. Basic terms, and additionally if they exist, rules for Advanced Eligibility, Ratings Based Eligibility and Wrong Way Risk Eligibility are evaluated.  
  
If there are no eligibility breaches for the instrument then this symbol will be displayed ![positions_pass_eligibility.jpg](Images/positions_pass_eligibility.jpg).  
  
If there are any eligibility breaches for the instrument then this symbol will be displayed ![positions_fail_eligibility.jpg](Images/positions_fail_eligibility.jpg).  
Position | If the Principal is holding the collateral then the 'Held' value will be displayed. If the counterparty is holding the collateral then the 'Posted' value will be displayed.  
Instrument | Instrument defined on the position.  
Description | Instrument description.  
Settled Notional | Settled positions only.  
Available Notional | Includes In-Transit and Settled positions.  
Margin Type | For OTC Agreements, where Collateral Allocation is defined as Segregate Lock up and Variation, this value identifies whether the collateral trade is allocated toward the Variation or Lock Up margin requirement.  
  
For OTC Agreements, where Collateral Allocation is defined as Lock Up Only, this value identifies the collateral trade as allocated toward a Lock Up margin requirement only.  
  
For all other OTC Agreements, and for Repo and Securities Lending Business lines, the type value here is ignored for Margin Calculation purposes.  
Asset Pool | Will display the name of the Asset Pool for those posted movements / Positions that were sourced from an Asset Pool balance. Where the field is blank it means that the posted movement / position was not sourced from an Asset Pool.  
  
To clear the search criteria, click the **Clear Filters** button.

## Grid Features

The position grid can be [sorted](<grid_features.md#sorting>), [paged](<grid_features.md#paging>), [exported](<grid_features.md#export-grid>), [reorder columns](<grid_features.md#reorder-columns>), and fields can be [disabled or resized](<grid_features.md#display-and-resizing-columns>).

## Create Substitutions

Collateral Agreements typically include provisions which deal with substitutions or exchanges of collateral positions.

The system provides functionality to allow the user to easily identify collateral positions that can subsequently be selected for substitution with the Counterparty. Substitution recalls are created through the Positions screen by selecting an Agreement or an Instrument Ref.

Collateral positions can be identified by:

  * An Agreement
  * An Instrument
  * A combination of an Agreement and an Instrument



**Note:** A user can only search for agreements, and therefore positions on the same agreements, that they have permissions to view according to their [agreement responsibility group membership](<reference_related_data.md#agreement-group>) and their [Agreement Scope](<understand_scope_responsibility.md#agreement-scope>).

Example: If all positions for ID XS00000123456 are on agreements that are part of the user's agreement group, but not part of the user's Agreement Scope then searching for these positions will retrieve no results.

**Procedure**

  1. Select the movement that requires substitution by clicking in the radial button.
  2. The **Substitute Positions** button will become enabled; click on the button.
  3. The user will be prompted with a _Substitute Position_ screen. The fields highlighted in red require a value.

Section | Fields | Description  
---|---|---  
Position Details | Agreement Name | The agreement name of the position that is being generated for a substitution.  
| Asset Pool | Populated if the existing position being substituted is a posted position where the Instrument was sourced from an Asset Pool.  
| Available Notional | Available notional is a calculated control figure to prevent users entering collateral return movements in excess of what has been delivered. As such, it is calculated by taking into consideration the instrument’s default settlement offset and certain movements.  
  
A **Held** settled position is adjusted to take into account **Deliver to Principal** and **Return to Counterparty** movements.  
  
A **Posted** settled position is adjusted to take into account **Deliver to Counterparty** and **Return to Principal** movements.  
  
The movements which are used in the adjustment are those which are not in an end state.  
  
This would be movements entered via a workflow which are either "Pending", "Pending Rejected", "Proposal Accepted", or "Rejected by Counterparty and manually entered movements which are either "To Be Approved" or "InTransit".  
  
If there are no such movements, then available notional will be the same as notional.  
  
**Note:** In Transit delivery movements are now taken into account for available notional. Movements that are considered will only be up to and including the default settlement offset date.  
| Instrument Ref | The instrument that is being substituted.  
| Instrument Desc | The textual description of the instrument on the collateral movement.  
| Min Lot | The minimum amount of the Instrument which can be transferred.  
| Lot Increment | The incremental amount which the Instrument can be transferred in.  
Notional | Target | The values are _Notional_ or _Market Value_. Notional amounts will be validated against existing Minimum Lot and Lot increment, and rounded if necessary.  
| Amount | Enter the amount that needs to be substituted.  
| Notional | This will be based upon what value was entered under the target field. If the target field is notional, then the value will be the same. If the target field is set to market value, then the value is converted to the notional value.  
| Market Value (Agmt Ccy) | The Market value of the movement in the currency of the agreement before any valuation percentage has been applied.  
| Valuation % | The system will populate this field with the appropriate Valuation percentage for the collateral as defined in the Basic Eligibility tab of the agreement.  
  
If the collateral is ineligible, that is:  
a. no eligible collateral bucket or instrument exists on the agreement  
or  
b. the security selected can potentially fall within more several eligible buckets on the agreement  
or  
c. the collateral being selected fails an [Advanced Eligibility Rule](<advancedeligrules.md>) defined on the agreement  
d. the collateral selected fails a [Ratings Based Eligibility Rule](<ratingbasedeligrules.md>) defined on the agreement.  
e. the collateral selected fails a [Wrong Way Risk Eligibility Rule](<wrongwayrisk.md>) defined on the agreement.  
  
Then the valuation percentage will default to zero, and the movement will be calculated as having zero market value.  
  
Similarly, if the actual instrument has been set up with a zero % value, then the collateral position will be calculated with a market value of zero.  
| Market Value Applied |   
| Concentration Status | This will contain a check mark or an x depending on if the collateral falls within or outside the concentration rule.  
| Concentration Breaches | If the collateral falls outside the concentration rule then the system will display which rule it does not meet.  
Reason | Reason for Substitution | A reason for the substitution must be entered in order for the substitution to be created.  
Settlement | Receiving Instruction | By default, the system will attempt to automatically populate this field with the name of the receiving party's matching SSI record which has been set as default. Should no matching SSI have been set as default, click on the down arrow to select a matching receiving party SSI record set to use for the movement.  
  
**Note:**  
1\. The SSI records available for selection are those that match the movement. Should there be no matching SSI records, the drop-down will be blank.  
2\. Similarly, should the instrument selected on the movement be amended, the SSI record that is defaulted / SSI records available in the drop-down will update.  
3\. The Settlement Date default value is derived from the settlement offset value of receiving party SSI record selected. Should the selected SSI record be altered, the Settlement Date default value will be refreshed.  
  
See [Understanding SSI hierarchy, defaults and derivation](<agreements_settleinstr.md#understanding-ssi-hierarchy>) for more details on how SSI's are matched to collateral movements.  
| Sending Instruction | The process is identical to that for the **Receiving Instruction** field, excepting that the SSI record selected is applicable to the Sending Party for the Substitution Return Movement.  
| Settlement Date | The Settlement Date default value is derived from the settlement offset value of receiving party SSI record selected. Should the selected SSI record be altered, the Settlement Date default value will be refreshed.  
| Trade Date | By default, Trade Date field is not populated. Click on the field and select a Trade Date.  
  
Trade Date is not validated to ensure that it is equal to or prior to Settlement Date.  
| Physical Settlement | By default, the Physical Settlement check box is selected, indicating that this movement should be settled physically. If this is not to be the case, the checkbox can be deselected.  
  4. The **Create Substitution** button will appear once the required fields of **Amount** and **Reason** have values.

  5. Click on the **Create Substitution** button. The substitution recall will then transition into the [Substitution Workflow](<substitutions.md>). When creating the substitution, there will be a notification link that can be clicked on in the lower right side of the screen to navigate to that substitution or the user can navigate via the Substitution Workflow. If the navigation link disappears, the link can be found by clicking on the bell located in the top right side of the screen.



**Note:** Substituting a position will create a substitution event in the workflow with a return movement. If there is an existing substitution that is in progress and not awaiting approval for the same agreement and collateral margin type, substitute movement will add the return movement to that substitution. Movements cannot be added to a workflow event that is awaiting approval. If an event has been approved and is awaiting settlement, substitute movement will create a new substitution.

.
