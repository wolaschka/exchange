# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/example_notional_in_conc_rules.html

# Examples of Concentration Rules

## Notional In Concentration Rules

This Concentration Rule type checks the Notional Amounts of collateral positions against a Notional Amount in a specified currency as defined on the rule.

As the Notional Amount for a collateral position is denominated in the currency of the actual underlying instrument, it is necessary to convert it into equivalent amounts in the currency defined in the rule, before the limit evaluation can occur.

Under this rule type, Notional Amounts for collateral positions are converted into the rule defined currency equivalent amounts using the latest applicable FX rates.

The following examples break out the calculation into its constituent steps to illustrate this process.

### Example 1

This rule is applied to both parties, and is entered into the system as follows.

![example_concrule_notional2.jpg](Images/example_concrule_notional2.jpg)

![example_concrule_notional1.jpg](Images/example_concrule_notional1.jpg)

The following collateral positions exist on this agreement:

![example_concrule_notional3.jpg](Images/example_concrule_notional3.jpg)

To evaluate this rule, the system performs the following steps:

  1. Any position where the Issuer Type is not CORP is removed from the calculation.
  2. All Notional Amounts for positions remaining after step 1) are converted into their **Euro** equivalent amounts using the latest applicable FX rates.
  3. The system then sums the Notional in Euro equivalent amounts for those positions where the issuer type is **Corp**.
  4. The Euro equivalent total from step 3) is evaluated against the EUR Notional Amount that was entered into the rule.



In the case of this example, the rule stipulated, that a maximum of 50 Million of Notional in EUR where the Issuer Type is CORP can exist before the rule is breached.

For the Principal, this has been exceed in this case (_Euro Notional equivalent of Corporate positions held by Principal is 55,000,000.00_), and therefore when run, the breech is evident.

![example_concrule_notional4.jpg](Images/example_concrule_notional4.jpg)

### Example 2

Maximum of 10 Million Notional in USD can come from Issuer Type Corporate and Instrument Currency USD.

This rule is more refined than Example 1 as it narrows the scope of collateral positions that will be evaluated to those that are _Corporate_ **and** are denominated in _USD_.

Again, this rule is applicable to both parties. It is entered into the system as follows:

![example_concrule2_notional1.jpg](Images/example_concrule2_notional1.jpg)

![example_concrule2_notional2.jpg](Images/example_concrule2_notional2.jpg)

Again, the same collateral positions exist on the Agreement.

![example_concrule_notional3.jpg](Images/example_concrule_notional3.jpg)

To evaluate this rule for the Principal the system performs the following steps.

  1. All Notional Amounts are converted into their US Dollar equivalent amounts using applicable FX rates.
  2. Any position where the Issuer Type is not CORP is removed from the calculation.
  3. Any position where issuer Type is CORP but currency is Not USD is removed from the calculation.
  4. The system sums the Notionals in US Dollar equivalent amounts for those positions not excluded in steps 2) and 3).
  5. The USD Notional equivalent total from step 4) is evaluated against the Notional in USD amount that was entered into the Concentration rule.



In the case of this example, the rule stipulated, that a maximum of 10 Million of Notional in USD where the Issuer Type is CORP, and the Instrument Currency is USD can exist before the rule is breached. In this example, only one collateral position meets this criteria (USD 5 million of US912795RV58) and therefore no breech exists.

![example_concrule2_notional4.jpg](Images/example_concrule2_notional4.jpg)

For the Counterparty, the rule is evaluated in the same way, except using posted positions.

## Percentage of Total Notional Held

This Concentration Rule type calculates the amount to be checked as a percentage of the Total Notional amount of Held (by either party) collateral positions for the agreement, and then compares that result to the percentage that must be maintained as defined in the rule.

As the notional amount for a collateral position is denominated in the currency of the actual underlying instrument, it is necessary to convert all held notional amounts into a common currency notional equivalent amount so that a valid percentage evaluation can occur.

Under this rule type, Notional amounts for held collateral positions are converted into agreement currency equivalent amounts using the current applicable FX rates.

The following examples break out the calculation into its constituent steps to illustrate this process.

### Example 1

**Maximum 15% of Total Notional Held can be of Issuer Type of Corporate**

This rule is applicable to both parties and is entered on an Agreement with a calculation currency of USD as follows:

![example_concrule3_notional1.jpg](Images/example_concrule3_notional1.jpg)

![example_concrule3_notional2.jpg](Images/example_concrule3_notional2.jpg)

The Agreement has the following collateral positions.

![example_concrule_notional3.jpg](Images/example_concrule_notional3.jpg)

To evaluate this rule for the Principal the system performs the following steps.

  1. Posted positions are removed from the calculation.
  2. All notional amounts are converted into their agreement notional amount equivalents using latest applicable FX rates.
  3. The system sums the notional (agreement) amounts for those held positions with an issuer type of Corp.
  4. The system sums the notional (agreement) amounts for all held positions.
  5. The total amount from step 3) is evaluated as a percentage of the total amount from step 4) 



This results in a percentage of 18.04% as shown in the above calculation breakdown.

  1. The percentage from step 5) is compared against the percentage entered into the rule.



In the case of this example, the rule stipulated, that a maximum of 15% of the Total Notional Held could be comprised of Corporate Bonds. This has been exceed in this case (it is 18.04%), and when the concentration rule is run for the Principal, the breech is evidenced.

![example_concrule3_notional4.jpg](Images/example_concrule3_notional4.jpg)

### Example 2

**Maximum of 20% of Total Notional Held or any single Issue can be from Issuer Type in "Corps"**

Again, this rule is implemented bilaterally on the same agreement with a calculation currency of USD.

The rule is entered as follows.

![example_concrule4_notional1.jpg](Images/example_concrule4_notional1.jpg)

![example_concrule4_notional2.jpg](Images/example_concrule4_notional2.jpg)

The Agreement has the same collateral positions as Example 1.

![example_concrule_notional3.jpg](Images/example_concrule_notional3.jpg)

To evaluate this rule for the Principal, the system performs the following steps.

  1. Posted positions are removed from the calculation.
  2. All notional amounts are converted into their agreement currency equivalent amounts using FX rates.
  3. The system sums the notional (agreement) amounts for all held positions. This results in a total of 157,124,875.00 Notional in Agreement currency of USD.
  4. Where a held position has an issuer type of corp, the notional amount derived in step 1) for that position is calculated as a percentage of the total held notional amount from step 3).Where a held position does not have an issuer type of corp, this calculation is omitted. 
  5. The percentage figure from step 4) for each held corporate position is compared to the percentage figure entered into the concentration rule.



In the case of this example, the rule stipulated, that a maximum of 10% of the Total Notional Held of any single issue can come from Issuer Type of Corps.

For this example, only 2 held positions had an issue type of Corp, of which only one (the Italian bond) exceeded the rule. This is evidenced when the concentration rule is run for the Principal.

![example_concrule4_notional4.jpg](Images/example_concrule4_notional4.jpg)
