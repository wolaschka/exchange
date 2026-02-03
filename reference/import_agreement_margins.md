
# File Format for Agreement Margins

When importing Agreement Margins all records for those _agreements_ which are included in the relevant Import Configuration are deleted when a new import is run. That is, this import functions as a Full Replace Based on Configuration File.

Agreement Margins can be imported for Agreements for the following Business Lines:

  * OTC
  * Central Clearing
  * Client Clearing



**Note:** The _MarginType_ and _MarginMethod_ values allowable differ for each of the above business Lines. This is outlined in the below file format definition.

Please see note below Approvals.

Display Name | Mapping File Column Name | Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---|---  
Agreement Name | AgreementName | Yes | Char (255) | A Bank Csa | The name or alias of the collateral agreement to which the agreement margins apply.  
  
This must correspond to a valid.  
  
OTC  
  
Client Clearing  
  
Central Clearing  
  
Agreement in the database.  
  
[Validation message 133](<validation_messages.md#133>)  
Amount | Amount | Yes | Decimal (19,6) | 1000000 | The agreement level margin amount.  
  
When **Flat** as a Margin Method is defined, this can be set with 2 DP, and a value between 0 and 9,999,999,999,999.99.  
  
When **any other** Margin Method is defined, the number is evaluated as a percentage and can be set with up to 6DP, and a value between 9999.999999.  
  
If a percentage value is defined greater than this limit then [validation message 276](<validation_messages.md#276>) is raised.  
Coverage | Coverage |  | Char (100) | IRS and FX | This is a text field which allows information to be loaded about the coverage of the agreement level margin. For example, trade type could be indicated that it is to cover or that it is a total portfolio requirement.  
  
This information is currently not used in any calculations within the application.  
| CurrencyCode | Yes | Char (3) | USD | The currency in which the agreement margin is quoted.  
  
[Validation message 18](<validation_messages.md#18>)  
Due To | DueTo | Yes | Char (50) | Counterparty | The party to which the agreement margin is due. The allowed values are (case insensitive):  
  
Cpty  
  
Counterparty  
  
Prin  
  
Principal  
  
[Validation message 148](<validation_messages.md#148>)  
Method | MarginMethod | Yes | Char (50) | Permissible values are:  
  
**For OTC Agreements:**  
  
Flat  
  
Percent Notional 1 (or Pct. Notional)  
  
Percent Notional 2 (or Pct. Notional2)  
  
Percent Exposure (or Pct. Exposure)  
  
**For Central and Client Clearing Agreements:**  
  
Flat. | The Margin Method is used in conjunction with amount to determine how the agreement margin should be calculated.  
  
There are two levels of validation.  
  
1\. The Margin Method value is checked to ensure that it exists in the system and is valid.  
  
If not defined as one of the four permissible values, [valuation message 180](<validation_messages.md#180>) is raised and the record is not imported.  
  
2\. Additionally for central and client clearing Agreements, the MarginMethod is checked to ensure that it is defined as "Flat".  
  
If not, then [validation message 310](<validation_messages.md#310>) is raised.  
  
In either validation failure case, the record is not loaded.  
Type | MarginType | Yes | Char (50) | Additional  
  
Lock Up | The type of the margin requirement.  
  
Three are two levels of validation performed  
  
1\. Value specified must match one of the following system Values  
  
Additional  
  
Lock Up  
  
otherwise [validation message 150](<validation_messages.md#150>) is raised.  
  
2\. Furthermore, the Margin Type is then validated to ensure that it is applicable for the actual Agreement.  
  
For **OTC Agreements** , allowable values are:  
  
Lock Up  
  
Additional  
  
For **Lock Up Only Agreements** , allowable value is Lock Up only.  
  
For **Central and Client Clearing Agreements** with a Margin Type of Lock Up the only allowable value is  
  
Lock Up.  
  
Agreement Margins cannot be imported for Central & Client Clearing Agreements with a Margin Type Value other than Lock Up.  
  
Any validation failure for the criteria in 2) will cause [validation message 308](<validation_messages.md#308>) to be raised.  
  
Note: If the Agreement Approvals functionality is enabled while one or more additional margin records exist in a locked for approval state, it is not possible to import agreement margins on the same agreement, otherwise [validation message 263](<validation_messages.md#263>) is raised.  
Method | Methodology |  | Char (100) | VAR | This is a text field which allows information to be loaded about how the agreement level margin has been calculated. For example, VAR or NOP.  
  
This information is currently not used in any calculations within the application.  
  
**Note:** If the Approvals functionality is enabled while one or more additional margin records exist in a locked for approval state, it is not possible to import agreement margins on the same agreement.

If it is, then [validation message 263](<validation_messages.md#263>) will be raised.
