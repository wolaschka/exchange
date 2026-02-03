# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/custom_statement.html

# Custom Statements

## Standard Header

Header Type of Standard will cause the following fields to be displayed in the Header section of a custom report.

Report Field | Data Source / Comments  
---|---  
Principal Name | Principal from Agreement  
Custom Report Name | Name of Custom Report from Reference Data  
For Valuation Date (Today) |   
Counterparty: (Counterparty) | Counterparty on Agreement  
Agreement: (Agreement) | Agreement Name  
Client Contact (Contact Name) | Contact on Agreement  
  
This is the contact whom is configured to receive this custom statement.  
Tel: (tel number) | Telephone Number field from Contact above  
Fax: (fax number) | Fax Number field from Contact  
  
## Custom Statement Header

Header Type of **Custom Statement** will cause the following fields to be displayed in the Header section of a custom report.

Report Field | Data Source / Comments  
---|---  
Custom Report Name | Name of Custom Report from Reference Data  
For Valuation Date (Today) |   
Counterparty: (Counterparty) | Counterparty on Agreement  
Agreement: (Agreement) | Agreement Name  
Client Contact (Contact Name) | Contact on Agreement  
  
This is the contact whom is configured to receive this custom statement.  
Tel: (tel number) | Telephone Number field from Contact above  
Fax: (fax number) | Fax Number field from Contact  
  
## Custom Position Statement Writer Section

Selecting this option for inclusion in a custom statement reference data template will cause the details of collateral positions (at the time of the Margin Call) for the Agreement. to be included in the actual report.

Collateral Positions are separated according to Held or Posted position, and are summed on post Haircut (Agreement).

The following fields are included when this option is selected.

Report Field | Data Source /Comments  
---|---  
Instrument | For securities:  
  
Concatenation of Eligible Bucket that Instrument falls into Plus Instrument Currency Plus Instrument Primary ID.  
  
For Cash Instruments  
  
Cash Plus Cash Currency  
Inst Maturity Date | Maturity Date of Instrument taken from Instruments table.  
  
This is blank for Cash  
Inst Ccy | The currency of the Instrument  
Notional | Notional Amount of the Collateral Position  
Market Value (Inst Ccy) | The Market Value of the Collateral Position in the currency of the Instrument. Note that this value does not have any Valuation percentages applied.  
  
Calculated as (Notional * Dirty Price)  
  
**_Please see note below about sign notation_**  
Valuation % | The Valuation Percentage that has been applied to the collateral position based on Basic Eligibility on the Agreement  
Post Haircut (Inst Ccy) | The value of the collateral Position in Instrument ccy - calculated as (Notional * Dirty Price * Valuation Percentage)  
  
**_Please see note below about sign notation_**  
Post Haircut (Agreement Ccy) | The value of the collateral Position in Agreement Ccy - calculated as (Notional * Dirty Price * Valuation Percentage) converted into Agreement Currency using Instrument FX rates and Agreement FX rates as necessary.  
  
**_Please see note below about sign notation_**  
Position Type | The settled status of the Position:  
  
Held  
  
Posted  
  
In Transit  
  
**Note:** Signage notation for collateral positions is as follows.

**Within Held Collateral Section **

  * Settled Held Positions are shown as Positive amounts.
  * In Transit Deliver to Prin movements are shown as Positive amounts.
  * In Transit Return to Cpty movements are shown as Negative amounts.



**Within Posted Collateral Section**

  * Settled Posted Positions are shown as Negative amounts.
  * In Transit Deliver to Cpty movements are shown as Negative amounts.
  * In Transit Return to Prin movements are shown as Positive amounts.



**Example of Custom Position Writer Section**

**_Collateral Position Data sample_**

![i_CustomRpt1_Example_6_rot.jpg](Images/i_CustomRpt1_Example_6_rot.jpg)

**_Figure: Collateral Position Data sample continued_**

![i_CustomRpt1_Example_7_rot.jpg](Images/i_CustomRpt1_Example_7_rot.jpg)

## Report One OTC Exposures

Selecting this option for inclusion in either the top or bottom table of a custom report template, provides details of the exposure trades that exist for an Agreement at the time of the Margin Call to be included in the report.

**Data Prerequisites**

No extension fields are required for this report.

**Exposures Data Composition**

Specifically, the following exposure related fields are included.

Report Field | Data Source / Comments  
---|---  
Deal Reference | Deal Reference from Trade Exposures  
Primary Trade Reference | Trade Reference from Trade Exposures  
Trade Date | Trade Date from Trade Exposures  
Maturity Date | Trade Date from Trade Exposures  
Exposure (Agreement CCY) | Exposure Amount (Agmt Ccy) from Trade Exposures  
  
** _These amounts are Summed at the bottom of the section._**  
Product | Trade Type from Trade Exposures  
Underlying Name | Underlying from Trade Exposures  
Notional | Notional 1 from Trade Exposures  
CCY | Notional 1 Ccy from Trade Exposures  
Initial Margin Amount | The Sum of Lock Up and Additional Amounts for the Trade  
  
An amount will be shown here, provided that Lock Up and Additional are in the same CCY. If they are differing currencies N/A will be shown  
Initial Margin CCY | The Currency for Lock Up and Additional Margin Amounts.  
  
This will be blank if  
  
Sum of Additional plus Lock Up is zero.  
  
or  
  
Initial Margin Amount (as defined above) is shown as N/A  
Initial Margin (Agreement CCY) | Initial Margin Amount in Agreement Currency.  
  
This is the sum of Additional amount and Lock Up amount fields converted into Agreement Currency.  
  
**_These amounts are Summed at the bottom of the section._**  
  
**Example of Custom Report One OTC Exposures**

![i_CustomRpt1_Example_1_rot.jpg](Images/i_CustomRpt1_Example_1_rot.jpg)

## Report Two OTC Exposures

Selecting this option for inclusion in either the top or bottom table of a custom report template, provides details of the exposure trades for an Agreement grouped into Trade Types and grouped within Trade Types by Notional Currency, that existed at the time of the Margin Call.

**Data Pre-requisites**

This report requires OTC Trade Extension fields to exist, with a particular Data Type, in order that all data fields on the report are populated.

These are indicated below.

Extension Name | Extension Data Type | Extension Reference Data Item  
---|---|---  
EarliestTradeDate | Date | OTC Trade Extension  
OriginalNotional | Numeric | OTC Trade Extension  
MtmPrice | Numeric | OTC Trade Extension  
Interest | Numeric | OTC Trade Extension  
EquityAccrual | Numeric | OTC Trade Extension  
OtherEquityCash | Numeric | OTC Trade Extension  
ToSettleReceivable | Numeric | OTC Trade Extension  
ToSettlePayable | Numeric | OTC Trade Extension  
MarginPercent | Numeric | OTC Trade Extension  
  
**Note:** If the Margin Calculation Analysis task has not been run, the entire report will be blank. Also, if the Margin Calculation Analysis process has been configured to exclude trade extensions, the extension data values within the report will be blank.

**Exposures Data Composition**

Specifically the following trade exposure fields are included in the report.

Data here is grouped by the Trade Type and then within Trade Type by Notional 1 Currency.

Report Field | Data Source / Comments  
---|---  
Deal Reference | Deal Reference from Trade Exposures  
Earliest Trade Date | Value taken from OTC Trade Exposure Extension field **_EarliestTradeDate_**  
Maturity Date | Maturity Date from Trade Exposures  
Original Notional | Value taken from OTC Trade Exposure Extension field **_OriginalNotional_**  
Description | Underlying from Trade Exposures  
MTM Price | Value taken from OTC Trade Exposure Extension field **_MtmPrice_**  
Current® Notional | Notional 1 from Trade Exposures  
Interest | Value taken from OTC Trade Exposure Extension field **_Interest_**  
Equity Accrual | Value taken from OTC Trade Exposure Extension field **_EquityAccrual_**  
Other Equity Cash | Value taken from OTC Trade Exposure Extension field **_OtherEquityCash_**  
To Settle Receivable | Value taken from OTC Trade Exposure Extension field **_ToSettleReceivable_**  
To Settle Payable | Value taken from OTC Trade Exposure Extension field **_ToSettlePayable_**  
Margin Percent | Value taken from OTC Trade Exposure Extension field **_Margin Percent_**  
Exposure (Agreement Currency) | Exposure Amount (Agmt Ccy) from Trade Exposures  
  
** _These amounts are Summed at the bottom of each Product and Notional 1 CCY Grouping. and then at the end of the Exposures Position Section._**  
Initial Margin (Agreement CCY) | Initial Margin Amount in Agreement Currency.  
  
This is the sum of Additional amount and Lock Up amount fields converted into Agreement Currency.  
  
**_These amounts are Summed at the bottom of each Product and Notional 1 CCY Grouping. and then at the end of the Exposures Position Section._**  
Total Margin (Agreement CCY) | The Sum of Exposure (Agreement CCY) and Initial Margin (Agreement CCY) fields as defined above  
  
** _These amounts are Summed at the bottom of each Product and Notional 1 CCY Grouping. and then at the end of the Exposures Position Section._**  
  
**Example of Custom Report Two OTC Exposures**

![i_CustomRpt2_Example_1_rot.jpg](Images/i_CustomRpt2_Example_1_rot.jpg)

## Report Three OTC Exposures

Selecting this option for inclusion in either the top or bottom table of a custom report template, provides details of the exposure trades for an Agreement grouped into Trade Types and grouped within Trade Types by Notional Currency, that existed at the time of the Margin Call.

**Data Pre-requisites**

This report requires OTC Trade Extension fields to exist, with a particular Data Type, in order that all data fields on the report are populated.

These are indicated below.

Extension Name | Extension Data Type | Extension Reference Data Item  
---|---|---  
EarliestTradeDate | Date | OTC Trade Extension  
LatestTradeDate | Date | OTC Trade Extension  
ISIN | Numeric | OTC Trade Extension  
MtmPrice | Numeric | OTC Trade Extension  
Interest | Numeric | OTC Trade Extension  
EquityAccrual | Numeric | OTC Trade Extension  
OtherEquityCash | Numeric | OTC Trade Extension  
MarginPercent | Numeric | OTC Trade Extension  
MarginPercent | Numeric | OTC Trade Extension  
  
**Note:** If the Margin Calculation Analysis task has not been run, the entire report will be blank. Also, if the Margin Calculation Analysis process has been configured to exclude trade extensions, the extension data values within the report will be blank.

**Exposures Data Composition**

Specifically the following trade exposure fields are included in the report

Data here is grouped by the Trade Type and then within Trade Type by Notional 1 Currency.

Report Field | Data Source / Comments  
---|---  
Trade Reference | Trade Reference from Trade Exposures  
Earliest Trade Date | Value taken from OTC Trade Exposure Extension field **_Earliest TradeDate_**  
Latest Trade Date | Value taken from OTC Trade Exposure Extension field **_Latest TradeDate_**  
Maturity Date | Trade Date from Trade Exposures  
Quantity | Quantity taken from Trade Exposures  
ISIN | Value taken from OTC Trade Exposure Extension field **_ISIN_**  
Description | Underlying from Trade Exposures  
MTM Price | Value taken from OTC Trade Exposure Extension field **_MtmPrice_**  
Notional1 | Notional 1 from Trade Exposures  
Interest | Value taken from OTC Trade Exposure Extension field **_Interest_**  
Equity Accrual | Value taken from OTC Trade Exposure Extension field **_EquityAccrual_**  
Other Equity Cash | Value taken from OTC Trade Exposure Extension field **_OtherEquityCash_**  
Margin Percent | Value taken from OTC Trade Exposure Extension field ***Margin Percent ***  
Exposure (Agreement Currency) | Exposure Amount (Agmt Ccy) from Trade Exposures  
  
** _These amounts are Summed at the bottom of each Product and Notional 1 CCY Grouping. and then at the end of the Exposures Position Section._**  
Initial Margin (Agreement CCY) | Initial Margin Amount in Agreement Currency.  
  
This is the sum of Additional amount and Lock Up amount fields converted into Agreement Currency.  
  
**_These amounts are Summed at the bottom of each Product and Notional 1 CCY Grouping. and then at the end of the Exposures Position Section._**  
Total Margin (Agreement CCY) | The Sum of Exposure (Agreement CCY) and Initial Margin (Agreement CCY) fields as defined above  
  
These amounts are Summed at the bottom of each Product and Notional 1 CCY Grouping. and then at the end of the Exposures Position Section  
  
**Example of Custom Report OTC Exposures Three**

![i_CustomRpt3_Example_1_rot.jpg](Images/i_CustomRpt3_Example_1_rot.jpg)

## Custom Exposures Four

This statement provides details of the exposure trades for an Agreement. No Totals or grouping are applied to the report, and collateral balances are not included. The report can therefore be used for reconciliation purposes.

Given the large number of fields that are created in this report, it is expected that it would be opened in Microsoft™ Excel spreadsheet software, or similar.

**Data Pre-requisites**

This report requires OTC Trade Extension fields to exist, with a particular Data Type, in order that all data fields on the report are populated.

These are indicated below.

Extension Name | Extension Data Type | Extension Reference Data Item  
---|---|---  
ISIN | Numeric | OTC Trade Extension  
FixedRate | Numeric | OTC Trade Extension  
  
**Note:** If the Margin Calculation Analysis task has not been run, the entire report will be blank. Also, if the Margin Calculation Analysis process has been configured to exclude trade extensions, the extension data values within the report will be blank.

**Other Considerations**

This custom report reference data item should be specified with report type of Excel or CSV in order that all the data will be included. The data will not correctly populate in entirety if PDF is defined.

**Content**

Specifically the following fields are included in the report.

**Exposures Position Section**

Report Field | Data Source / Comments  
---|---  
Principal | Principal on Agreement  
Counterparty | Counterparty on Agreement  
Deal Reference | Deal Ref from Trade Exposures  
Primary Trade | Reference Trade Ref from Trade Exposure  
Trade Date | Trade Date from Trade Exposures  
Effective Date | Effective Date from Trade Exposures  
Maturity Date | Maturity Date from Trade Exposures  
Notional 1 Currency | Notional 1 Ccy from Trade Exposures  
Notional 1 | Notional 1 from Trade Exposures  
Notional 2 Currency | Notional 2 Ccy from Trade Exposures  
Notional 2 | Notional 2 from Trade Exposures  
Trade Type | Trade Type from Trade Exposures  
Buy/Sell | Buy/Sell value from Trade Exposures  
Put/Call | Put / Call value from Trade Exposures  
Strike Price | Strike Price from Trade Exposures  
ISIN | Value taken from OTC Trade Exposure Extension field ISIN  
Underlying Name | Underlying from Trade Exposures  
Fixed Rate | Value taken from OTC Trade Exposure Extension field **_FixedRate_**  
Exposure Currency | Exposure Ccy from Trade Exposures  
Exposure Amount | Exposure Amount from Trade Exposures  
Agreement Currency | Agreement Currency from Agreement Table.  
Exposure in Agreement Currency | Exposure Amount (Agmt Ccy)  
Lock Up Margin | Lock Up field on Trade Exposures  
  
** _Please see note below about signage notation_**  
Lock Up Margin Currency | Lock Up Ccy from Trade Exposures  
Lock Up Margin in Agreement Currency | Lock Up (Agmt Ccy)  
  
**_Please see note below about signage notation_**  
Additional Margin | Additional field on Trade Exposures  
  
** _Please see note below about signage notation_**  
Additional Margin Currency | Additional Ccy on Trade Exposures  
Additional Margin in Agreement Currency | Additional (Agmt Ccy) on Trade Exposures  
  
** _Please see note below about signage notation_**  
  
**Signage Notation**

Lock Up and Additional Amounts expressed as positive numbers are in favor of the Principal.

Conversely, negative amounts are those in favor of the Counterparty.

**Example of Custom Report Custom Exposures Four**

![CustomExample4.jpg](Images/CustomExample4.jpg)

## Report Five OTC Exposures

This statement provides details of the exposure trades for an Agreement.

No Totals or grouping are applied to the report, and collateral balances are not included. The report can therefore be used for reconciliation purposes.

Given the large number of fields that are created in this report, it is expected that it would be opened in Microsoft™ Excel spreadsheet software, or similar.

**Data Pre-requisites**

None - although the following 3 CCP specific fields are included on this extract, as it is intended this report will be used as a reconciliation tool. It is therefore recommended to have populated values for

  * Clearing House Reference
  * Clearing House
  * Clearing Status



**Other Considerations**

This custom report reference data item should be specified with report type of Excel or CSV in order that all the data will be included. The data will not correctly populate in entirety if PDF is defined.

**Content**

Specifically the following fields are included in the report.

**Exposures Position Section**

Report Field | Data Source / Comments  
---|---  
Trade Ref | Trade Ref from Trade Exposure  
Trade Type | Trade Type  
Notional 1 Ccy | Notional 1 Ccy from Trade Exposures  
Notional 1 | Notional 1 from Trade Exposures  
Notional 2 Ccy | Notional 2 Ccy from Trade Exposures  
Notional 2 | Notional 2 from Trade Exposures  
Trade Date | Trade Date from Trade Exposures  
Effective Date | Effective Date from Trade Exposures  
Maturity Date | Maturity Date from Trade Exposures  
Exposure Ccy | Exposure Ccy from Trade Exposures  
Exposure Amount | Exposure Amount from Trade Exposures  
Exposure Date | Exposure date from Trade Exposures  
Exposure FX Rate | FX rate for Exposure Ccy to Agreement Ccy  
Exposure Amount (Agmt Ccy) | Exposure Amount (Agmt Ccy)  
Quantity | Quantity from Trade Exposures  
Strike Price | Strike price from Trade Exposures  
Spread | The spread for an option or credit derivative transaction.  
Buy/Sell | Buy or Sell flag for Option Trades.  
Put/Call | Put or Call flag for Option Trades  
Option Type | The type of option  
Underlying | A description of the underlying asset or reference entity in the transaction.  
Underlying Instr Identifier | The underlying instrument/asset identifier.  
Lock Up Method | Lock Up Method taken from Trade Exposures  
Lock Up | Lock Up field on Trade Exposures  
  
** _Please see note below about signage notation_**  
Lock Up Ccy | CCY of the Lock Up Requirement  
Lock Up Due To | Party that the Lock Up Amount is Due to.  
Lock Up FX Rate | FX Rate for Lock Up CCY to Agreement CCY  
Lock Up (Agmt Ccy) | Lock Up expressed in Agreement Currency  
Additional Method | Additional Margin Method taken from Trade Exposures  
Additional | Additional Margin amount field on Trade Exposures  
  
** _Please see note below about signage notation_**  
Additional Ccy | CCY of the Additional Margin Requirement  
Additional Due To | Party that the Additional Margin Amount is Due to.  
Additional FX Rate | FX Rate for Additional Margin CCY to Agreement CCY  
Additional (Agmt Ccy) | Additional Margin expressed in Agreement Currency  
Source Principal | Additional Margin  
Principal Branch | This is the principal which executed the trade  
Source Principal Branch | This is the principal branch to which the trade is booked.  
Source Counterparty | This is the Counterparty with which the trade has been done  
Counterparty Branch | This is the Counterparty branch to which the trade is booked.  
Source Counterparty Branch | This is the Counterparty branch to which the trade is booked.  
Source Agreement | The collateral agreement to which the trade belongs.  
Trader Name | The name of the trader who executed the trade.  
Book | The internal trading book to which the trade has been booked.  
Desk | The internal trading desk which executed the trade.  
Secondary Trade Ref | This is an optional trade reference field allowing the storing of a secondary identifier for the trade.  
DTCC Trade Ref | The DTCC trade ID for any trades which have been matched by DTCC  
Deal Ref | This is an optional deal reference field  
CLIPS Code | A CLIPS code is a 9 digit code which is mandatory for dealers using DTCC to match trades  
Counterparty Trade Ref | The Counterparty's Trade reference ID  
Exposure Trade Comment | This field allows for narrative entered with the trade to be received from the source system  
Source Trade Type | The trade type.  
Clearing House Reference | The reference for the trade from the Central Clearing Party  
Clearing House | The central Counterparty that the trade clears through  
Clearing Status | Cleared status for the trade.  
  
**Signage Notation**

Lock Up and Additional Amounts expressed as positive numbers are in favor of the Principal.

Conversely, negative amounts are those in favor of the Counterparty.

**Example of Custom Report Custom Exposures Five**

_Positions Exposure Data sample_

The statement columns have been manipulated to move the CCP columns further to the left for display purposes

![CustomRpt5_example.jpg](Images/CustomRpt5_example.jpg)

## Repo Exposure

This statement provides details of the Repo exposure trades for a Repo or Securities Lending Agreement. No Totals or grouping are applied to the report, and collateral balances are not included. The report can therefore be used for reconciliation purposes.

Given the large number of fields that are created in this report, it is expected that it would be opened in Microsoft™ Excel spreadsheet software, or similar.

No Totals or grouping are applied to the report, and collateral balances are not included. The report can therefore be used for reconciliation purposes.

**Data Pre-requisites**

None

**Other Considerations**

Due to the tabular nature of the data, this custom report reference data item should be specified with report type of Excel or CSV in order that all the data will be included.

The data will not correctly populate in entirety if PDF is defined.

**Content**

Specifically the following fields are included in the report. They are sourced from the Repo Trades Table.

Report Field  
---  
Trade Ref  
Trade Type  
Notional  
Trade Ccy  
Instr Identifier  
Instrument Description  
Instr Coupon  
Instr Maturity  
Instr Ccy  
Coupon Accrual Interest  
Trade Execution Date  
Trade Start  
Trade End  
Repo Rate  
Repo Rate Description  
Traded Clean Price  
Traded Dirty Price  
Trade Value  
Mkt Clean Price  
Mkt Dirty Price  
Factor  
Haircut %  
Haircut Value  
Mkt Value  
Exposure Amount  
Exposure Date  
Exp Ccy  
Exposure FX Rate  
Exposure Amount (Agmt Ccy)  
Excluded  
Source Agreement  
Source Principal  
Principal Branch  
Source Principal Branch  
Source Counterparty  
Counterparty Branch  
Source Counterparty Branch  
Base Mkt Value  
Lower Mkt Value  
Upper Mkt Value  
Index Ratio  
Mkt Closing Yield  
Secondary Trade Ref  
Import Configuration  
  
**Signage Notation**

Lock Up and Additional Amounts expressed as positive numbers are in favor of the Principal.

Conversely, negative amounts are those in favor of the Counterparty.

**Example of Custom Report Custom Exposures Four**

_Positions Exposure Data sample_

![CustomRepoStatmentExample4.jpg](Images/CustomRepoStatmentExample4.jpg)
