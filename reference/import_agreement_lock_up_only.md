# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/import_agreement_lock_up_only.html

# File Format for OTC Lock Up Only Agreements

When importing Agreements all previous records are not deleted when a new import is run. The import is done on an insert and update basis.

When the import is run, the system checks to see whether the agreement already exists. This check is done using the [Source Reference](<#sourceref>) and the Agreement Name as follows:

  1. If a Source Reference is supplied and matches an existing source reference in TLM® Collateral Management, then the import updates the agreement (subject to other validation criteria). If the Agreement Name supplied for the source reference is different to the name stored in TLM Collateral Management, the name in will be updated, as long as there is not already an agreement existing with that name. If there is an existing agreement with the same name the record will not be updated and an exception will be generated. [Validation message number 119](<validation_messages.md#119>).
  2. If the Source Reference supplied does not match an existing source reference in TLM Collateral Management then the import will add a new agreement, as long as the agreement name does not already exist. If there is an existing agreement with the same name the record will not be updated and an exception will be generated. [Validation message number 121](<validation_messages.md#121>).
  3. If the Source Reference is not supplied or this column has not been mapped, then the update or insert will be done simply based on the Agreement Name. If the name already exists TLM Collateral Management, the agreement will be updated with the record on the file. If the name does not exist then the agreement will be inserted.



While the import of Agreements in done on an insert and update basis, the import of certain fields within the Agreement data object is done on a replacement basis. Those fields are:

Holiday Calendars - this is detailed in the description columns for those fields in the below table. Exact Dates for Interest Period End.

**Note:**

  1. The Fields on the import are described below. As there are numerous permutations as to how Interest Period End Dates and Frequencies can be defined, some examples of the mapping files and import data are shown in [Example Import of Agreement Interest Payment Terms](<example_agmt_int_payment_terms.md>) an an aid.
  2. It is only possible to import Lock Up Only agreements that are for the OTC Business Line.
  3. It is not possible to assign trades to a Lock Up Only agreement. See [Trade Assignment Task](<task_status.md#trade-assignments>) for more details.

Agreements Display Name | Mapping File Column Name | Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---|---  
Agreement Ccy | AgreementCurrency | Yes | Char (3) | USD | The agreement currency which must correspond to a currency in the database.  
  
[Validation message number 18](<validation_messages.md#18>)  
Agreement Name | AgreementName | Yes | Char (255) | ABC Bank Csa | The name of the collateral agreement.  
  
Agreement must be for OTC Business Line only.  
  
[Validation message number 349](<validation_messages.md#349>)  
  
Agreement names must be unique.  
  
[Validation message number 84](<validation_messages.md#84>)  
  
Agreement names cannot be the same as an existing agreement alias.  
  
[Validation message number 141](<validation_messages.md#141>)  
  
**Note:** If the Agreement is [Locked for Approval](<agreements_approvals.md>), [validation message 263](<validation_messages.md#263>) will be raised, and the record for the corresponding agreement will not be imported.]  
Status | AgreementStatus | Yes | Char(100) | Active  
  
Inactive  
  
Monitor | Determines whether the Agreement will be subject to the Margin Calculation Task, and whether the margin calculation will be fully applied.  
  
**Active** \- All Margin Calls will be generated.  
  
**Inactive** \- Agreement will not be included in Margin calculation tasks.  
  
**Monitor** \- Agreement will be included in Margin Calculation task but only No Action Margin Calls will be generated irrespective of margin parameters.  
  
The value on the data file must match a value defined in the database, otherwise validation message 237 is raised and the record is not imported.  
Status Detail | AgreementStatusDetail | No | Char(100) | Not signed | Supplementary information regarding the status of the Agreement.  
  
The field is not mandatory but if mapped the value supplied must match a record in [Agreement Status Detail reference data](<reference.md#overview>) otherwise [Validation Message 235](<validation_messages.md#235>) will be raised, and a Null Value used.  
Type | AgreementType | Yes | Char (100) | ISDA | This is the collateral agreement type and must exist in the database.  
  
[Validation message number 64](<validation_messages.md#64>)  
  
When the record is an update the  
  
Agreement Type cannot currently be changed as this has significant impacts on other data used in the agreement.  
  
[Validation Message 104](<validation_messages.md#104>).  
  
For an insert, any trade types associated with the Agreement Type are automatically set to be on the "Included" side of the Trade Types select dialog for the relevant agreement.  
  
Additionally, if the [Agreement type](<reference_related_data.md#agreement-types>) defined is for a Business Line of Central Clearing or Client Clearing, [validation message 302](<validation_messages.md#302>) is raised, and the record is not loaded.  
Intraday Calcs | AllowIntradayCalculation | No | Bit | Acceptable values:  
  
Y, N, Yes, No | Defines whether an agreement will generate intraday margin calls when subsequent margin calculations are run during the course of a business day.  
  
See [Intraday Margin Calculations](<intraday_mc.md>).  
  
**Note:**  
  
1\. The field can only be set for OTC Agreements, otherwise [validation message 333](<validation_messages.md#333>) raised.  
  
2\. Once this field is set as True either via the GUI or by an import, it cannot be subsequently changed back to False by an import. This can only be achieved via the application's GUI. If the existing value is changed to false via the import, [valuation message 334](<validation_messages.md#334>) is raised.  
Amendment Date | AmendmentDate | No | Date | 13-Sep-2009 | The date an amendment was made to the collateral agreement.  
  
Value if mapped must be in a recognizable date format otherwise [validation message 10](<validation_messages.md#10>) will be raises and a Null value will be used.  
Available for Rehypothecation | AvailableForRehypothecation | Yes | Char (50) | Must be defined as one of the following:  
  
None  
  
Lock Up Only (see notes) | This value indicates whether the collateral that **is received from** the Counterparty on the Agreement can be rehypothecated.  
  
Additionally if defined as anything other than "None", the value denotes the **margin type** of collateral that can be rehypothecated.  
  
If the value is **missing** , then [validation message 9](<validation_messages.md#9>) will be raised, **and the whole record will not be loaded**.  
  
If the value is invalid because it does not match any defined value, then [validation message 242](<validation_messages.md#242>) will be raised **and the whole record will not be loaded**.  
  
If the value is note one of acceptable values, then [validation message 345](<validation_messages.md#345>) will be raised **and the whole record will not be loaded**.  
Calculation Type | CalculationType | No | Char (25) | Isda Unsecured | The Calculation Type will determine the type of margin calculation which will be run for the agreement. The type must correspond to one available for the relevant Business Line as follows:  
  
**OTC**  
  
ISDA Unsecured  
  
ISDA Security  
  
**Repo/Securities Lending**  
  
Repo Net  
  
Repo Standard  
  
[Validation message number 138](<validation_messages.md#138>).  
Default Settlement Offset: Cash | CashSettlementOffset | No | Char(255) | T  
  
T+1  
  
T+2  
  
T+3 | Number of business days offset that will be used to calculate settlement date for collateral movements for Debt Instruments for this Agreement.  
  
Permissible values are T, T+1, T+2, T+3.  
  
Although not compulsory, if not included in the file, or the value is invalid, [validation message 251](<validation_messages.md#251>) will be raised, and the system default value will be applied (value per the web.config file) If no system default is defined, the value will be defaulted to T.  
Collat Allocation | CollateralAllocationType | Yes | Char (50) | Lock Up Only | This field is mandatory and denotes how collateral is to be allocated.  
  
It must be defined as Lock Up Only.  
  
If the field is missing, [Validation Message 9](<validation_messages.md#9>) is raised **and the record is not imported**.  
  
If Collateral Allocation and Lock Up Calculation Type combination is not valid for a new Lock Up Only Agreement, [validation message 344](<validation_messages.md#344>) is raised and **the entire record is not imported**. The correct combination is: Lock Up Only and Lock Up Only Calculation.  
  
If the Collateral Allocation Type and Lock Up Calculation Type is attempted to be changed to create a regular OTC Agreement or vice versa, a  
  
[validation message 350](<validation_messages.md#350>) is raised and **the entire record is not imported**.  
Price Quote | CollateralValuationQuote | Yes | Char (50) | Bid | The Price Quote Type that the agreement will use.  
  
Price Quote Type must be on the **mapping file** , otherwise the agreement file load will fail with:  
  
[Validation Message 36](<validation_messages.md#36>)  
  
The value must correspond to one of the values in the system:  
  
Bid  
  
Mid  
  
Ask  
  
If the quote type on the file doesn't match any of the above three values, the user will see  
  
[Validation Message 9](<validation_messages.md#9>)  
  
and  
  
[Validation Message 191](<validation_messages.md#191>)  
  
and the existing quote type for the agreement will remain in the system.  
  
If the value is not supplied on the file, then the user will see:  
  
[Validation Message 9](<validation_messages.md#9>)  
  
and the existing quote type for the agreement will remain in the system.  
  
**Note:** This value cannot be amended to Auto Allocate for existing agreements that exist with value of Segregated Lock Up and Variation. If this is attempted, [validation message 249](<validation_messages.md#249>) will be raised, and the whole import record for this agreement will be ignored.  
Price Source | CollateralPriceSource | No | Char (100) | Bloomberg | This is the price source for collateral positions on the agreement.  
  
**Note:** If a value is not supplied, then the agreement will be set to use the system default value even if a specific value existed for the agreement before the import.  
  
Similarly, if a value is supplied on the file for price source that doesn't exist in the system, [Validation Message 196](<validation_messages.md#196>) will be seen and the price source for the agreement will be set to use system default, even if it was previously set to a defined price source.  
Counterparty | Counterparty | Yes | Char (250) | ABC Bank Ltd | This is the counterparty with which the collateral agreement has been signed and must exist in the database.  
  
[Validation message number 21](<validation_messages.md#21>).  
  
The Counterparty and Principal provided for an Agreement cannot be the same entity.  
  
[Validation message number 136](<validation_messages.md#136>).  
  
The Counterparty name cannot be changed if the agreement already has branches or contacts associated to it.  
  
Validation message numbers [182](<validation_messages.md#182>), [183](<validation_messages.md#183>), [184](<validation_messages.md#184>)  
Credit Support Provider | CounterpartyCreditProvider | No | Char (255) | ABC Parent Bank | This is the Credit Support Provider to be used when determining any ratings based information for the Counterparty and must exist in the database.  
  
[Validation message number 137](<validation_messages.md#137>).  
Default Settlement Offset: Debt | DebtSettlementOffset | No | Char(255) | T  
  
T+1  
  
T+2  
  
T+3 | Number of business days offset that will be used to calculate settlement date for collateral movements for Debt Instruments for this Agreement.  
  
Permissible values are T, T+1, T+2, T+3.  
  
Although not compulsory, if not included in the file, or the value is invalid, validation message 251 will be raised, and the system default value will be applied (value per the web.config file) If no system default is defined, the value will be defaulted to T+1.  
Exclude trades ending on or before | ExcludesTradeDays | No | Char (255) | T+2 | The [Trades Filter](<agreements_define.md#tradesfilters>) option for Repo agreements to determine the basis on which trades should be excluded from the Exposure Calculation based on their end date. The allowed choices are:  
  
T  
  
T+1  
  
T+2  
  
T+3  
  
[Validation message number 124](<validation_messages.md#124>).  
  
For agreements which do not use this functionality the field should be left blank.  
Extension Label Name | < ExtensionName >  
  
**Note:** If values are to be loaded into extensions, then the mapping file must include the ExtensionName exactly as it has been defined in the Agreement Extension Reference Data Object.  
  
Additionally, the mapping file must explicitly define that the field is an extension.  
  
See [Example of Agreement Mapping File with Extensions](<import_example_agmt_mapping_file.md>) for example of this. | No | Extension Values can only be one of the following 4 data types.  
  
**AlphaNumeric**  
  
**Numeric**  
  
**Date**  
  
**Boolean**  
  
Y, Yes, 1, True, T  
  
F, No, 0, False, F |  | Extension Values can be loaded on the Agreement Import file.  
  
Although extensions are not mandatory, there are some specific rules:  
  
1\. The **ExtensionName** specified in the Import File must be identical to the Extension Name on the Agreement Extension Reference Data object.  
  
Additionally, the mapping file must state that the field is an Extension.  
  
(See [Example of Agreement Mapping File with Extensions](<import_example_agmt_mapping_file.md>) for examples)  
  
If not, then the [validation message 8](<validation_messages.md#8>) will be raised, and the file will not load.  
  
2\. If the Extension is defined as a **Numeric Data Type** , any values on the import file for this extension must also be numeric, otherwise [validation message 11](<validation_messages.md#11>) will be raised, and the value will be set to NULL.  
  
3\. If the Extension is defined as an **AlphaNumeric Data Type** and the length of the value on the Import file does not fall within the lower and upper limits, then [validation message 232](<validation_messages.md#232>) will be raised, and the value will be not be loaded.  
  
4\. If the Extension is defined as **Numeric** , the values on the import file must be within the minimum and maximum numbers as defined on the reference data object. If not, then [validation message 233](<validation_messages.md#233>) will be raised and the value will not be loaded.  
  
5\. If the Extension field is defined as a **Boolean** , the values on the import file must be one of the following (**Yes,Y, 1, True, T, No, N, 0, False, F**) otherwise [validation message 19](<validation_messages.md#19>) will be raised, and the value will not be loaded.  
  
6\. If the extension field is defined as a **Date** , then the values on the import file must be in a recognized date format, otherwise [validation message 10](<validation_messages.md#10>) is raised, and the value ignored.  
  
**Note:** When importing extension values, **all** existing extension values stored for the agreement are deleted, and then replaced with those (successfully validated) values specified on the import file. Care should therefore be undertaken to ensure that the import file contains values for all extensions.  
Governing Law | Governing Law | No | Char (100) | FRANCE | The Governing Law of the Agreement. If mapped, the value on the data file must match an existing country value in the database, otherwise [Validation Message 236](<validation_messages.md#236>) is raised and a Null value is applied.  
Calendars | HolidayCalendar | No | Char (1200) | UK Holidays | This is the name of the Holiday Calendar reference data item that will be associated with the agreement.  
  
If the name of the Holiday Calendar contained in the import file is not found in the system [Validation Message 205](<validation_messages.md#205>) is raised.  
  
If more than one Holiday Calendar is being imported on an agreement, then a [sub delimiter in the mapping file](<import_using_sub_delimiter.md>) will be needed.  
  
**Note:** If numerous Holiday Calendar entries are being imported for an agreement using a sub-delimiter, and one or more of the entries on the file does not exist as reference data item within the system, [Validation Message 205](<validation_messages.md#205>) will be seen and none of the Holiday Calendar entries for that agreement will be imported.  
  
If the HolidayCalendar is included in the mapping file, then any Holiday Calendar entries that exist on an agreement will be replaced in entirety by the entries contained on the Agreements Import File.  
  
If there are no entries on the import file, or there are numerous entries sub-delimited on the import file; one or more of which doesn't exist in the database; then the existing Holiday calendar entries for the agreement in the system will be erased.  
Apply Decimals and Rounding To | InterestApplyPrecisionTo | Yes | Char (255) | Acceptable Values  
  
Daily Accruals  
  
Final Payment Only | This value must be defined as one of the acceptable values. If not, then [validation message 9](<validation_messages.md#9>) and [validation message 268](<validation_messages.md#268>) will be raised.  
  
If not, the record will not be loaded.  
Include Lock Up Accrual in Margin Calc | IncludeLockUpAccrual | Yes | Bit | Acceptable values:  
  
Y, N, Yes, No | Denotes whether interest accruals on cash positions for margin type lock up should be included in margin calculations.  
  
The field is mandatory - if blank on the data file it will be interpreted as Null and therefore will set the field to No.  
  
If the value on the import file is not one of the acceptable values, [valuation message 19](<validation_messages.md#19>) will be raised, and the value will be interpreted as Null and therefore will set the field to No.  
Include Variation Accrual in Margin Calc | IncludeVariationAccrual | Yes | Bit | Acceptable values:  
  
Y, N, Yes, No | Denotes whether interest accruals on cash positions for margin type variation should be included in margin calculations.  
  
The field is mandatory - if blank on the data file it will be interpreted as Null and therefore set the field to No.  
  
If the value on the import file is not one of the acceptable values, [valuation message 19](<validation_messages.md#19>) will be raised, and the value will be interpreted as Null and therefore set the field to No.  
Distribution Preference | InterestPaymentPreference | Yes | Char (25) | Distribute  
  
Roll In | If a value other than Distribute or Roll In is supplied, the system will raise [validation message 219](<validation_messages.md#219>), and will default the value to Distribute - **even if a value already exists for the field**.  
Payment Period Holiday Calendar | InterestPaymentCalendar | No | Char (100) | UK Holiday | If the value supplied on the file does not match a Holiday Calendar defined in the system, [validation message 205](<validation_messages.md#205>) will be raised and the field will be blanked, irrespective of whether any values existed.  
Payment Period Ending Frequency | InterestPaymentFrequency | No - but see notes | Char (25) | Acceptable Values  
  
\- Exact  
  
\- Weekly  
  
\- Monthly  
  
Considerations for this field:  
  
\- If value = Exact, InterestPeriodExactDates needs to be populated.  
  
\- If Value = Weekly, InterestPaymentDayOfWeek  
  
needs to be populated.  
  
\- If Value = Monthly  
  
\- InterestPaymentCalendarType  
  
and  
  
\- InterestPaymentMonths  
  
need to be populated.  
  
Additionally, depending on InterestPaymentCalendarType  
  
definition, either  
  
InterestPaymentDayOfMonth  
  
or  
  
InterestPaymentWeekOfMonth  
  
need to be populated. | If this field is not supplied, the system will do the following:  
  
\- If an entry for this already exists for the agreement, the system will disregard the value on the file.  
  
\- If the import is inserting a new agreement - the system will set the value for the agreement to be Monthly, with last calendar day of month as payment end date.  
  
In either case, the value of any of  
\- InterestPaymentExactDates  
\- InterestPaymentDayOfWeek  
\- InterestPaymentDayOfMonth  
\- InterestPaymentCalendarType  
\- InterestPaymentMonths  
\- InterestPaymentWeekOfMonth  
  
on the file will be ignored.  
  
If the value supplied is invalid, and the import is inserting a new agreement, the agreement will be created with default payment timing and no message will be raised.  
  
If the value supplied is invalid, and the import is updating an existing agreement, [validation message 221](<validation_messages.md#221>) will be raised, and the values on the import will be ignored.  
  
It is therefore recommended that the field be populated.  
Payment Period Ending Frequency - exact dates - selected dates | InterestPaymentExactDates | No - but see notes | Char (1000) | 27/10/2008 | When InterestPeriodFrequency is defined as Exact, record in this field the exact dates for the payments, using the date format specified in the agreement config.  
  
Numerous dates can be specified using a sub-delimeter.  
  
**Note:** If an invalid date has been specified, the system will raise [validation message 223](<validation_messages.md#223>), and the system will default interest Payment period to be Monthly, last calendar day of the month, unless exact dates already exist in the database.  
  
If duplicate dates are supplied for this field for the same agreement, [validation message 224](<validation_messages.md#224>) is raised, and one of the duplicates is loaded.  
  
**Note:** If values are supplied in this field, then any existing exact dates in the system will be replaced with those specified in the import file.  
Payment Period Ending Frequency - weekly selection | InterestPaymentDayOfWeek | No - but see notes | Char (25) | Monday  
  
Tuesday  
  
Wednesday  
  
Thursday  
  
Friday  
  
Saturday  
  
Sunday | Although not mandatory, this field needs to be populated when InterestPeriodFrequency  
  
is defined as Weekly  
  
or Monthly **and** InterestPaymentCalendarType = Relative Day.  
  
If this value is not supplied then the system will raise  
  
[validation message 222](<validation_messages.md#222>).  
  
**(NB - this warning is currently not working on weekly timings)**  
  
If the import is creating an agreement (insert) then if missing the system will default the interest Payment frequency to be last calendar day of month.  
  
If the import is amending an existing agreement (update), and this field is blank, then the existing day of week in database will be unchanged.  
  
If an invalid day of week is included in the import file, [validation message 220](<validation_messages.md#220>) is raised. If an existing day of the week exists for the agreement in the system this will be untouched.  
  
However if the import is inserting a new agreement, an incorrect day of week being specified will result in Interest Payment Frequency of last calendar day of month being inserted.  
  
**Note:** Although importable values are [Monday --> Sunday], only values of Monday --> Friday are selectable via the GUI for Monthly Relative Day frequencies.  
Payment Period Ending Frequency - monthly selection | InterestPaymentDayOfMonth | No - but see notes | Char (25) | 1st, 2nd, 3rd.....Last  
  
If InterestPaymentCalendarType  
  
= Calendar Day values can be  
  
1st, 2nd.....31st or Last  
  
InterestPaymentCalendarType  
  
= Business Day values can be  
  
1st, 2nd.....23rd or Last | When Interest Period Frequency is defined as Monthly, and InterestPaymentCalendarType is defined as either CalendarDay or BusinessDay, this field needs to be populated.  
  
If an incorrect value is specified - e.g. 12st or no value is included , then [validation message 227](<validation_messages.md#227>) is raised and newly inserted agreements will be created with last calendar day of every month as default Interest Payment Frequency.  
  
If the import is amending a record, and the value is incorrect then the existing record will be untouched, but the same validation message will be raised.  
Payment Period Ending Frequency - monthly selection | InterestPaymentCalendarType | No - but see notes | Char (25) | Calendar Day  
  
Business Day  
  
Relative Day | When Interest Period Frequency is defined as Monthly this field needs to be populated.  
  
If it is incorrectly populated newly inserted agreements will be created with last calendar day of every month as default Interest Payment Frequency, and no validation message will be raised.  
  
If an agreement exists with this value already populated, incorrect values will raise [validation message 227](<validation_messages.md#227>) but the existing values will be unchanged.  
Payment Period Ending Frequency - monthly selection | InterestPaymentMonths | No - but see notes | Char (500) | January  
  
February...December  
  
Alternatively - ALL will populate all months. | When Interest Period Frequency is defined as Monthly this field needs to be populated.  
  
Specific Months can be defined by specifying a sub delimiter in the config file  
  
Alternatively, including ALL as the value for this will populate all months.  
  
If no month is specified, or an invalid month is specified, [validation message 227](<validation_messages.md#227>) will be raised, and newly inserted agreements will be defaulted to be Interest Payment frequency of Monthly last calendar day.  
  
If an agreement exists, and the value is either missing or invalid - [validation message 227](<validation_messages.md#227>) is raised, but existing payment frequencies are not touched.  
Payment Period Ending Frequency - monthly selection | InterestPaymentWeekOfMonth | No - but see notes | Char (25) | First  
  
Second  
  
Third  
  
Fourth  
  
Last | When InterestPeriodFrequency is defined as Monthly and InterestPaymentCalendarType is defined as Relative Day this field needs to be populated to define which week within the month that the Interest Payment will be made.  
  
If the value is omitted or an incorrect value is supplied  
  
[validation message 227](<validation_messages.md#227>) will be raised, and newly inserted agreements will be defaulted to be Interest Payment frequency of Monthly last calendar day.  
  
If an agreement exists, and the value is either missing or invalid - [validation message 227](<validation_messages.md#227>) is raised, but existing payment frequencies are not touched.  
Rounding Method | InterestRoundingMethod | Yes | Char (255) | Acceptable Values  
  
Up  
  
Down  
  
Closer | This value must be defined as one of the acceptable values. If not, then [validation message 9](<validation_messages.md#9>) and [validation message 144](<validation_messages.md#144>) will be raised.  
  
If not, the record will not be loaded.  
Include trades starting on or before | IncludesTradeDays | No | Char (255) | T+1 | The Trades Filter option for Repo agreements to determine the basis on which trades should be included from the Exposure Calculation based on their start date. The allowed choices are:  
  
T  
  
T+1  
  
T+2  
  
T+3  
  
[Validation message number 124](<validation_messages.md#124>).  
  
For agreements which do not use this functionality the field should be left blank.  
Intraday Tolerance Amount | IntradayTolerance | No | BigInt | 1000000 | The tolerance amount that is applied to Intraday Margin Calculations.  
  
Conceptually, this amount functions similar to a MTA, with the exception that it is used only for Intraday calculations.  
  
**Note:** This can only be defined when AllowIntradayCalculation is set as True, otherwise [validation message 335](<validation_messages.md#335>) will be raised.  
Lock Up Calculation Type | LockUpCalculationType | Yes | Char (50) | Lock Up Only Calculation | This only allowable value is:  
  
Lock Up Only Calculation  
  
If the value is missing, or contains an invalid valid then [validation message 9](<validation_messages.md#9>) will be raised, **and the whole record will not be loaded**.  
  
If Collateral Allocation and Lock Up Calculation Type combination is not valid for a new Lock Up Only Agreement, [validation message 344](<validation_messages.md#344>) is raised **and the entire record is not imported**. The correct combination is: Lock Up Only and Lock Up Only Calculation.  
  
If the Collateral Allocation Type and Lock Up Calculation Type is attempted to be changed to create a regular OTC Agreement or vice versa, a  
  
[validation message 350](<validation_messages.md#350>) is raised and **the entire record is not imported**.  
Net Held and Posted Interest Payments (on Eligibility / Interest tab) | NetInterestPayments | Yes | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether interest payments generated for the agreements should be gross (i.e separate per held and posted balances for each currency for the period) or netted (i.e a single payment per currency for the period)  
  
If the field is not defined in the mapping file, [Validation message 36](<validation_messages.md#36>) will be raised, and the whole import will be rejected.  
  
If the field is mapped, but an invalid value is included, then [validation message 19](<validation_messages.md#19>) and [validation message 9](<validation_messages.md#9>) will be raised, **_and the record will not be imported_**.  
  
If the field is mapped, but a value is not present on the file, then the [validation message 9](<validation_messages.md#9>) will be raised, **_and the record will not be imported_**.  
Date (in Master Agreement Section) | MasterAgreementDate | No | Date | 13-Sep-2009 | The date the Master Agreement was signed.  
  
Value if mapped must be in a recognizable date format otherwise [validation message 10](<validation_messages.md#10>) will be raises and a Null value will be used.  
Posting Party | PostingParty | Yes | Char(50) | Value must be one of the following:  
  
Principal  
  
Counterparty  
  
Both | On an Insert, if the Posting Party value is absent, or not one of the 3 permissible values, [validation message 9](<validation_messages.md#9>) will be raised and the record will not be imported.  
  
On an update, if the Posting party is absent, or an invalid value, the system will raise [Validation message 238](<validation_messages.md#238>), and the existing value will not be updated.  
Price Adjustment (only seen on Repo and Securities Lending Agreements) | PriceAdjustment | Yes  
  
(for Repo and Securities Lending Agreements) | Char (50) | Permissible values:  
  
T  
  
T+1  
  
T+2  
  
T+3 | Price Date Adjustment is used for valuing collateral positions and movements for the Agreement.  
  
In order for a instrument price to be used by an agreement, the following criteria must match:  
  
Price Adjustment  
  
Price Source  
  
Price Quote  
  
If price adjustment is not supplied for a Repo / Securities Lending Agreement, then [validation message 271](<validation_messages.md#271>) is raised and the agreement is not imported.  
  
If the value supplied is not a permissible value, [validation message 272](<validation_messages.md#272>) is raised, and the agreement is not imported.  
Principal | Principal | Yes | Char (250) | Prin Bank Ltd | This is the principal with which the collateral agreement has been signed and must exist in the database.  
  
[Validation message number 20](<validation_messages.md#20>)  
  
The Counterparty and Principal provided for an Agreement cannot be the same entity.  
  
[Validation message number 136](<validation_messages.md#136>).  
Credit Support Provider | PrincipalCreditProvider | No | Char (255) | Prin Parent Bank | This is the Credit Support Provider to be used when determining any ratings based information for the principal and must exist in the database.  
  
[Validation message number 137](<validation_messages.md#137>).  
Managing Location | PrincipalManagingLocation | Yes | Char (100) | London | This is the managing location for the Principal Entity to which this agreement belongs, and must be a valid city defined as a managing Location in the database.  
  
[Validation message number 23](<validation_messages.md#23>)  
Signature Date | SignatureDate | No | Date |  | The date the Collateral Agreement was signed.  
  
Value if mapped must be in a recognizable date format otherwise [validation message 10](<validation_messages.md#10>) will be raises and a Null value will be used.  
Split Amount | SplitToleranceAmount | No - but see notes | Decimal (21,6) | 1000 | The Split the Difference Tolerance Amount  
  
Should the difference between the Principal Call Amount and the Counterparty Call Amount fall within the Split the Difference Tolerance Amount, then the system will incorporate half of the difference when calculating the Agreed amount in the Margin Call Workflows.  
  
The numeric value defined here is interpreted in conjunction with Split Tolerance Method value.  
  
When SplitToleranceMethod is defined as Flat, then amount should be defined and must be a positive numeric value. If not, a [validation message 360](<validation_messages.md#360>), [363](<validation_messages.md#363>) or [11](<validation_messages.md#11>) will be raised.  
  
When SplitToleranceMethod defined as Percent of Call Amount,then amount should be defined and must be a positive numeric value within a valid percentage range of 1 - 100. If not, a [validation message 360](<validation_messages.md#360>), [361](<validation_messages.md#361>), [362](<validation_messages.md#362>) or [11](<validation_messages.md#11>) will be raised. Six Decimal places of precision are supported.  
Split Currency | SplitToleranceCurrency | No - but see notes | Char (3) | USD | The Currency associated to SplitToleranceMethod  
  
When Split Method is defined as Flat, then a currency should be specified for the tolerance amount and must be a define currency in the system. If not, [validation message 363](<validation_messages.md#363>) or [357](<validation_messages.md#357>) will be raised.  
Split Method | SplitToleranceMethod | No - but see notes | Char (50) | Permissible values:  
  
Flat  
  
Percent of Call Amount  
  
Pct. of Call Amount | The Method associated with the SplitToleranceMethod  
  
When either the Amount or Currency is defined on the import, the Method also has to be specified. If not, the [validation message 359](<validation_messages.md#359>) will be raised.  
  
If Method is defined as Flat, then the system will compare the numeric difference between the Principal Call Amount and the Counterparty Call Amount to SplitToleranceMethod and evaluate whether to incorporate splitting in the calculation of Agreed amounts.  
  
When Method is defined as Flat but either Currency or Amount is missing, [validation message 363](<validation_messages.md#363>) will be raised.  
  
If Method is defined as Percent of Call Amount , then the system will compare the _percentage_ difference between the Principal Call Amount and the Counterparty Call Amount to SplitToleranceMethod and evaluate whether to incorporate splitting in the calculation of Agreed amounts  
  
When Method is defined as Percentage but the Amount is missing, [validation message 362](<validation_messages.md#362>) will be raised.  
Source Reference (only displayed on read-only form) | SourceReference | No | Char (255) | 856365 | The Source Reference is the unique identifier for the collateral agreement in the system from which the agreements data will be received. If multiple agreements are supplied on the file with the same source reference none of them will be imported.  
  
[Validation message number 119](<validation_messages.md#119>).  
Tri-Party Custodian Lock Up Collateral (advanced tab) | TriPartyLock UpCustodian | No | var (255) | Clearstream | The Tri-Party Custodian that the Agreement's **lock up** margin movements settle through.  
  
The value supplied must match a custodian entry in the system, otherwise [validation message 247](<validation_messages.md#247>) will be raised and a blank entry will be inserted.  
  
Additionally, the CollateralAllocationType should be Segregate Lock Up and Variation Collateral.  
  
If that field is defined as Auto Allocate **and** this field is populated, [validation message 266](<validation_messages.md#266>) will be raised and a blank entry will be inserted.  
Tri-Party Custodian Variation Collateral   
  
(advanced tab) | TriPartyVariationCustodian | No | var (255) | Clearstream | The Tri-Party Custodian that the agreement's **variation** margin movements settle through.  
  
The value supplied must match a custodian entry in the system, otherwise [validation message 247](<validation_messages.md#247>) will be raised and a blank entry will be inserted.  
Apply Lock Up to MTA  
  
(Margin Terms tab) | UseMTAOnLockUpMarginTerms | Yes | Bit | One of the following two values can be loaded: (case insensitive)  
  
Y  
  
Yes  
  
True  
  
T  
  
1 | This field is mandatory, and if missing or has an invalid value, [validation message 9](<validation_messages.md#9>) will be raised **and the whole record will not be loaded**.  
  
It is only permissible to set as **True** for Lock Up Only agreement.  
  
Suggestion is to set the value in the mapping file as default. Refer to this document to see how it can be done.  
  
If an attempt to set the value as False, new [validation message 346](<validation_messages.md#346>) is raised and the value will be forced to **True**.  
Apply Lock Up to Rounding  
  
(MarginTerms Tab) | UseRoundingOnLockUpMarginTerms | Yes | Bit | One of the following two values can be loaded: (case insensitive)  
  
Y  
  
Yes  
  
True  
  
T  
  
1 | This field is mandatory, and if missing or has an invalid value, [validation message 9](<validation_messages.md#9>) will be raised **and the whole record will not be loaded**.  
  
It is only permissible to set as **True** for Lock Up Only agreement.  
  
Suggestion is to set the value in the mapping file as default. Refer to this [document](<import_using_default_value_rules.md>) to see how it can be done.  
  
If an attempt to set the value as False, new [validation message 347](<validation_messages.md#347>) is raised and the value will be forced to **True**.  
Version Year | VersionYear | No | Int | 1992 | The version year for the agreement documentation.  
  
The value supplied must be numeric otherwise [validation message 236](<validation_messages.md#236>) Validation Messages will be raised and a Null value used.  
Valuation Agent | ValuationAgent | Yes | Char (50) | Both | The Valuation Agent for the agreement. This must correspond to one of the following three choices:  
  
Both  
  
Counterparty  
  
Principal  
  
[Validation message number 103](<validation_messages.md#103>)  
  
**Note:** As not all of the agreement data can be inserted using an import it may be necessary to review new agreements in order that any remaining data can be completed manually. Newly created agreements can be found by using the "Created Since" filtering option on the agreement screen. 
