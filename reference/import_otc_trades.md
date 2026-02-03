# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/import_otc_trades.html

# File Format for OTC Trades

## Background

The OTC Trades import has been enhanced to allow the import trade data for Agreements for the following Business Line

OTC Agreements

Central Clearing Agreements (Please see footnote one)

Client Clearing Agreements (please see footnote one).

## Case Sensitivity & Correlation Sets

From version 5.2.3 onwards, for those clients using SQL Database platform, a correlation set configured as case insensitive will no longer be applied. Case sensitivity will now apply.

Therefore: Trade Ref: ABC and Trade Ref: Abc will not be seen as duplicates, but as two separate trades.

## Overview

When importing an OTC Trade data file, all trades for the relevant Import Configuration are deleted when a new import is run.

Trades can currently be assigned to collateral agreements either by including the Agreement name (or alias) in the file or by including the Counterparty and Principal names (or aliases) and/or Counterparty and Principal Branches (or aliases) and Trade Types (or aliases) in the file.

If the Counterparty and Principal entity fields are included in the mapping file, the system will use this entity information to find agreements to which the trade could be assigned. It will then use the Counterparty Branch and Principal Branch fields (if mapped) to further analyze the trade to determine which of those agreements it should belong to.

If the Counterparty and Principal entity fields are not included in the mapping file, the system will use the Counterparty Branch and Principal Branch fields to work out the Counterparty and Principal entities.

If no agreement is supplied and data is missing from the Counterparty, Principal, Counterparty Branch, Principal Branch or Trade Type columns in the file, trades will still be loaded into the database but may not be assigned to a collateral agreement. [Validation message number 117](<validation_messages.md#117>).

Display Name | Mapping File Column Name | Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---|---  
_additional_ | AdditionalMargin | Yes, if an AdditionalMarginMethod has been supplied. | Decimal (19,6)  
  
No commas accepted | 1000000 | The trade level Additional Margin for the trade.  
  
Negative values can be loaded although these will be stored and displayed as absolute values. It is the Additional Margin Due To value which determines the direction of the amount.  
  
The numeric value here is interpreted in conjunction with AdditionalMarginMethod value  
  
When Flat as a AdditionalMarginMethod  
  
is defined, this is assumed to be an absolute set number and can be defined with 2 DP, and a value between 0 and 9,999,999,999,999.99  
  
When any other AdditionalMarginMethod  
  
is defined, the number is evaluated as a percentage and used and can be set with up to 6DP, and a value between 0 and 9999.999999  
  
If a percentage value is defined greater than this limit then [validation message 276](<validation_messages.md#276>) is raised.  
  
**Note:** Please see note one below for additional margins and client clearing agreements.  
_additional ccy_ | AdditionalMarginCurrency | Yes, if an AdditionalMarginMethod of Flat has been supplied. | Char (3) | USD | The currency in which the Additional Margin amount is quoted.  
  
[Validation message number 18](<validation_messages.md#18>).  
  
[Validation message number 176](<validation_messages.md#176>).  
_additional due to_ | AdditionalMarginDueTo | Yes, if an AdditionalMargin has been supplied. | Char (20) | Prin | The party to which the trade level Additional Margin is due. The allowed values are (case insensitive):  
  
Cpty  
  
Counterparty  
  
Prin  
  
Principal  
  
[Validation message number 148](<validation_messages.md#148>).  
  
If the field is not supplied in the file, the default value rule can be used in the mapping file to determine which party is due to receive the Additional Margin based on the sign of the amount.  
_additional method_ | AdditionalMarginMethod | Yes, if an AdditionalMargin has been supplied. | Char (50) | Flat | The allowed values (case insensitive) are:  
  
Flat  
  
Percent Notional 1/ Pct. Notional  
  
Percent Notional 2 /Pct. Notional2  
  
Percent Exposure  
  
[Validation message number 170](<validation_messages.md#170>).  
  
If a Flat margin method is being used, the following fields must also be supplied:  
  
AdditionalMargin  
  
AdditionalMarginDueTo  
  
AdditionalMarginCurrency.  
  
[Validation message number 176](<validation_messages.md#176>).  
  
If a percentage Notional 1 method is being used, the following fields must also be supplied:  
  
AdditionalMargin  
  
AdditionalMarginDueTo  
  
ExchangedNotional1.  
  
[Validation message number 178](<validation_messages.md#178>).  
  
If a percentage Notional 2 method is being used, the following fields must also be supplied:  
  
AdditionalMargin  
  
AdditionalMarginDueTo  
  
ExchangedNotional2.  
  
[Validation message number 180](<validation_messages.md#180>).  
_Source Agreement_ | Agreement |  | Char (255) | ABC Bank Csa | The name or alias of the collateral agreement to which the trade belongs (if it can be supplied by the source system).  
  
This must match to either a valid OTC or "eligible" Client Clearing or Central Clearing agreement in the database or one of it's aliases for the relevant Alias Group.  
  
[Validation message number 133](<validation_messages.md#133>).  
  
If the Agreement Name specified does not match, the record is loaded but Agreement Name is not captured. [Validation message 309](<validation_messages.md#309>) is populated. In these circumstances, the OTC Trade cannot be assigned.  
  
**Note:** In order to be "eligible" for trades, a client clearing agreement must have a Margin Type of "Variation".  
_book_ | Book | Yes, if supplied for a single OTC trade, then a value must be supplied for all OTC trades in the file. | Char (100) | EURO-SWAPS | The internal trading book to which the trade has been booked.  
  
**Note:** The Margin Calculation Analysis will fail with the following error when the Book field is mapped and does not have a value:  
  
"Nullable object must have a value."  
_buy sell_ | BuySell |  | Char (15) | Buy | Buy or Sell flag for Trades. The allowed values (case insensitive) are:  
  
buy  
  
b  
  
sell  
  
s  
  
[Validation message number 131](<validation_messages.md#131>).  
_Clearing house_ | ClearingHouse |  | Char (255) | CCP | Free form text. The Central Clearing House that this trades settles through.  
_clearing house reference_ | ClearingHouseReference |  | Char (30) | TK1223345456 | The Clearing House Trade Identifier for this trade.  
_clearing status_ | ClearingStatus |  | Char (50) | Cleared | The status of the trade in the clearing house process.  
_clips code_ | ClipsCode |  | Char (255) |  | A CLIPS code is a 9 digit code which is mandatory for dealers using DTCC to match trades. This code is used to uniquely identify the reference entity in a credit derivative transaction. This field can be used to reconcile trades using TLM Collateral Reconciliation and therefore can be imported to the OTC Trades table if it can be provided by your source system.  
  
[Validation message number 132](<validation_messages.md#132>).  
_Not currently viewable in gui_ | CommonTradeReference |  | Char (255) | LCH_CLS_14567A | OTC Trades loaded on the OTC Import can be compared to trades loaded via the OTC comparison import.  
  
The common "join" between the two sets of trades for comparison purposes is this reference.  
_source counterparty_ | Counterparty |  | Char (255) | ABC Bank | This is the Counterparty with which the trade has been done and must match to either a valid Counterparty in the database or one of it's aliases for the relevant Alias Group.  
  
[Validation message number 21](<validation_messages.md#21>).  
| CounterpartyBranch |  | Char (255) | ABC Bank NY | This is the Counterparty branch to which the trade is booked.  
  
It must correspond to a valid Counterparty branch for the supplied Counterparty.  
  
[Validation message number 163](<validation_messages.md#163>).  
  
[Validation message number 162](<validation_messages.md#162>).  
_Counterparty trade ref_ | CounterpartyTradeReference |  | Char (255) | CPTY1290129 | The Counterparty's Trade reference ID if it can be supplied by your source system.  
_deal ref_ | DealReference |  | Char (255) |  | This is an optional deal reference field that could be used, for example, in the situation where multiple trades roll up into a "deal group". The Deal Reference field could be used to store the deal group id. The individual trade id should be stored as the Primary Trade Reference.  
_desk_ | Desk |  | Char (100) |  | The internal trading desk which executed the trade.  
_dtcc trade ref_ | DTCCTradeReference |  | Char (100) |  | The DTCC trade ID for any trades which have been matched by DTCC if it can be supplied by your source system.  
_notional 1_ | ExchangedNotional1 |  | Money  
  
922,337,203,685,477.5808 to +922,337,203,685,477.5807 No commas accepted | 10000000.00 | The notional value of the trade. For example, in an interest rate swap, the predetermined currency amount on which the exchanged interest payments are based.  
_notional 1 ccy_ | ExchangedNotional1Currency | Yes if ExchangedNotional1 value is supplied. | Char (3) | GBP | The currency that Notional 1 is specified in.  
  
This needs to match a currency defined in the system.  
  
[Validation message number 18](<validation_messages.md#18>).  
_notional 2_ | ExchangedNotional2 |  | Money  
  
922,337,203,685,477.5808 to +922,337,203,685,477.5807  
  
No commas accepted | 14760000.00 |   
_notional 2 ccy_ | ExchangedNotional2Currency | Yes if ExchangedNotional2 value is supplied. | Char (3) EUR The currency that Notional 2 is specified in.  
  
This needs to match a currency defined in the system.  
  
[Validation message number 18](<validation_messages.md#18>). |  |   
_exposure amount_ | ExposureAmount |  | Money | 125369.25 | The exposure represents the PV or MtM of the trade.  
_exp ccy_ | ExposureAmountCurrency | Yes, if an Exposure  
  
Amount has been supplied. | Char (3) | USD | The currency that Exposure is specified in.  
  
This needs to match a currency defined in the system Should be a valid ISO code.  
  
[Validation message number 18](<validation_messages.md#18>).  
_exposure date_ | ExposureAmountDate |  | Date  
  
Any short date format accepted in a any common locale. For example, 10-May-2006, 10-Mai-2006, 10/22/06, 22/10/2006 | 10/07/2007 | The date to which the Exposure Amount corresponds.  
  
[Validation message number 10](<validation_messages.md#10>).  
_exposure trade comment_ | ExposureTradeComment |  | Char (255) |  | This field allows for narrative entered with the trade to be received from the source system and stroked against the trade.  
_Extension label name_ | < ExtensionName >  
  
Note - if values are to be loaded into extensions, then the mapping file must include the ExtensionName exactly as it has been defined in the OTC Trade Extension Reference Data Object.  
  
Additionally, the mapping file must explicitly define that the field is an extension.  
  
For an example of this syntax see Example of Agreement Mapping File with Extensions | No but see notes | Various, but must be one of the following data types:  
  
**Alphanumeric**  
  
**Numeric**  
  
**Date**  
  
**Boolean**  
  
(Y, Yes, 1, True, T  
  
F, No, 0, False, F) |  | Although these fields are not mandatory, there are some specific rules if the fields are mapped in the mapping file:  
  
1\. The **ExtensionName** specified in the Import File must be identical to the Extension Name on the OTC Trades Extension reference data object.  
  
Additionally, the mapping file must state that the field is an Extension.  
  
If not, then the [validation message 8](<validation_messages.md#8>) will be raised, and the file will not load.  
  
Also, the corresponding extension reference data objects must already exist in the database prior to loading any values.  
  
2\. If the extension has been defined as **AlphaNumeric** , then any values on the import file should be within the lower and upper character limits defined. If Not then  
  
[validation message 232](<validation_messages.md#232>) will be raised, and the value will be not be loaded.  
  
3\. If the Extension is defined as a **Numeric Data Type** , any values on the import file for this extension must also be numeric, otherwise [validation message 11](<validation_messages.md#11>) will be raised, and the value will be set to NULL.  
  
4\. If the Extension field defined is **Numeric** , the values on the import file must be within the minimum and maximum numbers as defined on the reference data object. If not, then [validation message 233](<validation_messages.md#233>) will be raised and the value will not be loaded.  
  
5\. If the extension field is defined as a **boolean** , the values on the import file must be one of the following (**Yes,Y, 1, True, T, No, N, 0, False, F**) otherwise [validation message 19](<validation_messages.md#19>) will be raised, and the value will not be loaded.  
  
6\. If the extension field is defined as a **date** , then the values on the import file must be in a recognized date format, otherwise [validation message 10](<validation_messages.md#10>) is raised, and the value ignored.  
_lock up_ | LockUpMargin | Yes, if a LockUpMarginMethod has been supplied. | Decimal (19,6)  
  
No commas accepted | 250000 | The trade level Lock Up Margin for the trade.  
  
Negative values can be loaded although these will be stored and displayed as absolute values. It is the Lock Up Margin Due To value which determines the direction of the amount.  
  
The numeric value here is interpreted in conjunction with AdditionalMarginMethod value  
  
When Flat as a AdditionalMarginMethod  
  
is defined, this is assumed to be an absolute set number and can be defined with 2 DP, and a value between 0 and 9,999,999,999,999.99  
  
When any other AdditionalMarginMethod  
  
is defined, the number is evaluated as a percentage and used and can be set with up to 6DP, and a value between 9999.999999  
  
If a percentage value is defined greater than this limit then [validation message 276](<validation_messages.md#276>) is raised.  
  
**Note:** Please see note one below for Lock Up margins and Client Clearing agreements  
_lock up ccy_ | LockUpMarginCurrency | Yes, if a LockUpMargin Method of Flat has been supplied. | Char (3) | EUR | The currency in which the Lock Up Margin amount is quoted.  
  
[Validation message number 18](<validation_messages.md#18>).  
  
[Validation message number 179](<validation_messages.md#179>).  
_lock up due to_ | LockUpMarginDueTo | Yes, if a LockUpMargin has been supplied. | Char (20) | Counterparty | The party to which the trade level Lock Up Margin is due. The allowed values are (case insensitive):  
  
Cpty  
  
Counterparty  
  
Prin  
  
Principal  
  
[Validation message number 148](<validation_messages.md#148>).  
  
If the field cannot be supplied on the file, a default value rule can be used in the mapping file to determine which party is due to receive the Lock Up Margin based on the sign of the amount.  
_lock up method_ | LockUpMarginMethod | Yes, if a LockUpMargin has been supplied. | Char (50) | Pct. Notional | The allowed values (case insensitive) are:  
  
Flat  
  
Percent Notional 1/ Pct. Notional  
  
Percent Notional 2 /Pct. Notional2  
  
Percent Exposure  
  
[Validation message number 170](<validation_messages.md#170>).  
  
If a Flat margin method is being used, the following fields must also be supplied:  
  
LockUpMargin  
  
LockUpMarginDueTo  
  
LockUpCurrency.  
  
[Validation message number 177](<validation_messages.md#177>)  
  
If a percentage Notional 1 method is being used, the following fields must also be supplied:  
  
LockUpMargin  
  
LockUpMarginDueTo  
  
ExchangedNotional1.  
  
[Validation message number 179](<validation_messages.md>).  
  
If a percentage Notional 2 method is being used, the following fields must also be supplied:  
  
LockUpMargin  
  
LockUpMarginDueTo  
  
ExchangedNotional2.  
  
[Validation message number 181](<validation_messages.md#181>).  
_maturity date_ | MaturityDate |  | Date Any short date format accepted in any common locale. For example, 10-May-2006, 10-Mai-2006, 10/22/06, 22/10/2006 01/06/2030 |  | The date on which the trade matures.  
  
[Validation message number 14](<validation_messages.md#14>).  
_option type_ | OptionType |  | Char (255) | European | The type of option. The allowed values are:  
  
American  
  
European  
  
Bermudan  
  
[Validation message number 129](<validation_messages.md#129>).  
_Trade ref_ | PrimaryTradeReference | YES | Char (100) | SWP12345678 | The primary Trade ID as supplied by the corresponding source system.  
  
Trade IDs must be unique per Import Configuration.  
  
[Validation message number 112](<validation_messages.md#112>).  
_source principal_ | Principal |  | Char (255) | Prin Bank | This is the principal which executed the trade and must match to either a valid principal in the database or one of it's aliases for the relevant Alias Group.  
  
[Validation message number 20](<validation_messages.md#20>).  
| PrincipalBranch |  | Char(255) | Prin Bank London | This is the principal branch to which the trade is booked.  
  
It must correspond to a valid principal branch for the supplied Principal.  
  
[Validation message number 160](<validation_messages.md#160>).  
  
[Validation message number 161](<validation_messages.md#161>).  
_put call_ | PutCall |  | Char (15) | Put | Put or Call flag for Option Trades. The allowed values (case insensitive) are:  
  
Put  
  
P  
  
Call  
  
C  
  
[Validation message number 130](<validation_messages#130>).  
_quantity_ | Quantity |  | Money | 1000 | The quantity of the underlying which was traded. For example, the number of shares in an equity transaction.  
_secondary trade ref_ | SecondaryTradeReference |  | Char (100) |  | This is an optional trade reference field allowing a secondary identifier for the trade to be stored. For example, if there is a front office system trade ID and a back office system trade ID, one could be stored as the Primary Trade Reference and the other one as the Secondary Trade Reference.  
_spread_ | Spread |  | Money |  | The spread for an option or credit derivative transaction.  
_strike price_ | StrikePrice |  | Money | 1.0023 | Strike Price for Option Trades.  
_Trade date_ | TradeDate |  | Date  
  
Any short date format accepted in a any common locale. For example, 10-May-2006, 10-Mai-2006, 10/22/06, 22/10/2006 | 01/06/2007 | The date on which the trade was done.  
  
[Validation message number 10](<validation_messages.md#10>).  
_trader name_ | TraderName |  | Char (100) | Joe Bloggs | The name of the trader who executed the trade.  
_trade type_ | TradeType | YES | Char (255) | FX SWAP | The trade type or trade type alias.  
  
[Validation message number 108](<validation_messages.md#108>).  
_Underlying_ | Underlying |  | Char (255) | XYZ Ltd, Convertible Bond, Maturity 10/06/25 | A description of the underlying asset or reference entity in the transaction.  
_underlying instr identifier_ | UnderlyingInstrumentIdentifier |  | Char (30) | XS0034394709 | The underlying instrument/asset identifier. For example, SEDOL, CUSIP or ISIN code of the corresponding asset.  
  
There is currently no link between this ID and the Instruments stored in TLM Collateral for the purposes of using as collateral.  
  
**Note:** Trade Date, Effective Date and Maturity Date currently have no bearing on whether or not a trade will be included in an exposure calculation. All trades will be included in the calculation regardless of those dates. It is therefore important to ensure that the trade feeds are accurately supplying those trades which should be margined. For example, they do not send trades which have not yet started or which have matured.

When an OTC Trades import task is run, a series of informational Messages are created to help determine the validity of the file.

A message is created for each of the following items:

  * Number of Trades with Stale Exposure Date
  * Number of Trades with Null Exposure Date
  * Number of Trades with Zero Exposure
  * Number of Trades with Invalid or Null Exposure



These messages can be seen in the Task Status screen.

**Note:** This import was expanded in version 5.1.28 to incorporate exposure trades for client clearing agreements, and in version 5.1.30 was expanded to include Central Clearing Agreements. However, there are some specific considerations involved:

  * Exposure trades can only be imported for Client Clearing or Central Clearing Agreements that have a Margin Type of Variation. 
  * The import will allow trade level additional margin and/or lock up amounts to be imported for a Central and Client Clearing Agreement. However, these amounts will not be used in Margin Calculations for Client Clearing Agreements.



Margin Calculations are imported for Central Clearing Agreements. They are not calculated within the system.

**Note:** This import was further updated in version 5.2.8 for OTC Lock Up Only agreements. However, there are some specific considerations involved:

  * OTC Lock Up Only Agreements do not accept trades.
  * The import will validate if the Agreement Name, if supplied, is a valid agreement for trades. If the agreement is not valid for trades, the Agreement Name is set to NULL and the trade is imported. This means the trade will then be subject to Principal, Counterparty, and Trade Type combination rule assignment.
  * Additional logic has been added to the Trade Assignment task to ensure trades are not assigned to OTC Lock Up Only Agreements. See [Trade Assignment Tasks](<task_status.md#trade-assignments>) for more details.


