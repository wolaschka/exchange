# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/wrongwayrisk.html

# Wrong Way Risk

## Overview

This process differs slightly between OTC Agreements, OTC Lock Up Only Agreements, Central and Client Clearing Agreements.

**Note:** Fields in red are required.

Section | Field | Agreement Type | Description  
---|---|---|---  
Rule Evaluation | Applies To | OTC | **Variation Held** \- These rules will be tested when the Principal is Holding the collateral of a Variation Margin Type.  
  
**Variation Posted** \- These rules will be tested when the when the Principal is Posting collateral of Variation margin type.  
  
If the Agreement with a collateral allocation method of segregate Lock Up and Variation, it can defined two additional levels at which the rule can be applied and they are:  
  
**Lock Up Held** \- These rules will be tested when the Principal is Holding the collateral of a Lock Up Margin Type.  
  
**Lock Up Posted** \- These rules will be tested when the Principal is Posting the collateral of a Lock Up Margin Type.  
|  | OTC Lock Up Only | **Lock Up Held** \- These rules will be tested when the Principal is Holding the collateral of a Lock Up Margin Type.  
  
**Lock Up Posted** \- These rules will be tested when the Principal is Posting the collateral of a Lock Up Margin Type.  
|  | Client and Central Clearing | **Held** \- These rules will be tested when the Principal is Holding the collateral.  
  
**Posted** \- These rules will be tested when the when the Principal is Posting collateral.  
| Buckets | All | Eligible collateral bucket or buckets to which the wrong way risk rule should be applied.  
  
The buckets available for selection are for any bucket defined in the system. However, the rule will be tested for only those collateral positions and movements that have passed Basic Eligibility.  
  
**Note:** The maximum number of Wrong Way Risk rules that can be created is four. One rule per Collateral Margin and Position type combination depending on the type of agreement that is defined for the rule.

Example:

A bilateral OTC Segregated Lock Up and Variation agreement can have all four rules as follows:

  * Variation Held
  * Variation Posted
  * Lock Up Held
  * Lock Up Posted



Whereas a bilateral OTC Variation only agreement can only have two rules as follows:

  * Variation Held
  * Variation Posted



**Note:** Should the approval process be enabled, then populating certain margin term values is subject to an approval process before the values can be committed to the database. However, if values are populated that are eligible for approval and values that aren't eligible for approval at the same time then both sets of values will be eligible for approval when the agreement is saved. See [Approvals Process](<approvals.md>) for details.

## Adding a Rule

**Procedure**

  1. Click the **Add** button.
  2. **_Wrong Way Risk Rule_** form will open up.
  3. Enter a the information for the wrong way risk rule. All required fields must be entered before the rule can be saved.
  4. Once the data is entered, the **OK** button can be clicked and the value is added to the grid in the agreement under Wrong Way Risk Rules.
  5. Click the **Save** button to save the changes to the agreement.



## Editing a Rule

**Procedure**

  1. Click on the Edit ![edit_icon.jpg](Images/edit_icon.jpg) icon next to the rule that needs to be modified.
  2. Make the necessary changes to the rule and click the **OK** button to save the changes to [Advanced Eligibility](<advancedeligrules.md#advanced-eligibility-fields>) grid.
  3. Click the **Save** button to save the changes to the agreement.



## Deleting a Rule

**Procedure**

  1. To Delete, click on the Delete ![delete_icon.jpg](Images/delete_icon.jpg) icon next to the rule.
  2. A _Delete Wrong Way Risk Rule_ form will open up asking the user if they are sure they want to delete the rule.
  3. Click the **Delete** button to remove the rule from the agreement.



## Understanding Wrong Way Risk using Entity Groups

TLM® Collateral Management allows for the monitoring of Wrong Way Risk on a per Agreement basis.

When a collateral position or movement is evaluated for eligibility anywhere within the system, an additional evaluation for wrong way risk will be executed in addition to the existing basic, advanced and ratings based eligibility evaluations.

**Note:** Existing logic prevails where if Basic Eligibility is breached, no other eligibility rule is evaluated. When Basic Eligibility passes, then all other eligibility evaluations, including wrong way risk, will be assessed recording breaches when applicable.

**Application of Functionality**

In order for the system to evaluate Wrong Way Risk eligibility, the following set up has to be in place: 

  1. [Entity Groups](<reference_related_data.md#entity-groups>) created and defined for Wrong Way Risk.
  2. Entity Groups assigned to [Entities](<entities.md#create-entities>).
  3. Issuers assigned to [Debt](<instruments_debt.md>), [Equity](<instruments_equity.md>) or [Letter of Credit](<instruments_loc.md>) Instruments.
  4. [Collateral bucket(s)](<buckets.md#creating-buckets>) created and valid for instruments in step 3.
  5. [Wrong Way Risk rule(s)](<#overview>) have been defined on an Agreement(s).



**Wrong Way Risk Logic**

**Held Positions**

The following evaluations will take place for all existing settled collateral positions, in transit movements, and new movement bookings: 

  1. Collateral Position Type is Held.
  2. Movement Type is Deliver to Principal or Return to Counterparty.
  3. Identify all the Entity Groups that apply to Wrong Way Risk where the Counterparty on the Agreement is a member.
  4. For those Entity Groups that the Counterparty is a member, identify all the Entities defined as Issuers within these Entity Groups.
  5. Compare the Issuer on the Instrument to the list of Issuers identified in step 4.
  6. Identify if Instrument falls into the collateral bucket(s) defined on the Wrong Way Risk rule.
  7. If all of the above is true, the instrument will fail wrong way risk eligibility.



**Posted Positions**

The following evaluations will take place for all existing settled collateral positions, in transit movements, and new movement bookings: 

  1. Collateral Position Type is Posted.
  2. Movement Type is Deliver to Counterparty or Return to Principal.
  3. Identify all the Entity Groups that apply to Wrong Way Risk where the Principal on the Agreement is a member.
  4. For those Entity Groups that the Principal is a member, identify all the Entities defined as Issuers within these Entity Groups.
  5. Compare the Issuer on the Instrument to the list of Issuers identified in step 4.
  6. Identify if Instrument falls into the collateral bucket(s) defined on the Wrong Way Risk rule.
  7. If all of the above is true, the instrument will fail wrong way risk eligibility.



## Viewing Wrong Way Risk Breaches

Collateral Position and Movement eligibility can be viewed from any grid that displays positions and movements under the Eligibility column. This eligibility status does not provide the type and reason of an eligibility breach. Detailed information on an eligibility breach can be viewed within the system as follows:

  * [View Eligibility Breaches on Collateral Movements and Positions](<movements.md#view-eligibility-breaches>)
  * [View the Eligibility and Concentration Breaches Report](<reports.md#eligibility-and-concentration-breaches>)


