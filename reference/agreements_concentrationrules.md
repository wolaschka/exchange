
# Concentration Rules

The Concentration Rules displays the rule name, the description of the rule and who it applies to whether it is principal, counterparty or both.

Concentration rules can be [added](<agreements.md#create-a-grid-row>), [edited](<agreements.md#edit-a-grid-row>), or [deleted](<agreements.md#delete-a-grid-row>).

## Concentration Rules Fields

**Note:** Fields in red are required. Additional fields required will be noted next to the greyed out **Save** button in the bottom right side of the pop up window. The **Save** button will not become enabled until all required fields are entered.

Field | Description  
---|---  
Rule Name | Give the concentration rule a name. This name will be referenced when a concentration rule is broken so the name should be meaningful but kept short if possible.  
  
Example: "Issuer Type: Max 60% Corp." The rule cannot be saved if this field has not been populated.  
Apply To Party | Select the party to which this rule will be applied.  
  
The choices are:  
**Both**  
**Principal** \- These rules will be tested when the principal is holding the collateral.  
**Counterparty** \- These rules will be tested when the when the counterparty is holding the collateral  
Calculation type | Select a calculation type of  
  
**Maximum**  
or  
**Minimum**  
Amount | Enter the amount which is the maximum or minimum amount that can be held. This can be a value or a percentage amount. If the field is used as a percentage amount, the system will allow up to 3 digits after the decimal.  
Value Checked Against | Select the collateral value that the amount is to be checked against.  
  
The options are:  
**Market Value in** \- Allows the user to specify a currency other than Agreement or [System Currency](<system_currency.md>). Where a specific currency is used, the collateral values loaded in Agreement or [System Currency](<system_currency.md>) are converted using the latest available FX Rate. Where an FX Rate does not exist for the currency a validation message will be generated.  
  
**Market Value in Agreement Currency** \- The amount to be checked will be compared to the maximum or minimum post haircut market value which can be held. The value is displayed in the Agreement Currency.  
  
**Market Value in System Currency** \- The amount to be checked will be compared to the maximum or minimum post haircut market value which can be held. The value is displayed in the [System Currency](<system_currency.md>).  
  
**Notional In** \- Allows a Concentration rule to be defined to check for a notional limit in a specific currency. Once this field is selected, the currency field will appear. This rule operates in a similar way to the Market Value In rule, except that it employs Notional Amounts instead of Market Values. Notional Amounts on collateral positions are converted into the specified currency when performing this check. See [Examples of Notional In Concentration Rules](<example_notional_in_conc_rules.md#notional-in-concentration-rules>) for worked examples.  
  
**Notional In Agreement Currency** \- Allows the user to specify an amount of Notional in Agreement Currency that will be checked against. In order to evaluate collateral positions against this rule, the Notional Amounts of collateral positions will be converted into agreement currency equivalents, using the latest applicable FX rates. This rule operates very similarly to the Notional In rule, except that the currency which Notional Amounts are converted to for evaluation, is fixed as the agreement currency.  
  
**Notional In System Currency** \- Allows the user to specify an amount of Notional in [System Currency](<system_currency.md>) that will be checked against. In order to evaluate collateral positions against this rule, the notional amounts of collateral positions will be converted into [system currency](<system_currency.md>) equivalents using latest applicable FX rates. This rule operates very similarly to the Notional In rule, except that the currency to which notional amounts are converted to for evaluation is fixed as the [system currency](<system_currency.md>).  
  
**Percent of Amount Issued** \- The amount to be checked will be calculated as a percentage of the amount of the instrument originally issued. Any rules used with this option compare the current notional position held in that issue for the relevant agreement against the current Amount Issued value for that instrument. Can only be used with the "maximum" option.  
  
**Percent of Amount Outstanding** \- The amount to be checked will be calculated as a percentage of the amount of the instrument outstanding in circulation. Any rules used with this option compare the current notional position held in that issue for the relevant agreement against the current Amount Outstanding value for that instrument. Can only be used with the "maximum" option.  
  
**Percent of Total Collateral Held** \- The amount to be checked will be calculated as a percentage of the total post haircut market value of the current collateral position and compared against the percentage to be maintained in the concentration rule.  
  
**Percent of Total Notional Held** \- The amount to be checked will be calculated as a percentage of the total notional amounts of current held (by either party) collateral positions on the agreement, and compared against the percentage to be maintained in the concentration rule. Notional amounts are converted into agreement currency equivalents in order to make the percentage comparison. Please see [Examples of Percentage of Total Notional Held](<example_notional_in_conc_rules.md#percentage-of-total-notional-held>) for some worked examples.  
Can come from **A Specific** or **Any Single** | The rule should be set up with a specific or any single group. Choose from the drop down of the following values:  
Collateral Bucket  
Collateral Group  
Collateral Type  
Instrument  
Instrument Class  
Instrument Currency  
Instrument Type  
Issuer  
Issuer Domicile  
Issuer Entity Group  
Issuer Industry Sector  
Issuer Type  
  
**Note:** When the value to check against is **Percent of Amount Outstanding** or **Percent of Amount Issued** , the only choice is Instrument.  
  
**Example:**  
To ensure that a maximum of 60% of the collateral that is being held under this agreement has been issued by corporates. In this case the "specific" Issuer Type which is corporate would be selected.  
or  
To ensure that no more than 10% of the Amount Outstanding is being held in a "single" issue. In this case, the calculation will be checked for every single issue currently held under the agreement.  
which is | Choose the attribute values to be included (**In**), excluded (**Not In**) or **Not Only In** when the calculation is performed.  
See [examples](<#concentration-rule-examples>) of the use of "In" and "Not In".  
Attribute Values | The attribute values available will be based upon what value was selected for the **Specific** or **Any Single** field.  
  
**Example:** If the **Specific** value is **Instrument Class** then the values available will be all the values defined under Instrument Class.  
and where | It is possible to specify up to two additional criteria for the rule by selecting the "where" check boxes  
  
Click on the ![concrule_submit_button.jpg](Images/concrule_submit_button.jpg) button to save the changes. 

To close the window without saving the changes, click ![cancel_button.jpg](Images/cancel_button.jpg).

**Note:** Should the agreement approval process be [enabled](<system_configuration.md#database-approvals>), then populating certain margin term values is subject to an approval process before the values can be committed to the database. However, If values are populated that are eligible for approval and values that aren't eligible for approval at the same time then both sets of values will be eligible for approval when the agreement is saved.

## Concentration Rule Examples

To understand the logic used in the calculation of a concentration rule which uses "Not In", the system first needs to determine whether something is "In" a rule.

### Example 1

This example the uers will use ten collateral instruments:

Issue ID | Issuer Type | Issuer Domicile | Issue Currency  
---|---|---|---  
1-govt-us | GOVT | USA | USD  
2-corp-us | CORP | USA | USD  
3-supra-us | SUPRA | USA | USD  
4-govt-jp | GOVT | Japan | JPY  
5-corp-jp | CORP | Japan | JPY  
6-supra-jp | SUPRA | Japan | JPY  
7-govt-jp | GOVT | Japan | JPY  
8-govt-de | GOVT | Germany | EUR  
9-corp-uk | CORP | UK | GBP  
10-supra-be | SUPRA | Belgium | EUR  
  
If a rule was defined as "A Maximum of 10m market value in agreement currency can come from a specific Issuer Type which is in "GOVT" and where Issuer Domicile is in "Japan" the user would first identify which of those instruments are of Issuer Type GOVT."

This example that would return the following four instruments:

  * 1-GOVT-US
  * 4-GOVT-JP
  * 7-GOVT-JP
  * 8-GOVT-DE



The list is then further narrowed down by the Issuer Domicile of Japan.

  * 4-GOVT-JP
  * 7-GOVT-JP



The concentration rule calculation would then calculate how much the collateral position is in these particular instruments to ensure it has not exceeded the maximum limit of 10m.

The logic to determine which instruments would be considered if the concentration rule used "Not In" would follow the same pattern but rather than determine what should be included in the calculation it would be determining what should be excluded from the calculation.

### Example 2

Using the same set of instruments as Example 1, here is another example whose rule states "A Maximum of 10m market value in agreement currency can come from a specific Issuer Type which is not in "GOVT" and where domicile is not in "USA"."

First the system identifies which of the instruments are not Issuer Type GOVT resulting in these six instruments:

  * 2-CORP-US
  * 3-SUPRA-US
  * 5-CORP-JP
  * 6-SUPRA-JP
  * 9-CORP-UK
  * 10-SUPRA-BE



The list is then further narrowed down by the Issuer Domicile of USA.

  * 5-CORP-JP
  * 6-SUPRA-JP
  * 9-CORP-UK
  * 10-SUPRA-BE



The concentration rule calculation would then calculate how much the collateral position is in these instruments to ensure it has not exceeded the maximum limit of 10m.

### Example 3

Example 2 could be further expanded by adding a second where clause to the rule:

"A Maximum of 10m market value in agreement currency can come from a specific Issuer Type which is not in "GOVT" and where domicile is not in "USA" and where Issue Currency is not in "GBP"."

IThe system will exclude the instrument 9-CORP-UK and leave the following instruments:

  * 5-CORP-JP
  * 6-SUPRA-JP
  * 10-SUPRA-BE



The total position in these three instruments that would then be used in the concentration calculation.
