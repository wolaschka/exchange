
# File Format for Instruments

When importing Instruments all previous records are not deleted when a new import is run. If a file contains a record for an Instrument which already exists in the Instruments table, that record is updated. If a file contains a record for an Instrument which does not yet exist in the Instruments table, that record is added.

Instruments can be subject to approval (if defined so in the system level configuration file.) If that is the case, no changes to the Instruments can be made manually or via an import. If a Instruments import is run while the instrument is pending approval, a [validation message 364](<validation_messages.md#364>) is raised.

Display Name | Mapping File Column Name | Applies To Instrument Class ? | Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---|---|---  
Agency | Agency | Debt |  | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether or not the Instrument is an agency bond.  
Amount Issued | AmountIssued | Debt |  | Money | 100,000,000.00 | The amount of the Instrument that was originally Issued.  
Amount Outstanding | AmountOutstanding | Debt |  | Money | 56,250,000.00 | The amount of the Instrument remaining in circulation.  
Asset Country | AssetCountry | Debt |  | Char (100) | United Kingdom | The country where the Instrument was issued.  
  
[Validation Message number 47](<validation_messages.md#47>).  
Average Volatility | AverageVolatility | Equity |  | Decimal (10,4) | 0.7978 | Measure of risk. The annualized standard deviation of a stocks closing price over the previous year. A higher value indicates larger changes in the stocks price, where a lower value indicates smaller changes in the stocks price.  
Beta | Beta | Equity |  | Decimal (6,2) | 1.22 | A measure of an Instrument's volatility relative to a benchmark, usually the S&P 500.  
Bond Purpose | BondPurpose | Debt |  | Char (100) | Pension Funding | The bond purpose for municipal bonds.  
  
[Validation Message number 43](<validation_messages.md#43>).  
ABS/CMO Asset Class | CMOABSAssetClass | Debt |  | Char (1500) | Accrual Bond | The CMO or ABS Asset Class.  
  
[Validation Message 59](<validation_messages.md#59>).  
  
Multiple CMO ABS Asset Classes can be loaded in for one instrument using a sub delimiter.  
  
[Validation Message 60](<validation_messages.md#60>).  
Collateral Type | CollateralType | Both |  | Char (100) | Deposit Notes® | The collateral type associated to the Instrument in Bloomberg.  
  
[Validation Message number 45](<validation_messages.md#45>).  
Cost of Funding | CostOfFunding | Both |  | Decimal (19,2) | 5.754 | This is a numeric field which can be populated with an internal number representing the cost of funding.  
Coupon | Coupon | Debt |  | Money | 5.75 | The coupon percentage applicable to the Instrument.  
Coupon Type | CouponType | Debt |  | Char (100) | Fixed | The type of coupon payable on the Instrument.  
  
[Validation Message number 37](<validation_messages.md#37>).  
Credit Enhanced | CreditEnhanced | Debt |  | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether or not the Instrument is Credit Enhanced.  
Currency | CurrencyCode | Both | Yes | Char (3) | USD | The currency in which the instrument is denominated.  
  
[Validation Message number 18](<validation_messages.md#18>).  
CUSIP | CUSIP | Both |  | Char (9) | 912795ZEO | A unique identifier for securities.  
  
[Validation Message number 62](<validation_messages.md#62>).  
Description | Description | Both |  | Char (250) | United States Treasury 5.75% 2010 | A free form description of the Instrument.  
Dividend Currency | DividendCurrencyCode | Equity |  | char (3) |  |   
Dividend Payable | DividendPayable | Equity |  | Decimal (11,2) |  |   
DTC Eligible | DTCEligible | Debt |  | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether or not the Instrument can be cleared through the Depository Trust Corporation.  
Exchange | ExchangeName | Equity |  | Char (100) | London Stock Exchange | Must match an existing Exchange as defined in Reference Data, otherwise [Validation Message 288](<validation_messages.md#288>) is raised.  
Ex Date | ExDate | Both |  | Date | 30/05/2011 | Ex-Date is the first day that an instrument trades without entitlement to the next coupon/dividend. The ex-date is typically two business days prior to the record date which is used to determine who should receive the coupon/dividend.  
Extension Label Name | < ExtensionName >  
  
**Note:** if values are to be loaded into extensions, then the mapping file must include the ExtensionName exactly as it has been defined in the Entity Extension Reference Data Object.  
  
Additionally, the mapping file must explicitly define that the field is an extension.  
  
See Example of Agreement Mapping File with Extensions for example of this.  
  
Although example is for an Agreement Import, the concept and format are identical for Instruments. | Both | No | Extension Values can only be one of the following 4 data types.  
  
**AlphaNumeric**  
  
**Numeric**  
  
**Date**  
  
**Boolean**  
  
Y, Yes, 1, True, T  
  
F, No, 0, False, F |  | Although extensions are not mandatory, there are some specific rules:  
  
1\. The ExtensionName specified in the Import File must be identical to the Extension Name on the Instrument Extension Reference Data object.  
  
Additionally, the mapping file must state that the field is an Extension.  
  
(See [Example of Agreement Mapping File with Extensions](<import_example_agmt_mapping_file.md>) for general examples)  
  
If not, then the validation message 8 will be raised, and the file will not load.  
  
2\. If the Extension is defined as a Numeric Data Type, any values on the import file for this extension must also be numeric, otherwise [validation message 113](<validation_messages.md#113>) will be raised, and the value will be set to NULL.  
  
3\. If the Extension is defined as an AlphaNumeric Data Type and the length of the value on the Import file does not fall within the lower and upper limits, then [validation message 232](<validation_messages.md#232>) will be raised, and the value will be not be loaded.  
  
4\. If the Extension is defined as Numeric, the values on the import file must be within the minimum and maximum numbers as defined on the reference data object. If not, then [validation message 233](<validation_messages.md#233>) will be raised and the value will not be loaded.  
  
5\. If the Extension field is defined as a Boolean, the values on the import file must be one of the following:  
  
(Yes,Y, 1, True, T, No, N, 0, False, F) otherwise [validation message 19](<validation_messages.md#19>)  
  
will be raised, and the value will not be loaded.  
  
6.If the extension field is defined as a Date, then the values on the import file must be in a recognized date format, otherwise validation message 10 is raised, and the value ignored.  
  
**Note:** When importing extension values, all existing extension values stored for the instrument are deleted, and then replaced with those (successfully validated) values specified on the import file. Care should therefore be undertaken to ensure that the import file contains values for all extensions.  
Fitch Watch | FitchWatch | Debt |  | Char (10) | Positive | Indicates whether an Instrument is on ratings watch with Fitch. The options are:  
  
Negative  
  
Positive  
  
Developing  
Fund Source | FundSource | Debt |  | Char (100) | Highway revenue tolls | The fund source for municipal bonds.  
  
[Validation Message number 44](<validation_messages.md#44>).  
Index Linked | IndexLinked | Debt |  | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether or not the coupon for this Instrument is linked to an index.  
Instrument Industry Sector | IndustrySector | Debt |  | Char (100) | Financial | The Industry Sector to which the Instrument belongs.  
  
[Validation Message number 39](<validation_messages.md#39>).  
Institutional Ownership (%) | InstitutionalOwnershipPct | Equity |  | decimal(6, 3) | 89 |   
Primary Id | InstrumentIdentifier | Both | Yes | Char (50) | US912827DF23 | The Instrument Identifier which is to be considered as the primary ID for the instrument.  
  
Validation is done against a combination of this field and the Instrument Identifier Type to ensure that the number of characters in the ID corresponds to the ID Type. (for ISIN, CUSIP and SEDOL).  
  
[Validation Message number 61](<validation_messages.md#61>).  
  
[Validation Message number 62](<validation_messages.md#62>).  
  
[Validation Message number 63](<validation_messages.md#63>).  
  
Where the Instrument Identifier Type is Internal, validation checks that this ID does not correspond to an existing ISIN, CUSIP or SEDOL.  
  
[Validation Message number 105](<validation_messages.md#105>).  
  
**Note:** If an instrument exists in the database with multiple identifiers - for example CUSIP and ISIN, and multiple rows for the same instrument are supplied in the file using the differing Identifiers, then validation message 267 will be raised.  
Primary Id Type | InstrumentIdentifierType | Both | Yes | Char (50) | ISIN | The Instrument ID Type which corresponds to the identifier used as the Primary Instrument ID. This could be " ISIN", " CUSIP", " SEDOL" "Internal", "Ticker".  
  
[Validation Message number 26](<validation_messages.md#26>).  
Type | InstrumentType | Both | Yes | Char (255) | US-GovBond | The Instrument Type. This needs to match an Instrument Type defined in the system.  
  
[Validation Message number 35](<validation_messages.md#35>).  
Instrument Underlying Sector | InstrumentUnderlyingSector | Both |  | Char (100) | Consumers | The instrument underlying sector. Usually used for asset and mortgage backed securities.  
  
[Validation Message number 40](<validation_messages.md#40>).  
Internal | InternalIdentifier | Both |  | Char (30) |  | An internal instrument identifier can be loaded if one exists. No validation is done on this ID.  
  
[Validation message number 105](<validation_messages.md#105>).  
Bullet | IsBullet | Debt |  | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether the debt instrument can be redeemed prior to maturity or not. Bullet bonds are "non callable", and are payable at maturity only.  
Callable Bond | IsCallableBond | Debt |  | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether the bond has a call (buy/back) provision or not.  
Convertible Bond | IsConvertibleBond | Debt |  | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether the bond is convertible or not.  
Covered Bond | IsCoveredBond | Debt |  | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether the bond is covered by pool of securities or not.  
Credit Linked Notes | IsCreditLinkedNotes | Debt |  | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether the debit instrument has an embedded credit default swap element or not.  
Guaranteed | IsGuaranteed | Debt |  | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether the debt instrument is Guaranteed (the Principal and/or InterestPayments are guaranteed by an entity other than the Issuer) or not.  
ISIN | ISIN | Both |  | Char (12) | US912795ZEOA | A unique identifier for securities.  
  
[Validation Message number 61](<validation_messages.md#61>).  
Private Placement | IsPrivatePlacement | Debt |  | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether the instrument was sold directing by then issuing company rather than through a public exchange.  
Is Optionable | IsOptionable | Equity |  | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether availability exists to buy/sell an option on instrument.  
Putable | IsPutable | Debt |  | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether the debt .instrument has an embedded put option or not.  
SEDOL | SEDOL | Debt |  | Char (7) | Bit | 912795Z  
Senior | IsSenior | Debt |  | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether the instrument is subordinated or not.  
  
If the Instrument is Senior it is not subordinated and ranks higher in the order of priority in the event of liquidation of the issuer.  
Sinkable Fund | IsSinkableFund | Debt |  | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether the bond is backed by a fund that sets aside money on a regular basis to ensure investors that P&I payments will be made.  
Issue Date | IssueDate | Both |  | Date | 28/Oct/2004 | The date the Instrument was issued.  
Issuer | Issuer | Both |  | Char (250) | US Government | The Issuer of the instrument. This needs to match an Issuer defined in the system.  
  
[Validation Message number 33](<validation_messages.md#33>).  
Issuer Domicile | IssuerDomicile | Both |  | Char (100) | Spain | The domicile of the Issuer. This needs to match a Country defined in the system.  
  
[Validation Message number 53](<validation_messages.md#53>).  
Issuer Industry Group | IssuerIndustryGroup | Debt |  | Char (100) | Savings Banks | The Industry Group to which the Instrument belongs.  
  
[Validation Message number 38](<validation_messages.md#38>).  
Issuer Industry Sector | IssuerIndustrySector | Both |  | Char (100) | Financial | The industry sector of the Issuer. This needs to match an Industry Sector defined in the system.  
  
[Validation Message number 51](<validation_messages.md#51>).  
Issuer Type | IssuerType | Both |  | Char (50) | Corp | The type of issuer. This needs to mach an Issuer Type in the system.  
  
[Validation Message number 52](<validation_messages.md#52>).  
Lot Increment | LotIncrement | Both |  | Decimal (14,2) | 1000 | The incremental quantity over that the Instrument can be transferred in.  
  
When defined, the value for this field must be <= MinimumLot, otherwise [validation message 279](<validation_messages.md#279>) will be raised and the record not loaded.  
Market Capitalization | MarketCapitalization | Equity |  | Decimal (16,2) |  | A measurement of the value of the ownership interest that shareholders hold in a business enterprise. It is equal to the share price times the number of shares outstanding (shares that have been authorized, issued, and purchased by investors) of a publicly traded company.  
Maturity Date | MaturityDate | Debt |  | Date | 28/Oct/2010 | The date the Instrument is due to mature.  
Minimum Lot | MinimumLot | Both | Yes - If LotIncrement defined | Decimal (14,2) | 100 | The minimum quantity of the instrument that can be transferred.  
  
This field is mandatory if Lot Increment is defined. If Lot Increment is defined, but this field is missing, then [validation message 9](<validation_messages.md#9>) is raised and the record not imported.  
  
Additionally, when defined the value must be divisible by the LotIncrement value, otherwise [validation message 280](<validation_messages.md#280>) is raised as an exception.  
Moodys Watch | MoodyWatch | Debt |  | Char (10) | Negative | Indicates whether an Instrument is on ratings watch with Moodys. The options are:  
  
Negative  
  
Positive  
  
Developing  
Mortgage Factor | MortgageFactor | Debt |  | Money | 0.8123 | A decimal value reflecting the proportion of the outstanding principal balance of a mortgage security, which changes over time, in relation to its original principal value.  
Municipal Region | MunicipalRegion | Debt |  | Char (100) | Northeast | The U.S region where the underlying pool of loans originates from.  
  
[Validation Message number 42](<validation_messages.md#42>).  
Municipal State | MunicipalState | Debt |  | Char (100) | NY | The U.S state where the underlying pool of loans originates from.  
  
[Validation Message number 41](<validation_messages.md#41>).  
Next Coupon Date | NextCouponDate | Debt | No | Date | 28/Oct/2010 | The date that the debt security will next pay a coupon to the bond holder.  
  
Although not compulsory, there are some validations surrounding this field:  
  
If the next coupon date supplied is after the Maturity Date,   
  
[Validation Message 231](<validation_messages.md#231>) will occur. However the next coupon date will be updated.  
  
If the next coupon date specified is before today's date (per the application server), [Validation Message 14](<validation_messages.md#14>) will occur. However the next coupon date will be updated.  
  
If the next coupon date is mapped in the mapping file, but the data file has a null value for this field, it is assumed that this is a valid scenario, and therefore the value in the database will be overridden, and No Warning will be given.  
Next Dividend Date | NextDividendDate | Equity |  | Date | 15/11/2011 | Next Dividend payment.  
Number Of Ratings | NumberOfRatings | Debt |  | Integer | 3 | Number of ratings received for the Instrument (that is, Issue Ratings).  
Pass Through | PassThrough | Debt |  | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether the instrument is "pass-through" or not.  
  
Proceeds from an underlying mortgage pool are passed on to investors.  
52 Week High | Past52WeekHigh | Equity |  | decimal(17, 8) | 125.75 | Highest price in the last 52 weeks.  
52 Week Low | Past52WeekLow | Equity |  | decimal(17, 8) | 5.25 | Lowest price in the last 52 weeks.  
P/E Ratio | PERatio | Equity |  | decimal(6, 2) | 1.25 | The P/E ratio (price-to-earnings ratio) of a stock (also called its "P/E", or simply "multiple") is a measure of the price paid for a share relative to the annual net income or profit earned by the firm per share.  
  
The P/E ratio can therefore alternatively be calculated by dividing the company's market capitalization by its total annual earnings.  
Percent Single Family | PercentSingleFamily | Debt |  | Money | 95% | The percentage of underlying mortgages in a pool which are owner occupied 1-4 family loans (that is, not multi-family).  
Price Terms | PriceTerms | Both |  | Char (100) | valid entries  
  
Actual  
  
Percentage | Determines how the Instrument Price should be applied.  
  
Must be a valid value, otherwise, validation message 285 is raised and the record is not imported.  
  
Actual - price will be applied as an actual price.(Quantity * price)  
  
Percentage - price will be applied as a percentage price. (Quantity * price) / 100  
Record Date | RecordDate | Both |  | Date | 15/11/2011 | Date on which the investor must officially own an instrument in order to be entitled to a coupon/dividend payment  
Seasoning | Seasoning | Debt |  | Char (100) | 30>60mths | When a pool of mortgages (or other cash flows for ABS) is securitized, some of the mortgages may have been in existence for a period of time. The seasoning indicates the average period of time the underlying obligations have been in existence.  
  
[Validation Message number 46](<validation_messages.md#46>).  
Second Lien Percent | SecondLienPercentage | Debt |  | Money | 60% | The percentage of the underlying mortgages on which there is a second lien (refinancing).  
Shares Issued | SharesIssued | Equity |  | BigInt | 10,000,000,000 | Total Number of shares of a company originally issued.  
Shares Outstanding | SharesOutstanding | Equity |  | BigInt | 1,000,000,000 | The total number of shares held by the public plus any restricted shares held by officers and insiders at a company.  
S&P Watch | SPWatch | Debt |  | Char (10) | Developing | Indicates whether an Instrument is on ratings watch with S&P. The options are:  
  
Negative  
  
Positive  
  
Developing  
Stock Index | StockIndex | Equity |  | Char (1500) | FTSE | The Index that the equity instrument is classified under.  
  
This must match an existing Stock Index reference data item otherwise [Validation Message 287](<validation_messages.md#287>)  
  
If importing more than one Stock Index on an Instrument, a sub delimiter will be needed in the mapping file.  
Ticker | Ticker | Equity |  | Char (30 | EquityCorp001 | A unique identifier used with Equities.  
Trading Volume | TradingVolume | Equity |  | BigInt | 455,000,000 | Average or daily trading volume.  
UCITS Compliant | UCITSCompliant | Equity |  | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | UCITS stands for Undertakings for Collective Investments in Transferable Securities and is a regulator within European Union. To be compliant, fund has to adhere to the directives which are: fund is open-ended (fund that continually creates new shares on demand and shares can be redeemed at any time), must be liquid enough to support redemptions in the fund, and the assets are entrusted to an independent custodian or depositary for safekeeping and segregated.  
Weighted Average Coupon | WeightedAverageCoupon | Debt |  | Money | 6% | The weighted-average of the current interest of the mortgages in a pool.  
Weighted Average FICO | WeightedAverageFICO | Debt |  | Money | 600 | The FICO score is a credit score used by lenders as a component in how they set the interest rate they will charge for a loan.  
Weighed Average Life | WeightedAverageLife | Debt |  | Money | 5 | The average amount of time that will elapse from the date of a security's issuance until each dollar of principal is repaid to the investor. Quoted in years.  
Weighted Average Loan Size | WeightedAverageLoanSize | Debt |  | Money | 300 | Weighted average size of the underlying loan. Quoted in thousands.  
Weighted Average LTV | WeightedAverageLTV | Debt |  | Money | 80% | This is the weighted-average of the ratios between each mortgage's Unpaid Principal Balance ( UPB) as of the note date and either:  
  
in the case of a purchase, the lesser of the appraised value of the mortgaged premises on the note date or the purchase price of the mortgaged premises or   
  
in the case of a refinancing, the appraised value of the mortgage premises on the note date.  
Weighted Average Maturity | WeightedAverageMaturity | Debt |  | Integer | 200 | The current weighted-average remaining time to maturity of the loans/pools backing mortgage backed securities. Quoted in months.
