# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/collateral_ladders.html

# Collateral Ladders

Collateral Ladder functionality relies upon the creation and assignment of Collateral Ladder data objects in the TLM® Collateral Manager web application. Should you not have this separately licensed application installed, please speak to your TLM Collateral representative.

## Background

When Posting collateral out, it may sometimes be preferable to use certain sources and types of collateral over others, for a variety of reasons.

The preferences by which collateral will be selected for use may vary according to:

  * Whether available collateral is being sourced from internal (rehypothecated from held positions) funds; or sourced from (Asset Pools) external funds 
  * Which Agreement the collateral is to be posted to. 
  * The Margin Type of the Agreement collateral is being posted to. 



A Collateral Ladder allows a user to set up various rules to define sets of available collateral which can be used for allocation purposes and which can be set as preferences over each other.

## Composition

Collateral Ladders consist of three elements:

  1. Ladder Name - The Collateral Ladder Name.
  2. One or more coverage Rules - Coverage rules state what collateral characteristics the rule will cover. That is which collateral sources (Internal, Asset Pools), which collateral buckets, or specific instruments are covered. It is important to note that you can define numerous rules, and assign a preference to each.
  3. Assignments - Which Agreement(s), and Margin Types that the ladder is assigned to.



Only a single Collateral Ladder can be assigned to an Agreement/Margin type combination. However, one Collateral Ladder can have multiple coverage rules assigned to it.

**Creation**

Collateral Ladders are created in TLM Collateral Manager web application which is a separate component to TLM Collateral Version 5.

**Usage**

When the Asset Allocation screen is opened to identify available collateral for [Anticipated Demands](<margin_calls_tabs.md#asset-allocations>), TLM Collateral Management dynamically queries TLM Collateral Manager to read Collateral Ladder Information.

If a matching Collateral Ladder is found, the rule-sets it contains are read and used to populate the Priority field for those matching available collateral positions in the Asset Allocation screen. The priority field is populated with a numeric value which reflects the collateral's relative preferences as defined in the ladder.

By default, the Available to Allocate items in the Asset Allocation screen are sorted by Priority field to denote those assets that should be allocated in Ladder preference order.

**Note:**

  1. Without installation of the TLM Collateral Manager application, this priority derivation is not performed.
  2. Should an item of available collateral match multiple rule sets on the ladder (for example, it matches multiple buckets) then for the purposes of priority, the relative position of the uppermost matching rule set is used.



## Example

Two Collateral Ladders are set up in TLM Collateral Manager:

**Ladder 1**

Please note the following salient details:

  1. The Ladder has _eight_ **_coverage rules_** , with **Bucket All Debt** for **External Asset Pools** being the highest preference.
  2. The Ladder is **_assigned_** to **Agreement** _Collateral Ladder Agreement_ , for **Margin Type** _Variation_.



![Ladder2_Def.jpg](Images/Ladder2_Def.jpg)

**Ladder 2**

Again, please note the following salient details:

  1. The Ladder has _six_ **_coverage rules_** , with **USD Instrument** for **Internal Asset Pools** being the highest preference.
  2. The Ladder is **_assigned_** to **Agreement** _Collateral Ladder Agreement_ but for **Margin Type** _Lock Up_.
  3. There is no coverage rules for any internal assets other than USD, GBP and EUR.



Two anticipated Demands exist for agreement Collateral Ladder Agreement; one for Variation requirement, and one for a Lock Up Requirement.

When the Asset Allocation screen is opened for the Variation requirement, the system does the following:

  * The system queries TLM Collateral Manager to determine whether a collateral ladder exists that is assigned to Agreement Collateral Ladder Agreement for Margin Types Lock Up. A match is found (Ladder 1) and is listed in the top right of the pane (1) in the screenshot.
  * The system them looks at the available collateral assets and seeks to match these to any rule sets in the Collateral Ladder. Where the available item matches, it is given a priority value (2 in the screenshot ) reflecting the relative preference of the coverage rule it matches.



For example:

  * The highest preference coverage rule is for collateral that falls within the All Debt bucket and has an Asset pool definition of External Asset Pool.
  * Within the available to allocate pane, two items match this coverage rule (US31402CV748 and US31403HEX44) and are therefore given a priority of 1.
  * The next highest preference coverage rule of S&P equity bucket again for External Asset Pool. Two items in the available collateral pane match and are thus are assigned the next priority number.
  * It is worth noting below, that the available item XS0248766833 which is given a priority of 6.



It is not covered by the first Ladder coverage rule as it does not have a defined asset pool (a non defined asset pool in V5 is synonymous with "internal" in the coverage rule)
