# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/import_triparty_positions.html

# File Format for Triparty Collateral Positions

When importing Triparty Collateral data, all positions for the relevant Import Configuration are deleted when a new import is run.

All business lines can be imported. When a mandatory field is not imported correctly during the import process the record is not imported. This is to prevent incomplete Triparty positions from being created in the system. Example: The Instrument Identifier supplied does not match an existing Instrument Identifiers in the database.

**Note:** These positions can be viewed in a TLM® Collateral Management system as a web plug-in module after Triparty Eligibility and Concentration Task has been run.

The task does not impact Margin Calls, Interest Calls, Inventory or Collateral Positions.

Display Name | Mapping File Column Name | Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---|---  
Agreement | Agreement | Yes | Char(255) | ABC Bank | Agreement must be unique and must match Agreement Name or Agreement Alias Group. [Validation Message 397](<validation_messages.md#397>)The field must be supplied, otherwise [validation Message 9](<validation_messages.md#9>).  
CollateralMarginType | CollateralMarginType | Yes | Char(50) | Lock Up, Variation,  
Surplus, Guarantee | The field must be supplied and valid otherwise [Validation Message 9](<validation_messages.md#9>) or [Validation Message 13](<validation_messages.md#13>) will be raised and the record not imported.  
Collateral Margin Type must be unique within a position. [Validation Message 397](<validation_messages.md#397>)'Additional' is not supported for Triparty positions. [Validation Message 396](<validation_messages.md#396>)  
CollateralPositionType | CollateralPositionType | Yes | Char(6) | Held, Posted | The field must be supplied or valid otherwise [Validation Message 9](<validation_messages.md#9>) or [Validation Message 13](<validation_messages.md#13>) will be raised and the record not imported.  
  
Collateral Position Type must be unique within a position. [Validation Message 397](<validation_messages.md#397>)  
InstrumentIdentifier | InstrumentIdentifier | Yes | Char(100) | USD | The field must be supplied or valid otherwise [Validation Message 9](<validation_messages.md#9>) or [Validation Message 25](<validation_messages.md#25>) will be raised and the record not imported.  
  
Instrument Identifier must be unique within a position. [Validation Message 397](<validation_messages.md#397>)  
Notional | Notional | Yes | Money | 1000000 | If the value supplied is not a permissible value, [Validation Message 392](<validation_messages.md#392>) is raised, and the position is not imported.  
AdjustedMarketValueAgreementCurrency | AdjustedMarketValueAgreementCurrency | Yes | Money | 1000000 | If the value supplied is not a permissible value, [Validation Message 393](<validation_messages.md#393>) is raised, and the position is not imported.  
PreHaircutMarketValueAgreementCurrency | PreHaircutMarketValueAgreementCurrency | No | Money | 1000000 | If the value supplied is not a permissible value, [Validation Message 393](<validation_messages.md#393>) is raised, and the value is set to null.  
Price | Price | No | Decimal(12,8) | 102.37 | If the value supplied is not a permissible value, [Validation Message 395](<validation_messages.md#395>) is raised, and the value is set to null.  
Price Date | PriceDate | No | DateTime | 19/02/2018 | If the value supplied is not a permissible value, [validation message 10](<validation_messages.md#10>) is raised, and the value is set to null.  
FX Rate | FxRate | No | Decimal | 1.3136 | If the value supplied is not a permissible value, [validation message 394](<validation_messages.md#394>) is raised, and the value is set to null.  
Valuation Percentage | ValuationPercentage | No | Number(6,3) | 98 | Valuation percentage may not be negative. [Validation message number 398](<validation_messages.md#398>)  
Triparty Custodian Name | TripartyCustodianName | Yes | Char(255) | DTC | The value must exist in the system as an Entity with type of Custodian. If the Custodian does not exist in the system. [Validation message number 247](<validation_messages.md#247>)  
  
Custodian must be unique and must match an Entity Name or Entity Alias Group. [Validation Message 397](<validation_messages.md#397>)
