# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/import_margin_terms.html

# File Format for Margin Terms

When importing Margin Terms all previous records are not deleted when a new import is run. If a file contains a margin term record which already exists in the database, that record is updated. If a file contains a margin term record which does not yet exist in the database, that record is added.

All amounts must be loaded as positive values.

Display Name | Mapping File Column Name | Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---|---  
Agreement Name | AgreementName | Yes | Char (255) | A Bank Csa | The name or alias of the collateral agreement to which the margin terms should be updated.  
  
This must correspond to a valid agreement in the database.  
  
[Validation message number 28](<validation_messages.md#28>)  
  
**Note:** If the Agreement is Locked for Approval, [validation message 263](<validation_messages.md#263>) will be raised, and the record for the corresponding agreement will not be imported.  
Currency | Currency | No | Char (3) | EUR | The currency that the Margin Terms are specified in.  
  
If the field is mapped, and a value supplied in the data file, the value must match a currency in the database otherwise [validation message 18](<validation_messages.md#18>). and the field will be updated to be Agreement Currency.  
  
If the field is mapped and there is a blank value in the data file, the value in the database will be updated to be Agreement currency.  
  
**_If the field is being mapped, it is recommended to specify the currency value._**  
Deliver MTA | DeliverMinimumTransferAmount |  | Decimal (19,6) | 500000 | The Deliver Minimum Transfer Amount, if any, which should be applied to Delivery collateral movements under the Agreement.  
  
The numeric value here is interpreted in conjunction with MinimumTransferAmountMethod value.  
  
When **Flat** as a MinimumTransferAmountMethod  
  
is defined, the value is assumed to be an integer. If the number is populated with decimals, [validation message 332](<validation_messages.md#332>) is raised, and the value is imported without the decimal places.  
  
When **any other** MinimumTransferAmountMethod is defined, the number is evaluated as a percentage and used and can be set with up to 6DP, and a value between 9999.999999  
  
If a percentage value is defined greater than this limit then [validation message 276](<validation_messages.md#276>) is raised.  
  
This field can only be defined for OTC & Client clearing agreements, otherwise [validation message 331](<validation_messages.md#331>) is raised  
Deliver Rounding Amount | DeliverRoundingAmount |  | Decimal (19,6) | 10000 | The Rounding Amount, if any, which should be applied to Return collateral movements under an OTC or Client Clearing agreement.  
  
The numeric value here is interpreted in conjunction with RoundingAmountMethod value.  
  
When Flat as a RoundingAmountMethod  
  
is defined, the value is assumed to be an integer. If the number is populated with decimals, validation message 332 is raised, and the value is imported without the decimal places.  
  
When any other RoundingAmountMethod  
  
is defined, the number is evaluated as a percentage and used and can be set with up to 6DP, and a value between 9999.999999  
  
If a percentage value is defined greater than this limit then [validation message 276](<validation_messages.md#276>) is raised.  
  
This field can only be defined for OTC & Client clearing agreements, otherwise [validation message 331](<validation_messages.md#331>) is raised.  
Deliver Rounding Method | DeliverRoundingMethod |  | Char (255) | Up | The rounding method which should apply to deliveries of collateral under the agreement. The options are:  
  
Up  
  
Down  
  
Closer.  
  
If no value is supplied the default value Up will be used.  
  
[Validation message number 144](<validation_messages.md#144>)  
Minimum Transfer Amount | MinimumTransferAmount |  | Decimal (19,6) | 5000000 | The Minimum Transfer Amount, if any, which should be applied to collateral movements under the Repo or Securities Lending Agreement.  
  
It is assumed the amount entered here is an integer and that the MinimumTransferAmountMethod is defined as Flat.  
  
If the value populated includes decimals these are dropped during the import.  
  
This field is definable only when the Agreement is for a Repo or Securities Lending business line; If defined for an OTC or Client Clearing Agreement, [validation 330](<validation_messages.md#330>) is raised.  
| MinimumTransferAmountMethod | Yes | Char (50) | Permissible values are:  
  
Flat  
  
Percent Notional 1 (or Pct. Notional)  
  
Percent Notional 2 (or Pct. Notional2)  
  
Percent Exposure (or Pct. Exposure) | The MinimumTransferAmountMethod is used in conjunction with both the DeliverMinimumTransferAmount and ReturnMinimumTransferAmount to determine how the agreement Minimum Transfer Amount should be calculated and applied.  
  
The Minimum Transfer Amount Method cannot be different for Returns and Delivery amounts.  
  
If not defined as one of the four permissible values, valuation message 180 is raised and the record is not imported.  
  
If the value here is defined as Flat, and the corresponding amount field is populated with decimals, then validation message 332 will be raised, and the value imported without the decimal places.  
| MarginTermType | Yes | Char (255) | Principal | The Margin Term Type is relevant to the Business Line to which the agreement belongs.  
  
For an OTC Agreement, it must specified whether the terms apply to the Principal or Counterparty. If importing both Principal and Counterparty terms for the same agreement, include a separate line in the file for each.  
  
For a Repo or Securities Lending agreement, it must specify whether the terms being imported are the Agreement or the Internal terms. If importing both Agreement and Internal terms for the same agreement, include a separate line in the file for each.  
  
[Validation message number 147](<validation_messages.md#147>)  
  
The allowed values are:  
  
Agreement  
  
Internal  
  
Principal  
  
Counterparty  
  
[Validation message number 145](<validation_messages.md#145>)  
  
[Validation message number 146](<validation_messages.md#146>)  
Return MTA | ReturnMinimumTransferAmount |  | Decimal (19,6) | 500000 | The Return Minimum Transfer Amount, if any, which should be applied to Return collateral movements under the Agreement.  
  
The numeric value here is interpreted in conjunction with MinimumTransferAmountMethod value.  
  
When Flat as a MinimumTransferAmountMethod  
  
is defined, the value is assumed to be an integer. If the number is populated with decimals, validation message 332 is raised, and the value is imported without the decimal places.  
  
When any other MinimumTransferAmountMethod is defined, the number is evaluated as a percentage and used and can be set with up to 6DP, and a value between 9999.999999  
  
If a percentage value is defined greater than this limit then [validation message 276](<validation_messages.md#276>) is raised.  
  
This field can only be defined for OTC & Client clearing agreements, otherwise [validation message 331](<validation_messages.md#331>) is raised.  
Return Rounding Amount | ReturnRoundingAmount |  | Decimal (19,6) | 10000 | The Rounding Amount, if any, which should be applied to Return collateral movements under the agreement.  
  
The numeric value here is interpreted in conjunction with RoundingAmountMethod value.  
  
When Flat as a RoundingAmountMethod  
  
is defined, the value is assumed to be an integer. If the number is populated with decimals, [validation message 332](<validation_messages.md#332>) is raised, and the value is imported without the decimal places.  
  
When any other RoundingAmountMethod  
  
is defined, the number is evaluated as a percentage and used and can be set with up to 6DP, and a value between 9999.999999  
  
If a percentage value is defined greater than this limit then [validation message 276](<validation_messages.md#276>) is raised.  
  
This field can only be defined for OTC & Client clearing agreements, otherwise [validation message 331](<validation_messages.md#331>) is raised.  
Return Rounding Method | ReturnRoundingMethod |  | Char (255) | Down | The rounding method which should apply to returns of collateral under the agreement. The options are:  
  
Up  
  
Down  
  
Closer.  
  
If no value is supplied the default value Down will be used.  
  
[Validation message number 144](<validation_messages.md#144>)  
| RoundingAmount |  | Decimal (19,6) | 10000 | The Rounding Amount, if any, which should be applied to collateral movements under the Repo or Securities Lending Agreement.  
  
This field is definable only when the Agreement is for a Repo or Securities Lending business line; if defined for an OTC or Client Clearing Agreement, [validation 330](<validation_messages.md#330>) is raised  
  
It is assumed the amount entered here is an integer and that the MinimumTransferAmountMethod is defined as Flat.  
  
If the value populated includes decimals these are dropped during the import.  
| RoundingAmountMethod | Yes | Char (50) | Permissible values are:  
  
Flat  
  
Percent Notional 1 (or Pct. Notional)  
  
Percent Notional 2 (or Pct.   
  
Notional2)  
  
Percent Exposure (or Pct. Exposure) | The RoundingAmountMethod is used in conjunction with both the DeliverRoundingAmount and ReturnRoundingAmount to determine how the Agreement's Rounding Amount should be calculated and applied.  
  
If not defined as one of the four permissible values, valuation message 180 is raised and the record is not imported.  
Threshold | Threshold |  | Decimal (19,6) | 20000000 | The Threshold, if any, which should be used in the margin calculation for the relevant party under the agreement.  
  
The numeric value here is interpreted in conjunction with ThresholdMethod value  
  
When Flat as a ThresholdMethod  
  
d is defined, this is assumed to be an absolute set number and can be defined with 2 DP, and a value between 0 and 9,999,999,999,999.99  
  
When any other ThresholdMethod  
  
is defined, the number is evaluated as a percentage and used and can be set with up to 6DP, and a value between 9999.999999  
  
If a percentage value is defined greater than this limit then [validation message 276](<validation_messages.md#276>) is raised.  
| ThresholdMethod | Yes | Char (50) | Permissible values are:  
  
Flat  
  
Percent Notional 1 (or Pct. Notional)  
  
Percent Notional 2 (or Pct. Notional2)  
  
Percent Exposure (or Pct. Exposure) | The ThresholdMethod is used in conjunction with Threshold to determine how the Threshold should be calculated and applied.  
  
If not defined as one of the four permissible values, valuation message 180 is raised and the record is not imported.
