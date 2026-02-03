
# File Format for OTC Comparison Trades

## Background

The OTC Comparison Trades file import allows the importing of Trade Data files for comparison purposes.

This file format is based on File Format for OTC Trades, but has a much reduced set of validations

OTC Comparison Trades are not subject to the Trade Assignment Tasks within the application, nor currently are they directly viewable within the GUI.

The field CommonTradeReference is used to facilitate the comparison between trades imported via this file configuration, and those imported on via the **OTC Trades Import**.

## Overview

When importing an OTC Comparison Trade data file, all trades for the relevant Import Configuration are deleted when a new import is run.

Display Name | Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---  
AdditionalMargin | Yes, if an AdditionalMarginMethod has been supplied. | Decimal (19,6)  
  
No commas accepted | 1000000 | The trade level Additional Margin for the trade.  
  
Negative values can be loaded although these will be stored and displayed as absolute values. It is the Additional Margin Due To value which determines the direction of the amount.  
AdditionalMarginCurrency | Yes, if an AdditonalMarginMethod of Flat has been supplied. | Char (3) | USD | The currency in which the Additional Margin amount is quoted.  
  
[Validation message number 18](<validation_messages.md#18>).  
  
[Validation message number 176](<validation_messages.md#176>).  
AdditionalMarginDueTo | Yes, if an AdditionalMargin has been supplied. | Char (20) | Prin | The party to which the trade level Additional Margin is due. The allowed values are (case insensitive):  
  
Cpty  
  
Counterparty  
  
Prin  
  
Principal  
  
[Validation message number 148](<validation_messages.md#148>).  
  
If a value cannot be supplied for the field on the file, a default value rule can be used in the mapping file to determine which party is due to receive the Additional Margin based on the sign of the amount.  
AdditionalMarginMethod | Yes, if an AdditionalMargin has been supplied. | Char (50) | Flat | The allowed values (case insensitive) are:  
  
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
  
If using a percentage notional 1 method, the following fields must also be supplied:  
  
AdditionalMargin  
  
AdditionalMarginDueTo  
  
ExchangedNotional1.  
  
[Validation message number 178](<validation_messages.md#178>).  
  
If using a percentage notional 2 method, the following fields must also be supplied:  
  
AdditionalMargin  
  
AdditionalMarginDueTo  
  
ExchangedNotional2.  
  
[Validation message number 180](<validation_messages.md#180>).  
Agreement |  | Char (255) | ABC Bank Csa | The name or alias of the collateral agreement to which the trade belongs (if it can be supplied by the source system).  
Book |  | Char (100) | EURO-SWAPS | The internal trading book to which the trade has been booked.  
BuySell |  | Char (15) | Buy | Buy or Sell flag for Option Trades. The allowed values (case insensitive) are:  
  
buy  
  
b  
  
sell  
  
s  
  
[Validation message number 131](<validation_messages.md#131>).  
ClearingHouse |  | Char (255) | CCP | Free form text. The Central Clearing House that this trades settles through.  
ClearingHouseReference |  | Char (30) | TK1223345456 | The Clearing House Trade Identifier for this trade.  
ClearingStatus |  | Char (50) | Cleared | The status of the trade in the clearing house process.  
ClipsCode |  | Char (255) |  |   
CommonTradeReference | Yes | Char (255) |  |   
Counterparty |  | Char (255) | ABC Bank | This is the Counterparty with which the trade has been done.  
CounterpartyBranch |  | Char (255) | ABC Bank NY | This is the Counterparty branch to which the trade is booked.  
CounterpartyTradeReference |  | Char (255) | CPTY1290129 | The Counterparty's Trade reference ID if it can be supplied by your source system.  
Deal Reference |  | Char (255) |  |   
Desk |  | Char (100) |  | The internal trading desk which executed the trade.  
DTCCTradeReference |  | Char (100) |  | The DTCC trade ID for any trades which have been matched by DTCC if it can be supplied by your source system.  
EffectiveDate |  | Date  
  
Any short date format accepted in a any common locale. For example, 10-May-2006, 10-Mai-2006, 10/22/06, 22/10/2006 | 02/06/2007 | The start date of the trade.  
  
[Validation message number 10](<validation_messages.md#10>).  
ExchangedNotional1 |  | Money  
  
922,337,203,685,477.5808 to +922,337,203,685,477.5807  
  
No commas accepted | 10000000.00 | The notional value of the trade. For example, in an interest rate swap, the predetermined currency amount on which the exchanged interest payments are based.  
ExchangedNotional1Currency | Yes if ExchangedNotional1 value is supplied. | Char (3) | GBP | The currency that Notional 1 is specified in.  
  
This needs to match a currency defined in the system.  
  
[Validation message number 18](<validation_messages.md#18>).  
ExchangedNotional2 |  | Money  
  
922,337,203,685,477.5808 to +922,337,203,685,477.5807 No commas accepted | 14760000.00 |   
ExchangedNotional2Currency | Yes if ExchangedNotional2 value is supplied. | Char (3) | EUR | The currency that Notional 2 is specified in.  
  
This needs to match a currency defined in the system.  
  
[Validation message number 18](<validation_messages.md#18>).  
ExposureAmount |  | Money | 125369.25 | The exposure represents the PV or MtM of the trade.  
ExposureAmountCurrency | Yes, if an Exposure  
  
Amount has been supplied. | Char (3) | USD | The currency that Exposure is specified in.  
  
This needs to match a currency defined in the system Should be a valid ISO code.  
  
[Validation message number 18](<validation_messages.md#18>).  
ExposureAmountDate |  | Date  
  
Any short date format accepted in a any common locale. For example, 10-May-2006, 10-Mai-2006, 10/22/06, 22/10/2006 | 10/07/2007 | The date to which the Exposure Amount corresponds.  
  
[Validation message number 10](<validation_messages.md#10>).  
ExposureTradeComment |  | Char (255) |  | This field allows for narrative entered with the trade to be received from the source system and stroked against the trade.  
LockUpMargin |  | Decimal (19,6)  
  
No commas accepted | 250000 | The trade level Lock Up Margin for the trade.  
  
Negative values can be loaded although these will be stored and displayed as absolute values. It is the Lock Up Margin Due To value which determines the direction of the amount.  
LockUpMarginCurrency |  | Char (3) | EUR | The currency in which the Lock Up Margin amount is quoted.  
  
[Validation message number 18](<validation_messages.md#18>).  
  
[Validation message number 179](<validation_messages.md#179>).  
LockUpMarginDueTo |  | Char (20) | Counterparty | The party to which the trade level Lock Up Margin is due. The allowed values are (case insensitive):  
  
Cpty  
  
Counterparty  
  
Prin  
  
Principal  
  
[Validation message number 148](<validation_messages.md#148>).  
  
If the field cannot be supplied on the file, a default value rule can be used in the mapping file to determine which party is due to receive the Lock Up Margin based on the sign of the amount.  
LockUpMarginMethod |  | Char (50) | Pct. Notional | The allowed values (case insensitive) are:  
  
Flat  
  
Percent Notional 1/ Pct. Notional  
  
Percent Notional 2 /Pct. Notional2  
  
Percent Exposure  
  
[Validation message number 170](<validation_messages.md#170>).  
  
If a Flat margin method is being used, the following fields must also be supplied:  
  
LockUpMargin  
  
LockUpMarginDueTo  
  
LockUpCurrency.  
  
[Validation message number 177](<validation_messages.md#177>).  
  
If a percentage notional 1 method is being used, the following fields must also be supplied:  
  
LockUpMargin  
  
LockUpMarginDueTo  
  
ExchangedNotional1.  
  
[Validation message number 179](<validation_messages.md#179>).  
  
If a percentage notional 2 method is being used, the following fields must also be supplied:  
  
LockUpMargin  
  
LockUpMarginDueTo  
  
ExchangedNotional2.  
  
[Validation message number 181.](<validation_messages.md#181>)  
MaturityDate |  | Date  
  
Any short date format accepted in any common locale.  
  
For example, 10-May-2006, 10-Mai-2006, 10/22/06, 22/10/2006 | 01/06/2030 | The date on which the trade matures.  
  
[Validation message number 14](<validation_messages.md#14>).  
OptionType |  | Char (255) | European | The type of option. The allowed values are:  
  
American  
  
European  
  
Bermudan  
  
[Validation message number 129](<validation_messages.md#129>).  
PrimaryTradeReference |  | Char (100) | SWP12345678 | The primary Trade ID as supplied by the corresponding source system.  
Principal |  | Char (255) | Prin Bank | This is the principal which executed the trade.  
PrincipalBranch |  | Char(255) | Prin Bank London | This is the principal branch to which the trade is booked.  
PutCall |  |  | Put | Put or Call flag for Option Trades. The allowed values (case insensitive) are:  
  
Put  
  
P  
  
Call  
  
C  
  
[Validation message number 130](<validation_messages.md#130>).  
Quantity |  | Money | 1000 | The quantity of the underlying which was traded. For example, the number of shares in an equity transaction.  
SecondaryTradeReference |  | Char (100) |  | This is an optional trade reference field allowing the secondary identifier for a trade to be stored.  
Spread |  | Money |  | The spread for an option or credit derivative transaction.  
StrikePrice |  | Money | 1.0023 | Strike Price for Option Trades.  
TradeDate |  | Date  
  
Any short date format accepted in a any common locale. For example, 10-May-2006, 10-Mai-2006, 10/22/06, 22/10/2006 | 01/06/2007 | The date on which the trade was done.  
  
[Validation message number 10](<validation_messages.md#10>).  
TraderName |  | Char (100) | Joe Bloggs | The name of the trader who executed the trade.  
TradeType |  | Char (255) | FX SWAP | The trade type or trade type alias.  
Underlying |  | Char (255) | XYZ Ltd, Convertible Bond, Maturity 10/06/25 | A description of the underlying asset or reference entity in the transaction.  
UnderlyingInstrumentIdentifier |  | Char (30) | XS0034394709 | The underlying instrument/asset identifier. For example, SEDOL, CUSIP or ISIN code of the corresponding asset.
