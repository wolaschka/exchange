# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/agreements_tradecoverage.html

# Trade Coverage

## Background

Once the trades are within the system they need to be allocated to Agreements based on the rules that have been configured by a user. The task by which trades are allocated to agreements is known as _Trade Assignment_. The rules which govern which trades are assigned to an Agreement are collectively known as **Trade Coverage**.

There are two main methods of defining Trade Coverage:

  * By creating a ["Pool Level"](<#trade-coverage>) of Trade coverage based on one or more Trade Assignment rules.
  * Rules defining a [single specifically included or excluded trade](<#specific-trade-coverage>)



Trade Assignment rules are made up of Trade Type(s), and optionally Branches and Additional Criteria. Trade types can be [added](<agreements.md#create-a-grid-row>), [edited](<agreements.md#edit-a-grid-row>), or [deleted](<agreements.md#delete-a-grid-row>).

A Trade assignment rule must contain at least one trade type. It is important to understand that the criteria that make up a Trade Assignment rule are additive.

By this, it means that all the criteria defined in a trade assignment rule must be met in order to assign trades to agreements.

Trades are loaded into the system for Agreements of the following Business Lines.

Type | Guidelines  
---|---  
Central Clearing | Where a Central Clearing Agreement has a Margin Type of Variation, exposure trades can be imported via the OTC trade import.  
  
They are not used for Margin Calculation purposes, but can be used for Comparison purposes.  
  
When the Margin Type is set to Lockup, trade coverage can be defined but no trades are assigned.  
Client Clearing | Where a client Clearing Agreement has a Margin Type of Variation, exposure trades can be imported via the OTC trade import.  
  
When the Margin Type is set to Lockup, trade coverage can be defined but no trades are assigned.  
OTC Lock Up Only | Trade Coverage can be defined on an [OTC Lock Up Only Agreements](<agreements_define.md#otc-lock-up-only>) but trades will not be assigned to the agreement.  
  
\- No default rules are assigned when entering a new agreement.  
\- No rule is created with an agreement import.  
\- An existing rule is not copied to a new agreement when adding a new agreement via "New From".  
\- An existing rule is not copied to a new agreement when running the replicator import.  
OTC | When importing an OTC Trade data file, all trades for the relevant Import Configuration are deleted when a new import is run.  
  
Trades can currently be assigned to collateral agreements either by including the Agreement name (or alias) in the file or by including the Counterparty and Principal names (or aliases) and/or Counterparty and Principal Branches (or aliases) and Trade Types (or aliases) in the file.  
  
If the Counterparty and Principal entity fields are included on the mapping file, the system will use this entity information to find agreements to which the trade could be assigned. It will then use the Counterparty Branch and Principal Branch fields (if mapped) to further analyze the trade to determine which of those agreements it should belong to.  
  
If the Counterparty and Principal entity fields are not included on the mapping file, the system will use the Counterparty Branch and Principal Branch fields to work out the Counterparty and Principal entities.  
  
If no agreement is supplied and data is missing from the Counterparty, Principal, Counterparty Branch, Principal Branch or Trade Type columns in the file, trades will still be loaded into the database but may not be assigned to a collateral agreement.  
Repo/Securities | When importing Repo Trade data all trades for the relevant Import Configuration are deleted when a new import is run.  
**Note:** No values are currently being calculated by TLM® Collateral.  
  
Trades can currently be assigned to collateral agreements either by including the Agreement name (or alias) in the file or by including the Counterparty and Principal names (or aliases) and/or Counterparty and Principal Branches (or aliases) and Trade Types (or aliases) in the file.  
  
If the Counterparty and Principal entity fields are included on the mapping file, the system will use this entity information to find agreements to which the trade could be assigned. It will then use the Counterparty Branch and Principal Branch fields (if mapped) to further analyze the trade to determine which of those agreements it should belong to.  
  
If the Counterparty and Principal entity fields are not included on the mapping file, the system will use the Counterparty Branch and Principal Branch fields to work out the Counterparty and Principal entities.  
  
If no agreement is supplied and data is missing from the Counterparty, Principal, Counterparty Branch, Principal Branch or Trade Type columns in the file, trades will still be loaded into the database but may not be assigned to a collateral agreement.  
  
## Trade Coverage

**Note:** Fields in red are required.

Field | Description  
---|---  
Include New Trade Types | Specify the behavior that should occur for the Agreement when new trade types are added to the system's reference data.  
  
The default for new trade types is Excluded.  
  
Whenever a trade type is added to the reference data, it will automatically be excluded for the Agreement and would need to be added manually. If the setting is changed to Included, new trade types will automatically be included for the Agreement.  
Trade Types | Trade Types included in the Trade Assignment rule are shown in the **Selected** pane. To exclude a trade type from the rule, click on the trade type or under the **Unselected** section, select **Clear All** to move all trade types.  
  
**Note:** A trade assignment rule requires at least one trade type to be included.  
Principal Branches | Specify whether branches of the Principal are to be included in the Trade Assignment rule.  
  
By default, when creating a Trade Assignment Rule, no branches are included in the rule.  
Counterparty Branches | Specify whether branches of the Counterparty are to be included in the Trade Assignment rule.  
  
By default, when creating a Trade Assignment Rule, no branches are included in the rule.  
Additional Criteria | Contains a Trade Parameter plus a logical evaluation.  
  
Example: Define that only trades with a specific trade date later than 23rd March 2010 should be considered in a trade assignment rule, the additional criteria would be entered as  
TRADEDATE >"20100323"  
Where TRADEDATE is the Trade Parameter, and >"2010323" is the logical evaluation.  
  
It is important to note that any Additional Criteria defined on the rule are additive to the Trade Types and Branches already defined on the rule.  
  
See [Understanding Trade Assignment Additional Criteria](<#understanding-trade-assignment-additional-criteria>) for more information regarding syntax and logic.  
  
**Note:** Additional Criteria auto validates with every character entered. The **_OK_** button will become enabled when a valid criteria is entered. The error messages that are received with each character can be ignored until the entire criteria is entered. If the **_OK_** button is not enabled at that point, then review the error message.  
  
## Specific Trade Coverage

Specific Trades can be [added](<agreements.md#create-a-grid-row>) or [deleted](<agreements.md#delete-a-grid-row>).

**Note:** Fields in red are required.

Field | Description  
---|---  
Behavior | This drop-down allows a selection of whether the particular trade should be Excluded or Included for the agreement.  
Parameter | Select from the drop down selection, the parameter that will identify the specific trade. Permissible current selections are:  
  
Trade Reference  
Secondary Trade Reference  
DTCC Trade Reference  
Deal Reference  
**Extension field**  
  
\- If **Extension field** was selected for the parameter, then the Extension Field drop-down and Extension Value fields will appear in the pop up window in place of Value and Import Configuration.  
  
The Extension Field drop-down will list, depending on the Business Line of the Agreement selected, Alphanumeric and Boolean data types for OTC Trade or Repo Trade Extensions.  
  
**Note:** These may be a subsection of all the particular trade extensions that are defined in reference data.  
  
If the Extension Field is of type Boolean, then a drop down will appear for a True or False value with False being the default value.  
Value | Enter the value that corresponds to the Trade Parameter  
  
For example, if the parameter selected was "Trade Reference", enter the actual Trade Reference ID in the value field. (This reference must match the Trade reference ID number received in the corresponding data field on the OTC or Repo trade file.)  
  
**Note:** Although values must match, case sensitivity is ignored.  
Import Configuration | If the parameter selected is Trade Reference or Secondary Trade Reference, it is strongly recommended that the Import Configuration file that contains the specific trade is also selected.  
  
This can avoid conflicts with the same trade being referenced twice in other system areas.  
  
To save the values entered, click the ![save_button.jpg](Images/save_button.jpg) button. Else, to click the ![cancel_button.jpg](Images/cancel_button.jpg) button to clear the changes.

### Validations

**DTCC Reference/Deal Reference**

Certain validations are carried out when the **Save** button is clicked. These are designed to prevent conflicts with the same trade(s) being specifically included on more than one agreement, or the same trade(s) being specifically included and excluded on the same agreement.

  * An agreement cannot be saved if it is attempting to include the same DTCC Reference or Deal Reference that is already specifically included on another Agreement.

  * An agreement cannot be saved if it attempts to include the same Primary Trade Reference and Import Config that is already specifically included on another Agreement.

  * An agreement cannot be saved if it attempts to include the same Secondary Trade Reference and Import Config that is already specifically included on another Agreement.




If any of the above validations are breached, an error message will appear stating that the same reference value, trade field and import configuration cannot be included because it is already included on another agreement and the changes will not be saved.

  * **Note:** That **Import Config** is used in determining uniqueness in some of the above validation criteria, and therefore that it is possible to save an Agreement that specifically includes the same Primary or Secondary Trade References as referenced on another Agreement if the **Import Config field is left blank**.

  * Excludes are evaluated somewhat differently, and it is possible to save multiple agreements that exclude the same reference.




**Include/Exclude**

The system also checks to see whether a include/exclude conflict will be encountered with the same trade on the same agreement:

The system checks to see that an attempt to save the same trade more than once does not occur, or whether trying to save the same with a different inclusion/exclusion value. If this is attempted, the user will see a message stating "A coverage with the same criteria exists" and the record will be prevented from being saved.

The above validations within the agreement form attempt to restrict the likelihood of trade conflicts occurring. There can, however, be situations where conflicts cannot be known yet by the system and therefore cannot be error trapped in the agreement form. It is therefore possible for the following scenarios to occur:

  * Include and Exclude the same trade on a single Agreement via different trade reference types
  * Consider a **single** trade with the following characteristics:

Primary Trade Reference: 123897

Secondary Trade Reference: 456789

The trade is contained on the [OTC Trades Import Configuration](<task_imports.md#run-task>).

It is possible to set the same trade up for specific inclusion and specific exclusion on the same agreement, by referencing the different deal reference types and values:

![trade_assignment_import.jpg](Images/trade_assignment_import.jpg)

In essence there is a conflict here with the same trade included/excluded on the same agreement.

When this occurs, during the [trade assignment task](<task_status.md#trade-assignments>), the trade will not be assigned.

  * Include the Same trade on two or more agreements via different trade reference types

  * Consider a single trade with the following characteristics:

Primary Trade Reference: 123897

Secondary Trade Reference: 456789

The trade is contained on the [OTC Trades Import Configuration](<task_imports.md#run-task>).

It is possible to set the same trade up for specific inclusion on two or more agreement, by referencing different deal reference number types and values:

For example - include on Agreement **A Bank** under **Trade Reference**

![trade_assignment_import2.jpg](Images/trade_assignment_import2.jpg)

and also specifically included on Agreement **Abc Bank CSA** via **Secondary Trade Reference**

![trade_assignment_import3.jpg](Images/trade_assignment_import3.jpg)

Here there is a conflict - a single trade cannot be assigned to multiple agreements. The system does not know at this stage that the same trade has been referenced on multiple agreements, as the specific trade characteristics that have been recorded on the agreements are not identical.

However, when the [trade assignment task](<task_status.md#trade-assignments>) runs, the conflict is identified, and an assignment warning is raised in the [task status](<task_status.md#results-of-the-task>) pane stating "The specific trade coverage is duplicated. The specific trade coverage was not used during assignment".

The trade is therefore not assigned to either agreement.

  * Include the same trade on two or more agreements using the same trade reference types, but omitting import configuration on one or more agreements.

  * Consider a single trade with the following characteristics:

Primary Trade Reference: 123897

Secondary Trade Reference: 456789

The trade is contained on the **OTC Trades Import** Configuration.

It is possible to set the same trade up for specific inclusion on two or more agreement, by referencing different deal reference number types and values:

For example - include on Agreement **A Bank** under **Trade Reference** and references OTC Trades as Import Configuration

![trade_assignment_import4.jpg](Images/trade_assignment_import4.jpg)

and also specifically include on Agreement **Abc Bank CSA** again via **Trade Reference** but omit to include the import configuration.

![trade_assignment_import5.jpg](Images/trade_assignment_import5.jpg)

Here there is a conflict - a single trade cannot be assigned to multiple agreements. The system does not know at this stage that the same trade has been referenced on multiple agreements, as the specific trade characteristics that have been recorded on the agreements are not identical.

However, when the [trade assignment task](<task_status.md#trade-assignments>) runs, the conflict is identified, and an assignment warning is raised in the [task status](<task_status.md#results-of-the-task>) pane stating "The specific trade coverage is duplicated. The specific trade coverage was not used during assignment".

The trade is therefore not assigned to either agreement.




## Understanding Trade Assignment Additional Criteria

Additional Criteria provide a powerful and flexible way of tailoring Trade Assignment Rules.

They allow a user to refine, in conjunction with Trade types and any branches defined, the criteria by which trades will be considered for assignment. They are entered into the Additional Criteria field on a Trade Assignment rule.

Any additional criteria defined on the rule are additive. They apply to all the Trade Types and Branches already defined on the same rule.

![trade_assignment_ex1.jpg](Images/trade_assignment_ex1.jpg)

This Trade Assignment Rule defines four trade types as being included in Trade Coverage for the Agreement.

The Additional Criteria further refines this coverage to the four trade types provided that the trade has a Notional 1 Currency of USD or Euros.

Additional criteria are applied to all the Trade Types.

Rules that apply to additional criteria:

  * Additional Criteria are expressed as a Trade Parameter plus a logical evaluation.

For example in the above screenshot, Notional1CCY is the Trade parameter, while IN "USD", "EUR" is the logical evaluation.

  * Where a Trade Parameter Value is numeric, the logical evaluation can use standard numeric operands (<>, >, <, =, >=, <=) but the numeric value must be expressed without quotes.

e.g: ORIGINALMATURITYINYEARS <>12

  * Where a Trade Parameter value is a string value, the logical evaluation can use IN or Not In as part of the logical evaluation but the value must be expressed in quotation marks.

e.g: Notional1CCY in "USD"

e.g: Notional1CCY Not in "USD"

  * It is possible to define a list of possible values for the logical evaluation for a Trade Parameter string. Where this is the case, each value must be enclosed in quotation marks and separated by a comma.

e.g: Notional1CCY IN "USD", "EUR", "GBP"

  * Where a Trade Parameter value is a DateValue, the logical evaluation can use standard numeric operands (<>, >, <, =, >=, <=) but the Date Value must be expressed in the form of "YYYYMMDD".

e.g: TRADEENDDATE >= "20111225"

  * Additional criteria can contain numerous Trade Parameters. However, additional trade parameters must be expressed as, and are logically evaluated as And operations.

Example: NOTIONAL1CCY In "USD" And BOOK Not In "USDSWAPS","EURSWAPS" And TRADEENDDATE >= "20111225"

  * Additional Criteria are not case sensitive.

Example: NOTIONAL1CCY IN "USD" is treated identically to NoTIonAl1CcY IN "USD"

  * Only certain trade related fields are Trade parameters, and further, the Trade Parameters definable are business line specific. 

Example: Trade parameter BOOK can be defined as additional criteria for an OTC Agreement rule, but not a Repo Agreement

See [Trade Parameters Definable As Additional Criteria](<#trade-parameters-definable-as-additional-criteria>) for full list.

  * The ordering of Trade Parameters in Additional Criteria does not matter.

Example: NOTIONAL1CCY In "USD" And BOOK Not In "USDSWAPS","EURSWAPS" is evaluated identically to BOOK Not In "USDSWAPS","EURSWAPS" And NOTIONAL1CCY In "USD"

  * Although the system will validate that the syntax of the trade parameter and logical evaluation is correct, it will not validate that the values defined for Trade Parameters are correct or exist.

Example: If additional criteria of Notional1CCY in "USDa" is defined in the system, it will not validate that "USDa" as a valid currency.




### Example 1

**All standard Trade Types are to be covered (including new trade types), but only if traded after 23rd March 2020, with a Notional 1 Currency of USD**

The Trade Assignment Rule is set up to include all available trade types associated to this Agreement type. Additionally, the Include New Trade Types check box is set as enabled.

To limit trade coverage by Trade Date and Notional 1 CCY, additional criteria must be entered: TRADEDATE >"20200323" And NOTIONAL1CCY In "USD"

![trade_assignment_ex1ForReal](Images/trade_assignment_ex1ForReal.jpg)

### Example 2

**All Trade Types included but exclude any trades from a specific Book**

Ihe Trade Assignment Rule is set up to include all available trade types associated to the Agreement type. Additionally, the Include New Trade Types check box is set as enabled.

Additional Criteria are set up to exclude any trade from a specific Book. (Assume the book is called EuroSwaps.) To specifically exclude a particular Trade Parameter value the logical evaluator Not In can be used. The criteria is therefore entered: Book Not In "EuroSwaps"

![trade_assignment_ex2.jpg](Images/trade_assignment_ex2.jpg)

### Example 3

**All Trade Types included but exclude all trades from three specific books**

This example is identical to the previous, with the exception that trades from 3 specific books should be excluded: EuroSwaps, GBPSwaps and Delta1.

The logical evaluator _Not In_ can be used, but include all the values to be excluded in the string, separated by commas, and enclosed in quotation marks. The additional criteria is therefore entered: Book Not In "EuroSwaps","GBPSwaps","Delta1"

![trade_assignment_ex3.jpg](Images/trade_assignment_ex3.jpg)

### Example 4

**One trade type is covered but only if Traded by Principals London or Frankfurt Branch. Additionally, London branch trades only covered if traded before 13th October 2020 and have less than 10 years remaining.**

In this example, The Agreement covers only one trade type, let's assume Asset Swaps. However only asset swaps traded by the Principal's London or Frankfurt Branch are covered. Additionally, any asset swap traded by the London branch is covered only if it is traded before 13th October and also has less than 10 years remaining maturity. As this coverage applies differing criteria to each branch it cannot be constructed in a single Trade assignment Rule, as the criteria within each rule are additive. It must therefore be broken down into each unique Trade Type, Branch and Additional criteria element.

  * Asset Swaps for Principal Frankfurt Branch.
  * Asset Swaps for Principal London Branch, where Trade Date is before October, And remaining maturity is less than 10 years.



Two Trade Assignment Rules must be entered. One for the Frankfurt Branch, with the necessary included Trade Type and branch.

![trade_assignment_ex4A.jpg](Images/trade_assignment_ex4A.jpg)

And one for the London Branch with the necessary included Trade Type and branch, but with the additional criteria: TRADEDATE <"20201013 And REMAININGMATURITYINYEARS < 10

When both Trade Assignment Rules are created, the Trade Coverage on the Agreement looks like the following:

![trade_assignment_ex4B.jpg](Images/trade_assignment_ex4B.jpg)

### Example 5

**Gross Variation Margin Agreements for the same Principal and Counterparty covering all standard Trade Types**

Two Agreements for the same Principal and Counterparty cover all standard Trade Types but require the underlying exposure trades to be assigned to each Agreement on a gross basis, i.e. all trades with positive exposure amounts assigned to one Agreement and all trades with negative exposure amounts assigned to the other Agreement.

Since both Agreements cover the exact same set of Trade Types, an Additional Criteria element is required on each Agreement to delineate which Agreement is assigned the trades with positive or negative exposure amounts.

The Agreement requiring the trades with positive exposure amounts would have an Additional Criteria element defined as EXPOSUREAMOUNT>0.

![trade_assignment_ex5A.jpg](Images/trade_assignment_ex5A.jpg)

The Agreement requiring the trades with negative exposure amounts would have an Additional Criteria element defined as EXPOSUREAMOUNT<0.

![trade_assignment_ex5B.jpg](Images/trade_assignment_ex5B.jpg)

This example is intentionally ignoring any trade exposure amount equal to zero (0). This means any trade with an exposure amount equal to zero (0) will not be assigned to either Agreement.

If all trades are required to be assigned to an Agreement, even if the exposure is zero (0), then only one of the Additional Criteria elements needs to be updated to include all trades with zero (0) exposure amounts: EXPOSUREAMOUNT >=0 or EXPOSUREAMOUNT <=0, but not both.

Including trades with zero (0) exposure amounts within both Additional Criteria elements will result in the Trade Assignment finding more than one Agreement eligible for the trade assignment.

All trade exposure amounts within the system are viewed in the Principal’s perspective. Therefore, all trades with positive exposure amounts are deemed the Counterparty's collateral obligation to the Principal and should be assigned to an Agreement with the Posting Party defined as Counterparty. Conversely, all trades with negative exposure amounts are deemed the Principal's collateral obligation to the Counterparty and should be assigned to an Agreement with Posting Party defined as Principal.

## Trade Parameters Definable As Additional Criteria

When defining additional criteria as part of an Agreement's Trade Assignment Rule, Trade Parameters can be defined.

Certain Trade Parameters are business line specific. For example, Trade Parameter "Book" cannot be used as additional criteria on a Repo Agreement, whereas an OTC Agreement can.

The table below outlines the parameters and in which Business Line(s) they can be defined as additional criteria on an agreement(s).

Trade Parameter | Type | Definable in Business Line(s) | Example  
---|---|---|---  
_BOOK_ | _String_ | _otc / client clearing / central clearing_ | _BOOK in "EUR-SWAPS"_  
_buy/sell_ | _String_ | _otc / client clearing / central clearing_ | _buy/sell in "buy","b"_  
_clearinghouse_ | _String_ | _otc / client clearing / central clearing/ repo/securities lending_ | _clearinghouse in "Lch","cme","ice"_  
_CLEARINGHOUSEREFERENCE_ | _String_ | _otc / client clearing / central clearing/ repo/securities lending_ | _CLEARINGHOUSEREFERENCE in "123-TKREF1-BA43"_  
_CLEARINGSTATUS_ | _String_ | _otc / client clearing / central clearing/ repo/securities lending_ | _CLEARINGSTATUS in "executed"_  
_DEALREF_ | _String_ | _otc / client clearing / central clearing_ | _DEALREF in "123-TKREF1-BA43"_  
_DESK_ | _String_ | _otc / client clearing / central clearing_ | _desk not in "tk-swaps"_  
_EXPOSUREAMOUNT_ | _numeric_ | otc / client clearing / central clearing/ repo/securities lending* | _EXPOSUREAMOUNT >=0  
or  
EXPOSUREAMOUNT <-1000000.00_  
_IMPORTCONFIGURATION_ | _String_ | _otc / client clearing / central clearing/ repo/securities lending_ | _IMPORTCONFIGURATION in "otc trade import"_  
_INSTRUMENTIDENTIFIER_ | _String_ | _repo/securities lending_ | _INSTRUMENTIDENTIFIER in "us91278910"_  
_INSTRUMENTMATURITY_ | _datevalue_ | _repo/securities lending_ | _INSTRUMENTMATURITY > "20110130"_  
_NOTIONAL1CCY_ | _String_ | _otc / client clearing / central clearing_ | _NOTIONAL1CCY not in "usd","eur","gbp"_  
_NOTIONAL2CCY_ | _String_ | _otc / client clearing / central clearing_ | _NOTIONAL2CCY in "JPY","cad"_  
_OPTIONTYPE_ | _String_ | _otc / client clearing / central clearing_ | _OPTIONTYPE in "European"_  
_ORIGINALMATURITYINDAYS_ | _numeric_ | _otc / client clearing / central clearing/ repo/securities lending_ | _ORIGINALMATURITYINDAYS >= 5_  
_ORIGINALMATURITYINMONTHS_ | _numeric_ | _otc / client clearing / central clearing/ repo/securities lending_ | _ORIGINALMATURITYINMONTHS =45_  
_ORIGINALMATURITYINYEARS_ | _numeric_ | _otc / client clearing / central clearing/ repo/securities lending_ | _ORIGINALMATURITYINYEARS <>12_  
_PUT/CALL_ | _string_ | _otc / client clearing / central clearing_ | _PUT/CALL in "put","p"_  
REMAININGMATURITYINDAYS* | _numeric_ | _otc / client clearing / central clearing/ repo/securities lending_ | _REMAININGMATURITYINDAYS >123_  
REMAININGMATURITYINMONTHS* | _numeric_ | _otc / client clearing / central clearing/ repo/securities lending_ | _REMAININGMATURITYINMONTHS <=24_  
REMAININGMATURITYINYEARS* | _numeric_ | _otc / client clearing / central clearing_ | _REMAININGMATURITYINYEARS =12_  
_TRADECCY_ | _string_ | _repo/securities lending_ | _TRADECCY in "usd","eur","gbp"_  
_TRADEDATE_ | _datevalue_ | _otc / client clearing / central clearing_ | _TRADEDATE ="20121225"_  
_TRADEENDDATE_ | _datevalue_ | _repo/securities lending_ | _TRADEENDDATE >= "20111225"_  
_TRADEEXECUTIONDATE_ | _datevalue_ | _repo /securities lending_ | *TRADEEXECUTIONDATE <= "20111230" *  
  
Trade Parameters are only definable for Central and Client Clearing Business Lines when the underlying agreement(s) has a defined Margin Type of Variation.
