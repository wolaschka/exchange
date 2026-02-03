
# File Format for Collateral Positions

When importing Collateral Positions all records for the relevant Import Configuration are deleted when a new import is run.

Display Name | Mapping File Column Name | Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---|---  
| Agreement | Yes | Char (255) |  | This is the name of the agreement to which the position belongs.  
  
[Validation message number 28.](<validation_messages.md#28>)  
| AgreementCurrency | No** | Char (3) | EUR | This field is mandatory if key ImportedPositionForConcentration exists.  
  
If the above key doesn't exist, the field is ignored.  
  
The field refers to the base currency of the agreement to which the position belongs.  
  
[Validation message number 18](<validation_messages.md#18>).  
Asset Pool | AssetPoolName | No | Char (100) | Demo Pool | When a posted position is imported, the Asset Pool can be specified from which the position was sourced.  
  
This can only be specified for a Posted position, otherwise [Validation Message 337](<validation_messages.md#337>) will be raised.  
  
The Asset Pool name specified must match an asset pool entry that exist in the system, otherwise validation message 336 will be raised and the record will not load.  
  
Additionally the asset pool name defined is checked to ensure that is matches those associated to the Agreements Principal. If it does not, [validation message 338](<validation_messages.md#338>) is raised and the record will be rejected.  
Collateral Margin Type | CollateralMarginType | Yes | Char (50) | Variation  
  
LockUp  
  
Surplus  
  
Guarantee | The field must be supplied, otherwise [Validation Message 9](<validation_messages#9>) will be raised and the record not imported.  
  
Margin Type denotes which requirement the collateral position is allocated to.  
  
There are two levels of validation performed on this field.  
  
1\. **Validity Check**  
  
There are four permissible system values:  
  
Variation  
  
LockUp  
  
Surplus  
  
Guarantee  
  
If the value specified does not match ay of the above [Validation Message 239](<validation_messages.md#239>) will be raised and the record will not be imported.  
  
2\. **Applicability Check**  
  
The value is then checked to ensure it is applicable for the Agreement.  
  
This varies depending on the Business Line for the Agreement:  
  
For **Repo & Securities Lending** Agreements only a value of Variation is allowable. [Validation Message 245](<validation_messages.md#245>) will be raised if the value is defined as Lock Up.  
  
If Surplus or Guarantee is defined then [validation message 311](<validation_messages.md#245>) is raised.  
  
For **OTC Agreements** with a collateral allocation method of _Auto Allocate_ , only Variation is allowable [Validation Message 245](<validation_messages.md#245>) will be raised if the value is defined as Lock Up  
  
If Surplus or Guarantee is defined then [validation message 311](<validation_messages.md#311>) is raised.  
  
For **OTC Agreements** with a collateral allocation method of _Segregate Lock Up and Variation_ , allowable values are Variation or Lock Up.  
  
If Surplus or Guarantee is defined then [validation message 311](<validation_messages.md#311>) is raised.  
  
For **OTC Agreements** with a Lock Up Calculation Type of _Lock Up Only_ , allowable value is Lock Up. Otherwise, a [validation message 342](<validation_messages.md#342>) is raised and the record is not imported.  
  
For **Central and Client Clearing Agreements** , the value must match the _Margin Type_ defined on the Agreement. If it does not, [validation message 311](<validation_messages.md#311>) is raised.  
  
Additionally, for Client Clearing Agreements [validation message 312](<validation_messages.md#312>) is raised if the value defined is not Variation or Lock Up  
Held/Posted | CollateralPositionType | Yes | Char (6)  
  
Only 'Held' or 'Posted' are acceptable | Posted | This indicates whether the Principal is holding or has posted the position.  
  
[Validation Message number 27](<validation_messages.md#27>).  
Instrument Ref | InstrumentIdentifier | Yes | Char (100) | 912795VQ1 | The Instrument Identifier as supplied by the corresponding source system. If the collateral type is cash then the respective currency should be shown in this field.  
  
[Validation Message number 25](<validation_messages.md#25>).  
Mkt Val (Agmt) | MarketValueAgreementCurrency | No** | 922,337,203,685,477.5807  
  
No commas accepted | 1456255.67 | This field is mandatory if key ImportedPositionForConcentration exists.  
  
If the above key doesn't exist, **the field is ignored**.  
  
The field refers to the current post-haircut market value of the position in the agreement currency.  
  
[Validation message number 29](<validation_messages.md#29>).  
  
See comments below in the notional section about whether this will include intransit values.  
  
Although mandatory, the value loaded here is ignored in the system, and collateral positions are valued using pricing, haircut and FX data.  
  
It is expected that these fields will be made optional in future release.  
Mkt Val (Sys) | MarketValueSystemCurrency | No** | 922,337,203,685,477.5807  
  
No commas accepted | 24698122.65 | This field is mandatory if key  
  
ImportedPositionForConcentration exists.  
  
If the above key doesn't exist, the field is ignored.  
  
The field refers to the current post-haircut market value of the position in the [system currency](<system_currency.md>).  
  
[Validation message number 29](<validation_messages.md#29>).  
  
See comments below in the notional section about whether this will include intransit value.  
  
Although mandatory, the value loaded here is ignored in the system, and collateral positions are valued using pricing, haircut and FX data.  
  
It is expected that these fields will be made optional in future release.  
Notional | Notional | Yes | Float 0 to + 922,337,203,685,477.5807  
  
No commas accepted | 10000000.00 | The face amount or quantity of the position. Any amounts imported with more than 4 digits following the decimal will be rounded to 4 digits only.  
  
The system also fives the user the ability to enter in transit collateral movements directly in the application via the Workflow.  
  
If the user elects to represent movements in the system this way, then it would be expected that the user load only settled positions and have configure the settle movements task not to Adjust Positions  
  
However, if don't use movements through the Workflow, and the books and records settlement system is not TLM Collateral then it would be expected that the collateral positions file includes both settled and in transit positions.  
  
Finally if collateral movement entry is being used via Workflow as the books and records, then it is strongly recommended not to mix coverage for collateral position loads and settle movements configs.  
  
see notes below.  
| SystemCurrency | No** | Char (3) | USD | This field is mandatory if key ImportedPositionForConcentration exists.  
  
If the above key doesn't exist, the field is ignored.  
  
The field refers to the [system currency](<system_currency.md>). This should be in line with the user's organizations books and records.  
  
[Validation message number 18](<validation_messages.md#18>).  
  
** These fields are mandatory only if the key ImportedPositionForConcentration exists and is set as true. If this is not the case, the fields will be ignored on the import, and their values will be calculated within the system.

TLM Collateral supports the use of loading collateral positions files and/or using collateral movement entry via workflow.

**Note:** There are some important considerations when using collateral position loads and settle movements tasks.

  * If the intent to use TLM Collateral as a margin calculation engine, the following assumptions are made:

    * Load collateral positions (both settled and in transit) as well as trade exposure and other relevant data into the system for accurate Margin Calculation Purposes.
    * Synch/port the Margin Calculation Results back to the internal systems for processing.
    * No standard workflow steps that exist in TLM Collateral will be used, as they are designed to work with collateral movements entered via the Workflow - Please speak to a member of TLM Professional Services if in doubt.

If this is the intention, then settle movement task is not required.

Additionally, please note that the valuation of collateral balances that are loaded in, will be subsequently calculated based on latest dirty prices and valuation percentages for the instruments that exist in the system. Please see the final bullet point below.

  * If the intent to load settled collateral position information into TLM Collateral, but wishing to book collateral entries via the system to differentiate in-transit movements, then it is assumed that the collateral position load will cover only settled positions. Settle movement task will be needed, but it is expressly recommended that the Adjust Positions flag is turned off for the Business Line / Instrument Class coverage of collateral positions that are loaded - otherwise incorrect balances could be generated. Again, the valuation of collateral will be performed by the system - see the final bullet point below.

  * If the intent to use TLM Collateral as the books and records collateral balances system, then the settle movements configuration should set the Adjust Positions flag as On (Checked). It is expected that if this configuration is used, then collateral files for the same Business Line / Instrument Class combination as the settle movements task would not be loaded otherwise incorrect collateral balance information will occur.
  * For example - if collateral positions for OTC Cash collateral are imported, ensure that any settle movements configuration that have for OTC Cash do not have the Adjust Positions flag checked.
  * Finally, please note that from version 5.0.12 onwards, the valuation of collateral balances and movements is done within TLM Collateral using latest dirty prices and valuation percentages applicable for the collateral instruments. Therefore the market value fields (Mkt Val Agmnt) and (Mkt Val Sys) are ignored for collateral valuation purposes.



See [Settle Movements Task](<task_settle_movements.md>) and [How to Delete a Settle Movements Configuration](<task_settle_movements.md#delete-task>) for more information.
