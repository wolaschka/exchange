
# Rating Based Eligibility Rules

Rating Based Eligibility Rules can be defined for Debt or Letter of Credit. 

## Adding a Rule

**Procedure**

  1. Click the **Add** button.
  2. **_New Eligibility Rule_** form will open up.
  3. Enter a the information for the advanced eligibility rule. The required fields must be entered before the rule can be saved.
     1. Required fields consist of the Rule Name, Applies To, Buckets, and a minimum of one Parameter Criteria. See [Rating Based Eligibility Fields](<#rating-based-eligibility-fields>) for the list of available fields for the rule.
  4. Once the minimum information has been added, the **OK** button can be clicked and the value is added to the grid in the agreement under Advanced Eligibility Rules.
  5. Click the **Save** button to save the changes to the agreement.



**Note:** Multiple parameter criteria can be added to a single rule.

## Editing a Rule

**Procedure**

  1. Click on the Edit ![edit_icon.jpg](Images/edit_icon.jpg) icon next to the rule that needs to be modified.
  2. Make the necessary changes to the [Rating Based Eligibility Fields](<#rating-based-eligibility-fields>) and click the **OK** button to save the changes to Advanced Eligibility grid.
  3. Click the **Save** button to save the changes to the agreement.



## Deleting a Rule

**Procedure**

  1. To Delete, click on the Delete ![delete_icon.jpg](Images/delete_icon.jpg) icon next to the rule.
  2. A _Delete Advanced Eligibility_ form will open up asking the user if they are sure they want to delete the rule.
  3. Click the **Delete** button to remove the rule from the agreement.



## Rating Based Eligibility Fields

**Note:** Fields in red are required.

Section | Field | Agreement Type | Description  
---|---|---|---  
Rule Name | Rule Name | OTC, Central and Client Clearing | The name will be referenced when eligibility criteria are not met so the name should be meaningful but kept short if possible. The name is a mandatory field so the rule cannot be saved if this field has not been populated.  
Rule Evaluation | Type | OTC, Central and Client Clearing | Debt or Letter of Credit  
| Applies To |  | This section is where the rule applies in terms of collateral balances and margin types can be defined.  
|  | OTC | Set the check boxes for which collateral balances will subject to the rule.  
  
The choices are:  
  
**Variation Held** \- These rules will be tested when the Principal is Holding the collateral of a Variation Margin Type.  
  
**Variation Posted** \- These rules will be tested when the when the Principal is Posting collateral of Variation margin type. Optionally, if the Agreement is for OTC Agreement with a collateral allocation method of segregate Lock Up and Variation, two additional levels at which the rule can be applied can be defined.  
  
**Lock Up Held** \- These rules will be tested when the Principal is Holding the collateral of a Lock Up Margin Type.  
  
**Lock Up Posted** \- These rules will be tested when the Principal is Posting the collateral of a Lock Up Margin Type.  
|  | OTC Lock up Only | The choices are:  
  
**Lock Up Held** \- These rules will be tested when the Principal is Holding the collateral of a Lock Up Margin Type.  
  
**Lock Up Posted** \- These rules will be tested when the Principal is Posting the collateral of a Lock Up Margin Type.  
|  | Client and Central Clearing | The choices are:  
  
**Held** \- These rules will be tested when the Principal is Holding the collateral.  
  
**Posted** \- These rules will be tested when the when the Principal is Posting collateral.  
| Buckets | OTC, Central and Client Clearing | Select the eligible collateral bucket or buckets to which the ratings based eligibility parameters should be applied.  
  
The buckets available for selection are only those which have been assigned as eligible to the relevant party/parties on the Basic Eligibility tab of the agreement.  
Party Rating Method |  | OTC, Central and Client Clearing | The Party Rating Method will be used to evaluate the ratings of whichever party has been set in the "Applies When" option. If defining a rule that will apply when either party is posting, ensure that the rating method for each party is the same. If not, (for example a different Debt Structure is required) define separate rules, one which applies when the Counterparty is posting and the other which apples when the Principal is posting.  
  
The parameters to be defined here are as described in the table below:| Field| Description  
---|---  
Structure| Select the Debt Structure for which the rating is to be used.  
The choices are:  
  
Long Term  
  
Short Term| Selected Agencies| Select the Rating Agencies whose ratings should be used in the evaluation.  
The choices are:  
  
Fitch  
  
Moodys  
  
S & P  
Reference Agency| From the list of Selected Agencies, pick which agency should be considered as the Reference Agency. It will be the ratings of the Reference Agency that are displayed when defining the rule.  
All Specified Ratings Required| If using more than one rating agency to evaluate an instrument, specify whether all of those ratings must be supplied in order for it to be considered eligible. If all ratings must be supplied, then select this check box.  
  
If the check box is selected, the first Ratings Based eligibility check will determine whether all relevant ratings have been supplied for the instrument. If, for example, the rule has ratings criteria for Fitch, Moody's and S&P ratings and only a Moody's and S&P rating have been supplied for the instrument, it will automatically be considered ineligible regardless of whether the Moody's and S&P ratings meet the required criteria. If this check box is cleared the eligibility check will continue even though the Fitch rating is missing.  
Rating Dispute Method| The Rating Dispute Method indicates which rating should be used in the situation where the agencies do not rate the instrument or party at an equivalent level.  
The choices are:  
  
Use higher rating  
  
Use lower rating  
Instrument Rating Method |  | OTC, Central and Client Clearing | Define the criteria which will be used to evaluate the Instrument Ratings. The parameters which need to be defined are as described in the table above.  
Rating Levels |  | OTC, Central and Client Clearing | Define the rating levels which must be met in order for an Instrument to be considered eligible.
