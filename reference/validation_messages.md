# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/validation_messages.html

# Validation Messages

Sys. Error Reference | Validation Message | Relate to | Severity | Description and possible resolution | Resolution from Task Status screen  
---|---|---|---|---|---  
1 | File Not Found. | All Import Configurations | Exception | This is an [Import Configuration](<task_imports.md>) level message that appears when the corresponding file could not be found. No records will be imported.  
  
**Possible Resolution** : This could either be due an incorrectly specified path or file name. |   
2 | No permission to open file. | All Import Configurations | Exception | This is an Import Configuration level message that appears when the corresponding file cannot be opened due to the server not having the correct permission to access it. No records will be imported.  
  
**Possible Resolution** : Ensure the file being pointed to has the correct read access permissions for the server running the imports. |   
3 | The file is locked and cannot be opened. | All Import Configurations | Exception | This is an Import Configuration level message that appears when the corresponding file is already open or locked by another process. No records will be imported.  
  
**Possible Resolution** : Ensure the file being pointed to is currently closed and not being used by another process. |   
4 | The file has not changed since the last successful import process was run. | All Import Configurations | Warning | This is an Import Configuration level message that appears when the corresponding file has not changed since the last successful import was performed. This is identified by the file size and timestamp being the same.  
  
**Possible Resolution** : Verify whether the file is indeed meant to be the same. If not then find the correct file and re run the import on this file. |   
5 | The file is older than the previously successful imported file. | All Import Configurations | Warning | This is an Import Configuration level message that appears when the file being imported is dated earlier than the previously successful imported file. Records will still be imported.  
  
**Possible Resolution** : Check that the file being imported is indeed the correct file. |   
6 | The file size is zero. | All Import Configurations | Warning | This is an Import Configuration level message that appears when the file being imported has a zero size i.e. is empty. If a previous file was last imported successfully for this Import Configuration, then importing this file will result in all previously imported records being removed from the system.  
  
**Possible Resolution** : Check that the file being imported is indeed the correct file. |   
7 | The start row contains no data or does not exist. | All Import Configurations | Exception | This is an [Import Configuration](<task_imports.md>) level message that appears when the file being imported has an empty row of data corresponding to the Start Row specified in the Import Configuration.  
  
**Possible Resolution** : Check that the Start Row specified corresponds to the correct row in the file. Also, check that the file being imported is indeed the correct file. |   
8 | An error occurred while running a task.  
  
NB - If the message in the Value field says "An error occurred while importing the data using Sql Loader. Please check the log file for more information on the cause of the failure" -it may be caused by the [import configuration](<task_imports.md>) having a double space in it  
  
The defined in the mapping file  does not exist on the import table. | All Task Configurations  
  
Agreements | Exception  
  
Exception | Task Configuration.  
  
If the message listed on the left appears, please check that the import configuration does not have a double space anywhere in the name.  
  
e.g. "Name of Import"  
  
If this error is seen on the Agreement Import it signifies that the import file references an extension name that does not exist within the system. |   
9 | A mandatory field was not defined or another validation forced the value to be NULL. | All Import Configurations | Exception | This is a Record level message that appears when a record being imported has a missing mandatory column. The corresponding record will not be imported.  
  
**Possible Resolution** : Check that the value supplied for the corresponding record/column is correct. |   
10 | The supplied value is not in the expected date format. The value has been set to NULL. | All Import Configurations | Warning | This is a Record level message that appears when a record being imported contains a field that is not a valid date. A NULL will be imported in such circumstances.  
  
**Possible Resolution** : Check the corresponding record/column and ensure the data value supplied is valid. |   
11 | The supplied value is not a numeric type. The value has been set to NULL. | All Import Configurations | Warning | This is a Record level message that appears when a record being imported contains a field that is not a valid numeric data type. A NULL will be imported in such circumstances.  
  
**Possible Resolution** : Check the corresponding record/column and ensure the data value supplied is valid. |   
12 | The supplied character or string value is not of the correct length. The value has been set to NULL. | All Import Configurations | Warning | This is a Record level message that appears when a record being imported contains a field that is over the allowed length. Rather than importing a truncated value a NULL will be imported in such circumstances. |   
13 | Value supplied does not match any system defined value. The value has been set to NULL. | All Import Configurations | Exception | This is a Record level message. |   
14 | Date comparison found unexpected condition. | OTC Trades  
  
OTC Comparison Trades  
  
Repo Trades  
  
Debt Instrument Price Import  
  
Instrument Import (Next coupon date) | Warning  
  
Exception  
  
Warning | This is a Record level message that appears when a record being imported has broken one of the following validation date related checks:  
  
\- Date is Less Than or Equal to Today: TradeEndDate  
  
**Possible Resolution** : Check that the dates for the corresponding record are actually valid.  
  
This is a record level message that appears when the price date for an instrument price being imported is greater than today.  
  
This is a record level message that appears when the next coupon date for an instrument is specified as being before today.  
  
The value will load however. |   
17 | Product value supplied does not match any system defined value. The value has been set to NULL. | OTC Trades | Warning | Record |   
18 | Currency value supplied does not match any system defined value. The value has been set to NULL. | OTC Trades  
  
OTC Comparison Trades  
  
Collateral Positions  
  
Instruments  
  
Agreements  
  
Repo Trades  
  
Agreement Margins  
  
Margin Terms  
  
Exposure Trade Overrides  
  
Agreement Cash Interest Terms  
  
Collateral Buckets | Warning  
  
Exception | This is a Record level message which appears when the currency value supplied does not match a currency which exists in the database. This validation occurs, for example, against the Notional and PV currencies on the OTC trades import, against the Agreement Currency and [System Currency](<system_currency.md>) on the Collateral Positions Import and against the Issue Currency on the Instruments import.  
  
For an import of Collateral Buckets this validation is treated as an Exception and the record is not loaded. | New Currency  
  
Edit Currency  
19 | The supplied value is not a boolean type. The value has been set to NULL. | All Import Configurations | Warning | Record |   
20 | Principal value supplied does not match any system defined value. The value has been set to NULL. | Collateral Positions  
  
Agreements  
  
OTC Trades  
  
Repo Trades | Warning | Record | New Principal  
  
Edit Principal  
21 | Counterparty value supplied does not match any system defined value. The value has been set to NULL. | Collateral Positions  
  
Agreements  
  
OTC Trades  
  
Repo Trades | Warning | Record | New Counterparty  
  
Edit Counterparty  
23 | Managing Location City value supplied does not match any system defined value. The value has been set to NULL. | MI Collateral Positions  
  
Agreements | Warning | Record | New City  
  
Edit City  
24 | Business Line value supplied does not match any system defined value. The value has been set to NULL. | Collateral Positions | Warning | Record |   
25 | Instrument Identifier value supplied does not match any system defined value. The value has been set to NULL. | Collateral Positions  
  
Basic Eligibility  
  
Instrument Ratings  
  
Asset Pool Balances  
  
Triparty Positions | Warning | This is a Record level message that appears when the Instrument ID supplied does not match an ID in the instruments table.  
  
**Possible Resolution** : Check the corresponding supplied Instrument ID is correct and if so add the instruments. |   
26 | Instrument Identifier Type value supplied does not match any system defined value. The value has been set to NULL. | Collateral Positions  
  
Instruments | Warning | This is Record level message that appears when the Instrument ID Type supplied does not match an Instrument ID Type in the database. |   
27 | Position Type value dopes not match any system defined value. The value has been set to NULL. | Collateral Positions | Warning | This is a Record Level message that appears when the direction value supplied on the Collateral Positions file is neither Held nor Posted. These are the only two values acceptable as a direction.  
  
**Possible Resolution** : Ensure that the value used on the file is Held or Posted. |   
28 | Agreement value supplied does not match any system defined value. The value has been set to NULL. | Collateral Positions  
  
Basic Eligibility  
  
Margin Terms | Warning | This is a Record level message that appears when the agreement name supplied does match an entry in the agreements table. The corresponding position will be imported but the Agreement will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied agreement name is correct and if so add the agreement. | New Agreement >  
  
New OTC Agreement  
  
New Repo Agreement  
  
New Securities Lending Agreement  
  
Edit Existing Agreement  
29 | Numeric value supplied must be positive. The value has been set to NULL. | Collateral Positions  
  
IM/IA Exposures | Warning  
  
Exception | This is a Record level message that appears when the Adjusted PV in agreement or [system currency](<system_currency.md>) for a collateral position is not a positive number. The corresponding position will be imported but the value will be set to NULL.  
  
**Possible Resolution** : Change the Adjusted PV to be a positive number.  
  
Change the IM/IA Exposure value to be a positive number. |   
30 | Maturity Date is before today's date. | Instruments | Warning | This is a Record level message that applies to the import of Instrument Data and will occur if the Maturity Date of an Instrument is before today's date. |   
31 | Issue Date is after today's date. | Instruments | Warning | This is a Record level message that applies to the import of Instrument Data and will occur if the Issue Date of an Instrument is after today's date. |   
32 | Maturity Date is before issue date. | Instruments | Warning | This is a Record level message that applies to the import of Instrument Data and will occur if the Maturity Date of an Instrument is before the Issue date. |   
33 | Issuer value supplied does not match any system defined value. The value has been set to NULL. | Instruments  
  
Collateral Buckets | Warning  
  
Exception | This is a Record level message that appears when the Issuer name supplied does match an entry in the Entities table.  
  
When the severity is a warning, the corresponding record will be imported but the Issuer value will be set to NULL.  
  
When the severity is an exception, the corresponding record will not be imported.  
  
**Possible Resolution** : Check the corresponding supplied name is correct and if so create the Entity. | New Issuer  
  
Edit Issuer  
34 | Rating value does not match any system defined value. The value has been set to NULL. | Instruments | Warning | This is a Record level message that appears when the Rating value supplied does match an entry in the credit ratings table. The corresponding record will be imported but the Rating value will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied Rating value is correct and if so add the Rating value to the credit ratings table. |   
35 | Instrument Type value supplied does not match any system defined value. The value has been set to NULL. | Instruments  
  
Collateral Buckets | Warning  
  
Exception | This is a Record level message that appears when the Instrument Type supplied does match an entry in the instrument types table.When the severity is a warning, the corresponding record will be imported but the Instrument type value will be set to NULL.  
  
When the severity is an exception, the corresponding record will not be imported.  
  
**Possible Resolution** : Check the corresponding supplied Instrument Type is correct and if so add the Instrument Type to the instrument types table. | New Instrument Type  
  
Edit Instrument Type  
36 | An error occurred while validating the structure of the mapping file. | All Import Configurations | Exception | This is an Import Configuration level message that appears when the mapping file cannot be read. No records will be imported.  
  
**Possible Resolution** : Check that the mapping file is in the correct format.  
  
Ensure that all mandatory fields are included on the mapping file. |   
37 | Coupon Type value supplied does not match any system defined value. The value has been set to NULL. | Instruments | Warning | This is a Record level message that appears when the Coupon Type supplied does match an entry in the coupon types table. The corresponding record will be imported but the Coupon Type will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied Coupon Type is correct and if so add it to the to the coupon types table. | New Coupon Type  
  
Edit Coupon Type  
38 | Industry Group value supplied does not match any system defined value. The value has been set to NULL. | Instruments | Warning | This is a Record level message that appears when the Industry Group supplied does match an entry in the industry groups table. The corresponding record will be imported but the Industry Group will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied Industry Group is correct and if so add it to the to the industry groups table. | New Industry Group  
  
Edit Industry Group  
39 | Industry Sector value supplied does not match any system defined value. The value has been set to NULL. | Instruments  
  
Entities | Warning | This is a Record level message that appears when the Industry Sector supplied does match an entry in the industry sectors table. The corresponding record will be imported but the Industry Sector will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied Industry Sector is correct and if so add it to the reference data. | New Industry Sector  
  
Edit Industry Sector  
40 | Instrument Underlying Sector value supplied does not match any system defined value. The value has been set to NULL. | Instruments | Warning | This is a Record level message that appears when the Instrument Underlying Sector supplied does match an entry in the instrument underlying sectors table. The corresponding record will be imported but the Instrument Underlying Sector will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied Instrument Underlying Sector is correct and if so add it to the reference data. | New Instrument Underlying Sector  
  
Edit Instrument Underlying Sector  
41 | Municipal State value supplied does not match any system defined value. The value has been set to NULL. | Instruments | Warning | This is a Record level message that appears when the Municipal State supplied does match an entry in the municipal states table. The corresponding record will be imported but the Municipal State will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied Municipal State is correct and if so add it to the municipal states table. | New Municipal State  
  
Edit Municipal State  
42 | Municipal Region value supplied does not match any system defined value. The value has been set to NULL. | Instruments | Warning | This is a Record level message that appears when the Municipal Region supplied does match an entry in the municipal regions table. The corresponding record will be imported but the Municipal Region will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied Municipal Region is correct and if so add it to the municipal regions table. | New Municipal Region  
  
Edit Municipal Region  
43 | Bond Purpose value supplied does not match any system defined value. The value has been set to NULL. | Instruments | Warning | This is a Record level message that appears when the Bond Purpose supplied does match an entry in the bond purposes table. The corresponding record will be imported but the Bond Purpose will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied Bond Purpose is correct and if so add it to the bond purposes table. | New Bond Purpose  
  
Edit Bond Purpose  
44 | Fund Source value supplied does not match any system defined value. The value has been set to NULL. | Instruments | Warning | This is a Record level message that appears when the Fund Source supplied does match an entry in the fund sources table. The corresponding record will be imported but the Fund Source will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied Fund Source is correct and if so add it to the fund sources table. | New Fund Source  
  
Edit Fund Source  
45 | Collateral Type value supplied does not match any system defined value. The value has been set to NULL. | Instruments | Warning | This is a Record level message that appears when the Collateral Type supplied does match an entry in the collateral types table. The corresponding record will be imported but the Collateral Type will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied Collateral Type is correct and if so add it to the collateral types table. | New Collateral Type  
  
Edit Collateral Type  
46 | Seasoning value supplied does not match any system defined value. The value has been set to NULL. | Instruments | Warning | This is a Record level message that appears when the Seasoning supplied does match an entry in the seasonings table. The corresponding record will be imported but the Seasoning will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied Seasoning is correct and if so add it to the seasonings table. | New Seasoning  
  
Edit Seasoning  
47 | Asset Country value supplied does not match any system defined value. The value has been set to NULL. | Instruments | Warning | This is a Record level message that appears when the Asset Country supplied does match an entry in the countries table. The corresponding record will be imported but the Asset Country will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied Asset Country is correct and if so add it to the countries table. | New Country  
  
Edit Country  
48 | SP Watch value supplied does not match any system defined value. The value has been set to NULL. | Instruments | Warning | This is a Record level message that appears when the SP Watch value supplied does not match one of the following values:  
  
Positive  
  
Negative  
  
Developing  
  
Possible Resolution  
  
Change the SP Watch value on the file accordingly and reload. |   
49 | Moody Watch value supplied does not match any system defined value. The value has been set to NULL. | Instruments | Warning | This is a Record level message that appears when the Moody Watch value supplied does not match one of the following values:  
  
Positive  
  
Negative  
  
Developing  
  
Possible Resolution  
  
Change the Moody Watch value on the file accordingly and reload. |   
50 | Fitch Watch value supplied does not match any system defined value. The value has been set to NULL. | Instruments | Warning | This is a Record level message that appears when the Fitch Watch value supplied does not match one of the following values:  
  
Positive  
  
Negative  
  
Developing  
  
Possible Resolution  
  
Change the Fitch Watch value on the file accordingly and reload. |   
51 | Issuer Industry Sector value supplied does not match any system defined value. The value has been set to NULL. | Instruments | Warning | This is a Record level message that appears when the Issuer Industry Sector supplied does match an entry in the industry sectors table. The corresponding record will be imported but the Issuer Industry Sector will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied Issuer Industry Sector is correct and if so add it to the industry sectors table. | New Industry Sector  
  
Edit Industry Sector  
52 | Issuer Type value supplied does not match any system defined value. The value has been set to NULL. | Instruments | Warning | This is a Record level message that appears when the Issuer Type supplied does match an entry in the industry types table. The corresponding record will be imported but the Issuer Type will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied Issuer Type correct and if so add it to the issuer types table. | New Issuer Type  
  
Edit Issuer Type  
53 | Issuer Domicile value supplied does not match any system defined value. The value has been set to NULL. | Instruments | Warning | This is a Record level message that appears when the Issuer Domicile supplied does match an entry in the countries table. The corresponding record will be imported but the Issuer Domicile will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied Issuer Domicile is correct and if so add it to the countries table. | New Country  
  
Edit Country  
54 | Entity value supplied does not match any system defined value. The value has been set to NULL. | Entity Ratings  
  
Counterparty Contacts | Warning | This is a Record level message that appears when the Entity supplied does match an entry in the entities table. The corresponding record will be imported but the Entity value will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied Entity is correct and if so add it to the entities table. | New Entity  
  
Edit Entity  
55 | Rating Agency value supplied does not match any system defined value. The value has been set to NULL. | Entity Ratings  
  
Collateral Buckets  
  
Instrument Ratings | Warning  
  
Exception  
  
Exception | This is a Record level message that appears when the Rating Agency supplied does match an entry in the rating agencies table.  
  
When the severity is a warning, the corresponding record will be imported but the Rating Agency value will be set to NULL.  
  
When the severity is an exception, the corresponding record will not be imported.  
  
**Possible Resolution** : Check the corresponding supplied Rating Agency is correct and if so add it to the rating agencies table.  
  
This occurs on Instrument Ratings import when a Rating Agency specified does not exist in Reference Data. |   
56 | Debt Structure value supplied does not match any system defined value. The value has been set to NULL. | Entity Ratings  
  
Collateral Buckets  
  
Instrument Ratings | Warning  
  
Exception  
  
Exception | This is a Record level message that appears when the Debt Structure supplied does not match one of the following values:  
  
Long Term  
  
Short Term  
  
**Possible Resolution** : Change the Debt Structure on the file accordingly and reload.  
  
This occurs on Instrument Ratings import when the Debt Structure specified on the imports file does not exist in Reference Data. |   
57 | Credit Rating value supplied does not match any system defined value. The value has been set to NULL. | Entity Ratings  
  
Instrument Ratings | Warning Exception | This is a Record level message that appears when the Credit Rating value supplied does match an entry in the credit ratings table.  
  
When the severity is a warning, the corresponding record will be imported but the Credit Rating value will be set to NULL.  
  
When the severity is an exception, the corresponding record will not be imported.  
  
**Possible Resolution** : Check the corresponding supplied Credit Rating is correct and if so add it to the rating agencies table. |   
58 | Multiple Ratings supplied for an Entity with the same Rating Agency and Debt Structure. No rating was imported. | Entity Ratings  
  
Instrument Ratings | Exception  
  
Exception | This is a Record level message that appears when a duplicate record has been received on the Entity Ratings file. A duplicate record is one where the Entity Name, Rating Agency and Debt Structure are the same. None of the duplicate records will be loaded.  
  
**Possible Resolution** : Remove the duplicate records from the file and reload. |   
59 | CMO/ ABS Asset Class value supplied does not match any system defined values. The value has been set to NULL. | Instruments | Warning | This is a Record level message that appears when the CMO/ ABS Asset Class value supplied does match an entry in the CMO ABS Asset Classes table. The corresponding record will be imported the CMO ABS Asset Class will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied CMO/ ABS Asset Class is correct and if so add it to the table. | New CMO ABS Asset Class  
  
Edit CMO ABS Asset Class  
60 | The sub delimiter cannot be the same as the delimiter for the import configuration. | Instruments | Exception | This is an Import Configuration level message that appears when the mapping file contains a sub delimiter which is the same as the main delimiter for the Import Configuration. No records will be imported.  
  
**Possible Resolution** : Change the sub delimiter on the mapping file or the main delimiter on the Import Configuration. |   
61 | The ISIN must be 12 characters. | Instruments | Exception | This is a Record level message that appears when the ISIN value supplied is not 12 characters long.  
  
The corresponding record will not be imported.  
  
**Possible Resolution** : Update the file so that the ISIN has the correct number of characters. |   
62 | The CUSIP must be 9 characters. | Instruments | Exception | This is a Record level message that appears when the CUSIP value supplied is not 9 characters long.  
  
The corresponding record will not be imported.  
  
**Possible Resolution** : Update the file so that the CUSIP has the correct number of characters. |   
63 | The SEDOL must be 7 characters. | Instruments | Exception | This is a Record level message that appears when the SEDOL value supplied is not 7 characters long.  
  
The corresponding record will not be imported.  
  
**Possible Resolution** : Update the file so that the SEDOL has the correct number of characters. |   
64 | Agreement Type value supplied does not match any system defined value. The value has been set to NULL. | Agreements | Warning | This is a Record level message that appears when the Agreement Type value supplied does match an entry in the agreement types table. The corresponding record will be imported but the Agreement Type value will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied Agreement Type is correct and if so add it to the reference data. | New Agreement Type  
  
Edit Agreement Type  
65 | Domicile value supplied does not match any system defined value. The value has been set to NULL. | Entities | Warning | This is a Record level message that appears when the Domicile supplied does not match an entry in the countries table. The corresponding record will be imported but the Domicile value will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied Domicile is correct and if so add it to the reference data. | New Country  
  
Edit Country  
66 | Entity Type value supplied does not match any system defined value. The value has been set to NULL. | Entities | Warning | This is a Record level message that appears when the Entity Type entry in the database. The corresponding record will be imported but the Entity Type value will be set to NULL.  
  
**Possible Resolution** : Entity Types cannot be added to the database. The only types currently available are:  
  
Counterparty  
  
Custodian  
  
Issuer  
  
Principal  
  
Ensure that all values on the file correspond to these types. |   
67 | Supplied values for Party, Issuer and IsCustodian nullified Entity Type. | Entities | Exception | This is a record level message that appears when an Entity has been supplied but no entity type (Principal, Counterparty, Issuer, Custodian, or Credit Support Provider) has been specified.  
  
The affected record will not load. |   
68 | Instrument Class value supplied does not match any system defined value. The value has been set to NULL. | Collateral Buckets | Exception | This is a record level message that appears when an Instrument Class has been supplied that does not match one of the valid Instrument Classes in the database. The choices currently available are:  
  
Debt  
  
Cash |   
69 | Time Period value supplied does not match any system defined value. The value has been set to NULL. | Collateral Buckets | Exception | This is a record level message that appears when collateral buckets file is loaded with a time period that does not correspond to a valid entry in the database. The available choices are:  
  
Days  
  
Months  
  
Years |   
70 | Maturity Method value supplied does not match any system defined value. The value has been set to NULL. | Collateral Buckets | Exception | This is a Record level message that appears when collateral buckets file is loaded that contains an invalid Maturity Method. The available choices are:  
  
Original  
  
Remaining |   
71 | Rating Dispute Method value supplied does not match any system defined value. The value has been set to NULL. | Collateral Buckets | Exception | This is a Record level message that appears while trying to load a collateral buckets file that contains an invalid Rating Dispute Method. The available choices are: Higher  
  
Lower |   
72 | Invalid maturity band supplied. | Collateral Buckets | Exception | This is a Record level message that appears while trying to load a collateral buckets file that contains an invalid maturity band. |   
73 | Invalid rating band supplied. | Collateral Buckets | Exception | This is a Record level message that appears while trying to load a collateral buckets file that contains an invalid rating band. This could be, for example, a rating band operator has been supplied without a rating or vice versa. |   
74 | At least one maturity band is required when maturity method is selected. | Collateral Buckets | Exception | This is a Record level message that appears if trying to load a collateral buckets file that contains a Maturity Method without a corresponding maturity band. |   
75 | At least one rating band is required. | Collateral Buckets | Exception | This is a Record level message that appears if trying to load a collateral buckets file that contains specified rating agencies without the corresponding rating band information. |   
76 | The lower band should be less than the upper band. |  |  |  |   
77 | Eligible Collateral Type value supplied does not match any system defined value. The value has been set to NULL. | Basic Eligibility | Warning | This is a Record level message that appears while trying load a basic eligibility file that contains an invalid Eligible Collateral Type. The only available choices are:  
  
Bucket  
  
Instrument |   
78 | Collateral Bucket value supplied does not match any system defined value. The value has been set to NULL. | Basic Eligibility | Warning | This is a Record level message that appears while trying to load a basic eligibility file that contains a Collateral Bucket name which does not correspond to a valid Collateral Bucket in the database. |   
79 | Upper operator value supplied does not match any system defined value. The value has been set to NULL. | Collateral Buckets | Exception | This is a Record level message that appears while trying to load a collateral buckets file that contains a rating or maturity band upper operator that does not match one of the following available values:  
  
<  
  
<= |   
80 | Lower operator value supplied does not match any system defined value. The value has been set to NULL. | Collateral Buckets | Exception | This is a Record level message that appears while trying to load a collateral buckets file that contains a rating or maturity band lower operator that does not match one of the following available values:  
  
=  
  
= |   
81 | Multiple Collateral Buckets supplied with the same name. | Collateral Buckets | Exception | This is a Record level message that appears while trying to load a collateral buckets file that contains more than one bucket of the same name. None of the duplicate records will be loaded.  
  
**Possible Resolution** : Remove the duplicate records from the file and reload. |   
82 | Lower band must be less than upper band on Instrument rating. | Collateral Buckets | Exception | This is a record level message that appears while trying to load a collateral buckets file that contains a record in which the lower band rating is higher than the upper band rating. |   
83 | Lower band must be less than upper band on Issuer rating. | Collateral Buckets | Exception | This is a record level message that appears while trying to load a collateral buckets file that contains a record in which the lower band rating is higher than the upper band rating. |   
84 | Multiple Agreements supplied with the same name. | Agreements | Exception | This is a Record level message that appears while trying to load an agreements file that contains more than one agreement of the same name. None of the duplicate records will be loaded.  
  
**Possible Resolution** : Remove the duplicate records from the file and reload. | Edit Existing Agreement  
85 | Multiple Agreements supplied with the same alias. | Agreements | Exception | This is a Record level message that appears while trying to load an agreements file that contains more than one agreement with the same alias. None of the duplicate records will be loaded.  
  
**Possible Resolution** : Remove the duplicate records from the file and reload. |   
86 | Multiple Entities supplied with the same name. | Entities | Exception | This is a Record level message that appears while trying to load an entities file that contains more than one entity with the same name. None of the duplicate records will be loaded.  
  
**Possible Resolution** : Remove the duplicate records from the file and reload. | Edit Entity  
87 | Multiple Entities supplied with the same alias. | Entities | Exception | This is a Record level message that appears while trying to load an entities file that contains more than one entity with the same alias. None of the duplicate records will be loaded.  
  
**Possible Resolution** : Remove the duplicate records from the file and reload. |   
88 | Multiple Instruments supplied with the same identifier. | Basic Eligibility  
  
Instruments | Exception | This is a Record level message that appears while trying to load a basic eligibility file which tries to assign the same instrument to the same agreement more than once or when loading an Instruments feed that contains duplicate records with the same identifier.  
  
None of the duplicate records will be loaded. |   
89 | Position and DefaultValue cannot both be specified in the mapping file. | All Import Configurations | Exception | This is an Import Configuration level message that appears while trying to use a mapping file that specifies both a Position and Default Value. Only one of these can be used.  
  
See [How to Import Data Using a Mapping File](<mapping_file.md>). |   
90 | Either Position or DefaultValue must be specified in the mapping file. | All Import Configurations | Exception | This is an Import Configuration level message that appears while trying to use a mapping file that contains neither a Position or a Default Value. One of these must be used.  
  
See [How to Import Data Using a Mapping File](<mapping_file.md>). |   
91 | The Maturity Band range supplied was invalid. | Collateral Buckets | Exception | This is a Record level message that appears while trying to load a collateral buckets file that contains an invalid maturity band. For example, the upper maturity band is less than the lower maturity band. |   
92 | The Issuer Rating Band supplied was invalid. | Collateral Buckets | Exception | This is a Record level message that appears while trying to load a collateral buckets file that contains an invalid issuer rating band. |   
93 | The Instrument Rating Criteria supplied was invalid. | Collateral Buckets | Exception | This is a Record level message that appears while trying to load a collateral buckets file that contains an invalid instrument rating criteria. |   
94 | This Issuer Rating Band supplied was invalid. | Collateral Buckets | Exception | This is a Record level message that appears while trying to load a collateral buckets file that contains an invalid issuer rating band. |   
95 | The FX Rate value supplied does not match any system defined value. The value has been set to NULL. | FX Rates | Warning | This is a Record level message that appears while trying to load an FX rates file that contains a currency (or alias for that currency) that does not exist in the database. |   
96 | Minimum tolerance breached. | FX Rates | Warning | This is a Record level message that appears if an FX rate is below the minimum amount specified for that currency. |   
97 | Maximum tolerance breached. | FX Rates | Warning | This is a Record level message that appears if an FX rate is above the maximum amount specified for that currency. |   
98 | Percentage change tolerance breached. | FX Rates | Warning | This is a Record level message that appears if an FX rate breaches the percentage tolerance specified for that currency.  
  
This tolerance is checked against the most recent, previous date available in the database for that rate. |   
99 | Multiple FX Rates with the same FX rate alias and date. | FX Rates | Exception | This is a Record level message that appears when a duplicate record has been received on the FX Rates file. A duplicate record is one where the FXRateName and RateDate are the same. None of the duplicate records will be loaded.  
  
**Possible Resolution** : Remove the duplicate records from the file and reload. |   
100 | The Party value supplied does not match any system defined value. The value has been set to NULL. | Basic Eligibility  
  
P&L  
  
IM/IA Exposures | Warning  
  
Exception | This is a Record level message that appears if the eligible party value on a Basic Eligibility file does not match one of the following allowed values:  
  
Both  
  
Counterparty  
  
Principal  
  
Also raised on P&L and IM/IA Exposure imports when an applies to party is not Principal, Counterparty. |   
101 | Multiple basic eligibility items supplied with the same identifier. | Basic Eligibility | Exception |  |   
102 | The party defined on the basic eligibility bucket conflicts with the party being used on an advanced eligibility rule that references the given bucket. | Basic Eligibility | Exception | This is a record level message that appears if an update of a basic eligibility record will cause a conflict with existing Advanced Eligibility rules. For further information see File Format for Basic Eligibility. |   
103 | Valuation Agent value supplied does not match any system defined value. The value has been set to NULL. | Agreements | Warning | This is a Record level message that appears if the Valuation Agent on an Agreements file does not match one of the following allowed values:  
  
Both  
  
Counterparty  
  
Principal |   
104 | Agreement Type cannot be changed. | Agreements | Exception | This is a Record level message that appears if an Agreements file tries to update an Agreement Type. Agreement Type cannot currently be changed on an import as this has significant impacts on other data used in the agreement. |   
105 | The internal identifier matches an already existing identifier. | Instruments | Exception | This is a Record level message that appears if trying to import an Instrument with an Internal Identifier that matches another identifier already existing in the database. |   
106 | Alias Type value supplied does not match any system defined value. The value has been set to NULL. | Alias | Warning | This is a Record level message that appears if the Alias Type on an Alias file does not match one of the following allowed values:  
  
Agreement  
  
Entity  
  
TradeType |   
107 | Alias Group value supplied does not match any system defined value. The value has been set to NULL. | Alias | Warning | This is a Record level message that appears while trying to load an Alias file that contains an Alias Group that does not exist in the database.  
  
**Possible Resolution** : Check the corresponding supplied Alias Group is correct and if so add it to the reference data. | New Alias Group  
  
Edit Alias Group  
108 | Trade Type value supplied does not match any system defined value. The value has been set to NULL. | Alias  
  
Repo Trades  
  
OTC Trades | Warning | This is a Record level message that appears while trying to load an Alias or Trades file that contains a Trade Type that does not exist in the database.  
  
**Possible Resolution** : Check the corresponding supplied Trade Type is correct and if so add it to the reference data. | New Trade Type  
  
Edit Trade Type  
110 | An alias of this name already exists in the supplied group. | Alias | Exception | This is a Record level message that appears when an alias is received on the Alias file which is the same as an alias already existing in the database for this Alias Group. None of the duplicate records will be loaded. |   
111 | An alias of this name already exists in the file. | Alias | Exception | This is a Record level message that appears when a duplicate alias is received on the Alias file. A duplicate alias is one where the AliasName, AliasGroup and AliasType are the same. None of the duplicate records will be loaded.  
  
**Possible Resolution** : Remove the duplicate records from the file and reload. |   
112 | Multiple trades supplied with the same trade reference. | Repo Trades  
  
OTC Trades  
  
Exposure Trades Overrides | Exception | This is a Record level message that appears when a duplicate trade reference is received on a Trades or Overrides file. None of the duplicate records will be loaded.  
  
**Possible Resolution** : Remove the duplicate records from the file and reload. |   
113 | Value is too large. | Repo Trades | Warning | This is a Record level message that appears when a number being supplied has more digits than are allowed before the decimal point. The value is set to NULL. |   
115 | Party cannot change because the entity is currently in use by at least one agreement. | Entities | Exception | This is a Record level message that appears if trying to import an Entities file where the "Party" specified conflicts with how the entity is already being used in the application. For example, if an entity has already been used as a Counterparty in a collateral agreement then it cannot import it as a Principal. |   
116 | Cannot unassign Entity as an Issuer because it is currently in use by at least on instrument, concentration rule or collateral bucket. | Entities | Exception | This is a Record level message that appears if trying to Import an Entities file which would make an Entity no longer an Issuer if that Issuer is already being used in the application (for example, the Issuer of an Instrument, as an Issuer in a collateral bucket or in a concentration rule). |   
117 | Trade may not be assigned since the Agreement or Principal/Principal Branch, Counterparty/Counterparty Branch and Trade Type are used to assign the trade. | OTC Trades  
  
Repo Trades | Warning | This is a Record level message that appears if a trade is supplied without either an Agreement or a Principal and Counterparty. Trades will still be loaded into the database but will not be assigned to a collateral agreement. |   
118 | Multiple agreement exists for the supplied Counterparty/Principal/Trade Type combination. Trade has not been assigned. | Trade Assignments | Warning | This is a Record level message that is returned if a trade could potentially be assigned to more than one agreement. In this case the trade does not get assigned to any of the potential agreements. | Edit Agreement Type  
  
Edit Trade Type  
  
Edit Existing Agreement  
119 | Multiple agreements exist for this Source Reference. | Agreements | Exception | This is a Record level message that appears if an Agreements file is trying to update the Agreement Name for a source reference and the Agreement Name already exists in the database or if the same source reference is supplied more than once on the file. |   
120 | Multiple entities exist for this Source Reference. | Entities | Exception | This is a Record level message that appears if an Entities file is trying to update the Entity Name for a source reference and the Entity Name already exists in the database or if the same source reference is supplied more than once on the file. |   
121 | Agreement name already exists for a different source reference. | Agreements | Exception | This is a Record level message that appears while trying to import an Agreement which has an Agreement Name that already exists in the database under a different source reference. |   
122 | Entity name already exists for a different source reference. | Entities | Exception | This is a Record level message that appears while trying to import an Entity which has an Entity Name that already exists in the database under a different source reference. |   
123 | Exposure Amount is NULL. This may affect future calculations. | OTC Trade  
  
Repo Trades | Warning | This is a Record level message that appears if importing a trade with a blank Exposure Amount. The trade will still be imported however be aware that this will affect the Exposure Calculation. |   
124 | Repo Call Filter value supplied does not match any system defined value. The value has been set to NULL. | Agreements | Warning | This is a Record level message that appears while trying to import an Agreements file which has an invalid value for Includes or Excludes Trade Days. The allowed values are:  
  
NULL - that is, a blank field  
  
T  
  
T+1  
  
T+2  
  
T+3 |   
125 | Exposure Currency value has not been supplied. The Total Exposure in Agreement Currency for this agreement has not been calculated. | Margin Calculations | Warning | This is a record level message that is returned after running the Margin Calculation task if a trade included in the calculation did not have an Exposure Amount Currency. |   
126 | Exposure Amount is NULL, but has been set to 0 for the Margin Calculation. | Margin Calculations | Warning | This is a record level message that is returned after running the Margin Calculation task if a trade included in the calculation did not have an Exposure Amount.  
  
Note that a warning is also provided when trades are imported if an Exposure Amount is NULL. Therefore these issues would ideally have been resolved prior to the Exposure Calculation being run. |   
127 | [System Currency](<system_currency.md>) to Agreement Currency Exchange Rate could not be found. The margin calculation for the associated agreement will not occur. | Margin Calculations | Exception | This is a record level message that is returned if the system cannot convert the exposure of a trade from [system currency](<system_currency.md>) to agreement currency as a result of a missing exchange rate. |   
128 | Exposure Currency to System Currency Exchange Rate could not be found. The margin calculation for the associated agreement will not occur. | Margin Calculations | Exception | This is a record level message that is returned if the system cannot convert the exposure of a trade from exposure amount currency to [system currency](<system_currency.md>) as a result of a missing exchange rate. |   
129 | Option Type value supplied does not match any system defined value. | OTC Trades  
  
OTC Comparison Trades | Warning | This is a Record level message that appears while trying to import an OTC Trades file which has an invalid value for Option Type. The allowed values are:  
  
NULL - that is, a blank field  
  
American  
  
European  
  
Bermudan |   
130 | PutCall value supplied does not match any system defined value. | OTC Trades  
  
OTC Comparison Trades | Warning | This is a Record level message that appears while trying to import an OTC Trades file which has an invalid value for PutCall. The allowed values (case insensitive) are:  
  
NULL - that is, a blank field  
  
Put  
  
P  
  
Call  
  
C |   
131 | BuySell value supplied does not match any system defined value. | OTC Trades  
  
OTC Comparison Trades | Warning | This is a Record level message that appears while trying to import an OTC Trades file which has an invalid value for BuySell. The allowed values (case insensitive) are:  
  
NULL - that is, a blank field  
  
Buy  
  
B  
  
Sell  
  
S |   
132 | Clips Code should be 9 characters. | OTC Trades | Warning | This is a Record level message that appears while trying to import an OTC Trades file which has a CLIPS code which is not 9 digits in length. |   
133 | Agreement value supplied does not match any existing OTC or Clearing agreement OTC Trades. | Agreement Margins | Warning | When raised via an OTC import: This is a Record level message that appears when the agreement name supplied does match an  
  
OTC  
  
or  
  
Client Clearing  
  
or  
  
Central Clearing agreement entry in the agreements table.  
  
The corresponding item will be imported but the Agreement will be set to NULL.  
  
(Trade Assignment will therefore not use Agreement name as assignment criteria)  
  
**Possible Resolution** : Check the corresponding supplied agreement name is correct and if so add the agreement.  
  
When raised via an Agreement Margin import:  
  
This record is raised when Agreement Name specified does not match an OTC, Central or Client Clearing Agreement. | New Agreement >  
  
New OTC Agreement  
  
Edit Existing Agreement  
134 | Agreement value supplied does not match any existing Repo/Securities Lending agreement. | Repo Trades | Warning | This is a Record level message that appears when the agreement name supplied does match a Repo agreement entry in the agreements table. The corresponding position will be imported but the Agreement will be set to NULL.  
  
**Possible Resolution** : Check the corresponding supplied agreement name is correct and if so add the agreement. | New Agreement >  
  
New Repo Agreement  
  
New Securities Lending Agreement  
  
Edit Existing Agreement  
135  
  
(OTC/Client Clearing)  
  
114 (Repo) | No OTC, Central Clearing or Client Clearing agreement exists for the supplied Counterparty/Principal/Trade Coverage Rules combination. | Trade Assignments | Warning | This is a Record level message that is returned if a trade cannot be assigned because no agreement exists for the Counterparty, Principal and Trade Type that has been supplied. | New Agreement >  
  
New OTC Agreement  
  
New Repo Agreement  
  
New Securities Lending Agreement  
  
Edit Agreement Type  
  
Edit Trade Type  
  
Edit Existing Agreement  
136 | Principal and Counterparty both refer to the same entity. | Agreements | Exception | This is a Record level message that appears while trying to import an agreement which has the same entity defined as both the Principal and the Counterparty. | Edit Counterparty  
  
Edit Principal  
137 | Credit Support Provider value supplied does not match any system defined value. | Agreements | Warning | This is a Record level message that appears while trying to import an agreement which has a Credit Support Provider defined which does not exist in the database. | Edit Credit Support Provider  
  
New Credit Support Provider  
  
Edit Entity  
138 | Calculation type supplied is not valid for the supplied agreement's business line. | Agreements | Warning | This is a Record level message that appears while trying to import an agreement with a Calculation Type which is not valid for the Business Line to which the agreement belongs. The allowed values are as follows:  
  
OTC  
  
ISDA Unsecured  
  
ISDA Security  
  
Repo/Securities Lending  
  
Repo Net  
  
Repo Standard |   
139 | Invalid Calculation Type. | Agreement; LockUp Only Agreements | Exception | This is a Record level message that appears while trying to import an Agreements or Lock Up Only Agreement file that contains an invalid Calculation Type. |   
140 | Cannot unassign Entity as a Credit Support Provider because it is currently in use by at least one agreement. | Entities | Exception | This is a Record level message that appears while trying to Import an Entities file which would make an Entity no longer a Credit Support Provider if that Credit Support Provider is already being used by one or more agreements in the application. |   
141 | Agreement Name is already defined as an Agreement Alias. | Agreements | Exception | This is a Record level message that appears while trying to import an Agreements file which contains an Agreement Name that is already being used as an Alias for another agreement. |   
142 | Entity Name is already defined as an Entity Alias. | Entities | Exception | This is a Record level message that appears while trying to import an Entities file which contains an Entity Name that is already being used as an Alias for another entity. |   
144 | Rounding Method value supplied does not match any system defined value. | Margin Terms  
  
Agreement | Warning | This is a Record level message that appears while trying to import a Margin Terms file which has an invalid value for Rounding Method. The allowed values (case insensitive) are:  
  
Up  
  
Down  
  
Closer  
  
It is also raised when trying and import an Agreement and the interest accrual Rounding Method is not one of the following values:  
  
Up  
  
Down  
  
Closer |   
145 | Margin Term Type value supplied does not match any system defined value. | Margin Terms | Warning | This is a Record level message that appears while trying to import a Margin Terms file which has an invalid value for Margin Term Type. The allowed values (case insensitive) are:  
  
OTC  
  
Counterparty  
  
Principal  
  
Repo/Securities Lending  
  
Agreement  
  
Internal |   
146 | Duplicate Margin Term and Agreement Combination in import file. | Margin Terms | Exception | This is a Record level message that appears while trying to import a Margin Terms file which contains more than one record for the same Margin Term Type for the same Agreement.  
  
None of the duplicate records will be imported. |   
147 | Margin Term is not valid for supplied agreement. | Margin Terms | Exception | This is a Record level message that appears while trying to import a Margin Terms file which contains a record with a Margin Term Type which is not valid for that particular agreement. For example, trying to import "Internal" margin terms for an OTC agreement. |   
148 | Due to party value supplied does not match any system defined value. | OTC Trades  
  
OTC Comparison Trades  
  
Agreement Margins  
  
Exposure Trade Overrides | Warning | This is a Record level message that appears while trying to import an OTC Trades or Exposure Trade Overrides file which has an invalid value for AdditionalDueTo or LockUpDueTo.  
  
Or if trying to import an Agreement Margins file which has an invalid value for DueTo.  
  
The allowed values (case insensitive) are:  
  
Cpty  
  
Counterparty  
  
Prin  
  
Principal |   
149 | Lock Up Calculation Type. | Agreements | Warning | This is a Record level message that appears if trying to import a file with an invalid value for Lock Up Calculation Type. The allowed values (case insensitive) are:  
  
NettedAgainstVariation  
  
NotNettedAgainstVariation  
  
If Invalid entry supplied, the default of NotNettedAgainstVariation is applied. |   
150 | Margin Type Value defined does not match any system defined value. | Margin calls  
  
Agreement Margins | Exception  
  
Warning | Margin Type defined must be one of the following values:  
  
LockUp  
  
Variation  
  
This is a Record level message that appears if trying to import an Agreement Margins file with an invalid value for Margin Type. The allowed values (case insensitive) are:  
  
Additional  
  
Lock Up |   
151 | Import Configuration value does not match any system defined value. | Exposure Trade Overrides | Warning | This is a Record level message that appears if the Import Configuration Name supplied on an Exposure Trades Overrides file does not match an existing Import Configuration in the system. |   
152 | Trade Reference and Import Configuration Name combination does not match an existing trade. | Exposure Trade Overrides | Exception | This is a Record level message that appears if the supplied Trade Reference and Import Configuration Name does not match a trade in the system. That is, the system cannot find a trade to update. |   
153 | Trade Reference does not match an existing trade. | Exposure Trade Overrides | Exception | This is a Record level message that appears if the supplied Trade Reference does not match a trade in the system. That is, the system cannot find a trade to update. |   
154 | More than one trade found with the supplied Trade Reference. | Exposure Trade Overrides | Exception | This is a Record level message which appears if an Exposure Trades Overrides file contains a Trade Reference which matches to more than one trade already existing in the system. None of the matching trades will be updated. |   
155 | Multiple trades supplied with the same combination of trade reference and import configuration name. | Exposure Trade Overrides | Exception | This is a Record level message that appears when a duplicate Trade Reference and Import Configuration Name combination is received on a Trades. None of the duplicate records will be loaded. |   
156 | Additional Margin, and Additional Margin Due To are required when a Percent of Notional margin method is specified. | Exposure Trade Overrides | Exception | If importing Additional Margin on an Exposure Trades file using a percentage of notional method, the following fields must be supplied also:  
  
AdditionalMargin  
  
AdditionalMarginDueTo  
  
You will receive this validation message if you have not provided all of these values. |   
157 | Lock Up Margin, and Lock Up Margin Due To are required when a Percent of Notional margin method is specified. | Exposure Trade Overrides | Exception | If importing Lock Up Margin on an Exposure Trades file using a percentage of notional method, the following fields must also be supplied:  
  
LockUpMargin  
  
LockUpMarginDueTo  
  
You will receive this validation message if you have not provided all of these values. |   
158 | Override is locked and could not be updated. | Exposure Trade Overrides | Exception | This is a Record level message which appears if an Exposure Trade Overrides file is attempting to overwrite a value which has already been manually locked. |   
159 | Override does not exist for Business Line. | Exposure Trade Overrides | Warning | If an Exposure Trade Overrides file contains a value for a parameter which is not valid for that business line (for example, an Additional Margin for that Repo trade) that value will not be updated. |   
160 | Principal Branch value supplied does not match any system defined value. | OTC Trades  
  
Repo Trades | Warning | This is a Record level message that appears when the Principal Branch supplied does not match a valid Principal Branch in the system. The corresponding trade will be imported but the Principal Branch value will be set to NULL. | Edit Principal  
  
New Principal  
161 | No Relationship exists between the supplied Principal and Branch. | OTC Trades  
  
Repo Trades | Warning | This is a Record Level message that appears if trying to import a trade which has a Principal Branch specified that is not a valid branch for the Principal entity supplied on the trade. |   
162 | No Relationship exists between the supplied Counterparty and Branch. | OTC Trades  
  
Repo Trades | Warning | This is a Record Level message that appears if trying to import a trade which has a Counterparty Branch specified that is not a valid branch for the Counterparty entity supplied on the trade. |   
163 | Counterparty Branch value supplied does not match any system defined value. | OTC Trades  
  
Repo Trades | Warning | This is a Record level message that appears when the Counterparty Branch supplied does not match a valid Counterparty Branch in the system. The corresponding trade will be imported but the Counterparty Branch value will be set to NULL. | Edit Counterparty  
  
New Counterparty  
164 | Number of Trades with Stale Exposure Date. | OTC Trades  
  
Repo Trades | Message | This is an Import Configuration level message that is generated when an OTC Trades or Repo Trades import task is run. This informational message is intended to help determine the validity of the file. |   
165 | Number of Trades with Null Exposure Date. | OTC Trades  
  
Repo Trades | Message | This is an Import Configuration level message that is generated when an OTC Trades or Repo Trades import task is run. This informational message is intended to help determine the validity of the file. |   
166 | Number of Trades with Zero Exposure. | OTC Trades  
  
OTC Comparison Trades  
  
Repo Trades | Message | This is an Import Configuration level message that is generated when an OTC Trades or Repo Trades import task is run. This informational message is intended to help determine the validity of the file. |   
167 | Number of Trades with Invalid or Null Exposure. | OTC Trades  
  
Repo Trades | Message | This is an Import Configuration level message that is generated when an OTC Trades or Repo Trades import task is run. This informational message is intended to help determine the validity of the file. |   
168 | Additional Margin Currency to System Currency Exchange Rate could not be found. The margin calculation for the associated agreement will not occur. | Margin Calculation | Exception | This is a record level message that is returned if the system cannot convert an Additional Margin from its given currency to system currency as a result of a missing exchange rate. |   
169 | Lock Up Margin Currency to System Currency Exchange Rate could not be found. The margin calculation for the associated agreement will not occur. | Margin Calculation | Exception | This is a record level message that is returned if the system cannot convert a Lock Up Margin from its given currency to [system currency](<system_currency.md>) as a result of a missing exchange rate. |   
170 | Margin Method value supplied does not match any system defined value. The value has been set to NULL. | OTC Trades  
  
OTC Comparison Trades  
  
Exposure Trade Overrides  
  
Agreement Margins | Warning | This is a Record level message that appears while trying to import an OTC Trades or an Exposure Trades or an Agreement Margins file with an invalid value for Margin Method.  
  
The allowed values (case insensitive) are:  
  
Flat  
  
Pct. Notional  
  
Pct. Notional2  
  
Percent Exposure |   
171 | Notional 1 is required for Additional/Lock Up margin. | Exposure Trade Overrides | Exception | This is a Record level message that appears while trying to import an Exposure Trade Overrides file which has an Additional or Lock Up margin override using a percentage of notional method but the corresponding trade has been loaded into the system without the relevant notional amount. |   
172 | Notional 2 is required for Additional/Lock UP margin | Exposure Trade Overrides | Exception | This is a Record level message that appears while trying to import an Exposure Trade Overrides file which has an Additional or Lock Up margin override using a percentage of notional method but the corresponding trade has been loaded into the system without the relevant notional amount. |   
173 | Task was marked as failed by user. | All | Exception | This is the validation message that is provided when a Task has been manually marked as failed by a user. |   
174 | Notional 1 Currency is required for Additional/Lock Up margin. | Exposure Trade Overrides | Exception | This is a Record level message that appears while trying to import an Exposure Trade Overrides file which has an Additional or Lock Up margin override using a percentage of notional method but the corresponding trade has been loaded into the system without the relevant notional currency. |   
175 | Notional 2 Currency is required for Additional/Lock Up margin. | Exposure Trade Overrides | Exception | This is a Record level message that appears while trying to import an Exposure Trade Overrides file which has an Additional or Lock Up margin override using a percentage of notional method but the corresponding trade has been loaded into the system without the relevant notional currency. |   
176 | Additional Margin, Additional Margin Due To, and Additional Margin Currency are required when a Flat margin method is specified. | OTC Trades  
  
OTC Comparison Trades  
  
Exposure Trade Overrides | Exception | If importing Additional Margin, on either an OTC Trades or Exposure Trade Overrides feed, and using a Flat margin method, the following fields must also be supplied:  
  
AdditionalMargin  
  
AdditionalMarginDueTo  
  
AdditionalMarginCurrency  
  
You will receive this validation message if you have not provided all of these values. |   
177 | Lock Up Margin, Lock Up Margin Due To, and Lock Up Margin Currency are required when a Flat margin method is specified. | OTC Trades  
  
OTC Comparison Trades  
  
Exposure Trade Overrides | Exception | If importing Lock Up Margin, on either an OTC Trades or Exposure Trade Overrides feed, and using a Flat margin method, the following fields must also be supplied:  
  
LockUpMargin  
  
LockUpMarginDueTo  
  
LockUpMargin Currency  
  
You will receive this validation message if you have not provided all of these values. |   
178 | Additional Margin, Additional Margin Due To, and the Exchanged Notional 1 are required when a Percent of Notional 1 margin method is specified. | OTC Trades  
  
OTC Comparison Trades | Exception | If importing Additional Margin on an OTC Trades file and using a Pct. Notional margin method, the following fields must also be supplied:  
  
AdditionalMargin  
  
AdditionalMarginDueTo  
  
ExchangedNotional1  
  
You will receive this validation message if you have not provided all of these values. |   
179 | Lock Up Margin, Lock Up Margin Due To, and the Exchanged Notional 1 are required when a Percent of Notional 1 margin method is specified. | OTC Trades  
  
OTC Comparison Trades | Exception | If importing Lock Up Margin on an OTC Trades file and using a Pct. Notional margin method, the following fields must also be supplied:  
  
LockUpMargin  
  
LockUpMarginDueTo  
  
ExchangedNotional1  
  
You will receive this validation message if you have not provided all of these values. |   
180 | Additional Margin, Additional Margin Due To, and the Exchanged Notional 2 are required when a Percent of Notional 2 margin method is specified. | OTC Trades  
  
OTC Comparison Trades | Exception | If importing Additional Margin on an OTC Trades file and using a Pct. Notional2 margin method, the following fields must also be supplied:  
  
AdditionalMargin  
  
AdditionalMarginDueTo  
  
ExchangedNotional2  
  
You will receive this validation message if you have not provided all of these values. |   
181 | Lock Up Margin, Lock Up Margin Due To, and the Exchanged Notional 2 are required when a Percent of Notional 2 margin method is specified. | OTC Trades  
  
OTC Comparison Trades | Exception | If importing Lock Up Margin on an OTC Trades file and using a Pct. Notional2 margin method, the following fields must also be supplied:  
  
LockUpMargin  
  
LockUpMarginDueTo  
  
ExchangedNotional2  
  
You will receive this validation message if you have not provided all of these values. |   
182 | The Counterparty could not be changed for this agreement because there are Counterparty contacts associated to this agreement. | Agreements | Exception | If an agreement already has counterparty contacts associated to it the counterparty name cannot be changed by the Agreements import. |   
183 | The Counterparty could not be changed for this agreement because there are Counterparty branches associated to this agreement. | Agreements | Exception | If an agreement already has counterparty branches associated to it the counterparty name cannot be changed by the Agreements import. |   
184 | The Principal could not be changed for this agreement because there are Principal branches associated to this agreement. | Agreements | Exception | If an agreement already has principal branches associated to it the principal name cannot be changed by the Agreements import. |   
185 | Organization Type Value supplied does not match any system defined value. The value has been set to NULL. | Entities | Warning | This message will appear if the OrganizationType specified on the file for an Entity does not exist within the database. | New Organization Type  
187 | The Variation Held Valuation Percentage was not supplied or the value was outside the allowed range of 0-100. The values have been set to Null. | Basic Eligibility | Warning | Valuation percentages must be defined as a positive number between 0 and 100. 3DP are permissible. |   
188 | The Variation Held Posted Valuation Percentage was not supplied or the value was outside the allowed range of 0-100. The values have been set to Null. | Basic Eligibility | Warning | Valuation percentages must be defined as a positive number between 0 and 100. 3DP are permissible. |   
189 | Instrument Clean or Dirty price is required. | Instrument Price Import | Exception | This message will occur if no price for an instrument is included on the instrument price file.  
  
There must be at least one price included on the price file. |   
190 | Price date is old, your price is potentially state. | Debt Instrument Price Import | Warning | This message will appear while loading an instrument price that has a price date < COB-1. |   
191 | Collateral Valuation Quote value supplied does not match any system defined value. The value has been set to NULL Agreement | Import | Warning | This message appears if the value for CollateralValuationQuote on the file is not one of the following values:  
  
Bid  
  
Mid  
  
Ask |   
192 | Clean / Dirty Price has not changed since last import, so your price is potentially stale. | Debt Instrument Price Import | Information | The message will appear if the prices loaded for an instrument today are identical to the previous day's import. |   
193 | More than one price with multiple dates supplied for an Instrument, Source and Adjustment combination. Most recent price date was imported. | Debt Instrument Price Import | Information | This message will occur while having the same instrument on the file with two different price dates, but the same instrument ID, price source and price adjustment value.  
  
The system will load the latest price date entry. |   
194 | No pool factor was supplied: then system has assumed a factor of 1 for the purpose of the dirty price calculation. | Debt Instrument Price Import | Warning | The message appears if an instrument does not contain a pool factor. Unless supplied the system will default this value to be 1. |   
195 | No Coupon accrual was supplied: the system has assumed a zero coupon accrual for the purpose of the dirty price calculation. | Debt Instrument Price Import | Warning | The message will appear if an instrument is included on the file, but no coupon accrual has been included, and a dirty price has not been included.  
  
Should this be the case, the system will calculate a dirty price using a zero coupon accrual factor. |   
196 | Price Source value supplied does not match any system defined value. The value has been set to NULL. | Agreement Import  
  
Debt Instrument Prices Import  
  
Equity Instrument Prices Import | Warning | The message will appear if the price source on the agreement file does not match any price source that exists in the system Edit Price Source | New Price Source  
197 | No Price is available for this instrument / agreement combination for valuation purposes. A price of zero has been has been used for calculation purposes. | Margin Calculation Task | Warning | This message will appear for any agreement where the agreement has a collateral position or movement for an instrument that has no price available for the price type and source (and for Repo/SL Agreements Price Adjustment) defined in the agreement.  
  
For example an OTC agreement may define that Bloomberg as a price source, and Bid as a price quote type is used.  
  
Should the agreement have a position or movement for an instrument, but no prices for Bloomberg or no Bid price quote type exist for this, then the message would be raised, and a price of zero would be used for calculating market value of the collateral movement or position in the affected instrument.  
  
The message will state which agreement(s) and which instrument reference(s) have missing price information |   
198 | Instrument Identifier does not match any system defined non-cash instrument. | Debt Instrument Prices Import  
  
Equity Instrument Prices Import | Warning | The message appears when an instrument on the corresponding instrument price import file does not match any of the following identifiers for an Instrument in the system:  
  
_For Debt and Equity Instruments_  
  
ISIN  
  
CUSIP  
  
SEDOL  
  
Internal  
  
 _For Equity Instruments Only_  
  
Ticker |   
199 | Duplicate Price for Instrument, Source and Adjustment combination. | Instrument Prices Import | Information | This message will appear while having duplicate rows in the file.  
  
A Duplicate row exists where  
  
Instrument Identifier  
  
Price Source  
  
Prices  
  
Price Date  
  
Price Adjustment  
  
are identical  
  
One of the sets of duplicate records will be loaded. |   
200 | More than one price with same date supplied for an Instrument, Source and Adjustment combination. Only one price was imported. | Instrument Prices Import | Warning | The uniqueness of instrument price import records is determined by four fields:  
  
Instrument Identifier  
  
Price Source  
  
Price Date  
  
Price Adjustment  
  
If having more than one row in the same file with identical values for the above fields, then the records will be identified as duplicates, even if the prices are different.  
  
All prices for an instrument, price source, price date and price adjustment combination should therefore be on the same row of the file.  
  
Note that only one record set will be loaded, and it is not possible to determine which set that will be. |   
201 | A collateral valuation could not be calculated for this instrument as it did not fall into an eligible bucket. A valuation percentage of 0 has been used for calculation purposes. | Margin Calculation Task | Warning | This message will appear for any agreement where there is a collateral position or movement for an instrument that has not been defined as eligible under the Basic Eligibility tab for the agreement.  
  
Because no eligible bucket or instrument has been defined on the agreement, de facto no valuation percentage is available, and therefore a zero value will be used to calculate the affected collateral movement or position.  
  
The message will state which agreement(s) and which instrument reference(s) are not eligible. |   
202 | A collateral valuation could not be calculated for this instrument because it does not satisfy all eligibility rules defined on the agreement. A valuation percentage of 0 has been used for calculation purposes. | Margin Calculation Task | Warning | This message is raised when running the Margin Calculation Task in the following circumstances:  
  
1\. An instrument on a collateral position or movement falls into one of more eligible collateral buckets defined on the basic eligibility tab, or  
  
2\. The instrument on the collateral position/movement fails an Advanced Eligibility rule defined on the Agreement, or  
  
3\. The instrument on the collateral position/movement fails a Ratings Based Eligibility rule defined on the Agreement, or  
  
4\. The instrument on the collateral position/movement fails a Wrong Way Risk rule defined on the Agreement.  
  
Should this occur, the system will deem the collateral position as ineligible and will assign it a zero valuation percentage - effectively a zero market value for Margin calculation purposes.  
  
The message will state which agreement(s) and which instrument reference(s) are not eligible as well as Rule Name and rule criteria that has been breached. |   
203 | Cash Identifier Matches Existing Internal Identifier. | Instruments | Exception | This is a Record level message that appears while importing an instrument with a cash identifier but there is an internal identifier that already exists with the same information. |   
204 | Price Date Adjustment Value does not match any system defined value. The value has been set to NULL. | Instrument Prices Import | Warning | Price Date Adjustment must be one of the following 4 values:  
  
T  
  
T+1  
  
T+2  
  
T+3 |   
205 | Holiday Calendar value supplied does not match any system defined value. The value has been set to Null. | Holiday Calendar Import  
  
Agreement Import  
  
Cash Interest Terms | Warning | The Holiday Calendar name specified in the import file must an existing Holiday Calendar reference Data item in the system.  
  
per above. **Note that if it does not match, any existing entry will be erased and set to blank.**  
  
**per agreement import warning above** | Edit Holiday Calendar  
  
New Holiday  
  
Calendar  
207 | Multiple holidays with the same date. | Holiday Calendar Import | Exception | Within the Holiday Calendar import file, there are more than one entry for:  
  
HolidayCalendarName  
  
HolidayDate  
  
combination  
  
The system regards any entry that has the same data for the above two fields as duplicates and will not load them. |   
208 | No Ratings were present for this entity, therefore the Rating Based Margin Terms for the Agreement could not be determined. Zero was used instead. | Margin Calculation Task | Warning | This warning message appears in the following scenario:  
  
1\. The agreement has Ratings Based Margin Terms.  
  
2\. There does not exist in the database a current credit rating for the party/counterparty from any of the credit rating agencies defined in the Selected Agencies field in Ratings based Margin Terms screen.  
  
If the above two conditions are met, this warning will be raised during the Margin Calculation task, and the system will apply a zero value to the margin terms fields that are ratings based for any affected Agreement. |   
209 | Not All Ratings Required Present. | Margin Calculation Task | Warning | This warning message appears in the following scenario:  
  
1\. The agreement has Ratings Based Margin Terms.  
  
2\. All specified ratings required is checked on the Ratings Based Margin Terms screen.  
  
3\. There does not exist in the database a current credit rating for the party/counterparty from all of the credit rating agencies defined in the Selected Agencies field in Ratings based Margin Terms screen.  
  
If the above three conditions are met, the warning will be raised during the Margin Calculation task, and the system will apply a zero value to the margin terms fields that are ratings based for any affected Agreement. |   
210 | Index value supplied does not match any system defined value. The value has been set to NULL. | Index Import  
  
Agreement Cash Interest Terms Import  
  
Profit and Loss | Warning | This message appears when the Index Rate supplied in the file does not match any Index name (or its alias) in the System.  
  
The record will not be imported.  
  
This message appears on Profit and Loss imports for the same reasons as outlined above.  
  
However this validation warning will not prevent the P&L records importing. | Edit Indexes  
  
New Indexes  
211 | Rate Date is for a date prior to the COB Date. | Index Import | Warning | This is a warning message to indicate to the user that the date of the rate in the import file is older than the current system COB Date.  
  
This may well be valid, so the record will import. |   
212 | Multiple Market Index Rates with the same date. | Index Import | Warning | This message is generated when the import file contains numerous entries for the same RateDate for the same named Index.  
  
Should this occur the system will apply the last of the entries in the file for the Index and RateDate. |   
213 | Rate has not changed since previously imported rate. | Index Import | Information | This message is generated when the Index Rate in the file is identical to the rate for the previous date for the same Index. |   
214 | No rates found for index. | Interest Calculation | Warning | This occurs when an Interest Calculation is run for agreements which reference an Index Rate, and the Index is missing rates for the period start date.  
  
| For example, if an interest period that runs from the 1st to the 31st of a month, and movements exists on the 14th of the month, there must be a rate in existence that can be used for the 1st of the month.  
  
If a specific day's interest rate is missing, the prior day's will be used.  
215 | No interest payment period defined for agreement. | Interest Calculation | Warning | This occurs when an Interest Calculation is run for an Agreement that does not have an Interest Period End Date defined.  
  
**Possible solution** | Define an Interest Period for the affected agreements.  
216 | Unable to save interest payment details for statement. | Interest Calculation | Exception | This can occur if the system is unable to save Interest Statements to the directory defined in the installation files.  
  
**Possible solution**  
  
See your system administrator for more details. |   
217 | Most recent Payment(s) could not be calculated because an open payment exists. All accrued interest after the open payment is included in the open accrual. | Interest Calculation | Warning | The Interest Calculation has identified that there are multiple Interest periods which need to have Interest Payments created. The system does not allow for multiple open Interest Payments, so only the first Interest Period Payment has been created.  
  
Additionally, this message will be raised when an open interest payment exists for a previous period, preventing the system generating the next periods payment.  
  
For example, September's interest payment has not been closed and it is now November. The system cannot generate Octobers payment until Septembers is closed. This warning will be raised.  
  
**Possible Solution** : Process the first interest payment until completion.  
  
When complete, run the Interest Payment task again and process the second period payment until completion. Repeat until final period interest payment. |   
218 | Cash Instrument Does Not Exist  
  
No cash Instrument found for currency | Agreement Cash Interest Terms |  |  |   
219 | Interest Payment Preference does not match system value. | Agreement | Warning | Valid entries are  
  
Distribute  
  
or  
  
Roll In  
  
**Possible Solution** : The field will be defaulted to Distribute if an incorrect value is supplied. This will overwrite any existing value |   
220 | Interest Payment Day of Week does not match system value. | Agreement | Warning | Valid entries:  
  
Monday  
  
Tuesday  
  
Wednesday  
  
Thursday  
  
Friday  
  
Saturday  
  
Sunday |   
221 | Interest Payment Frequency value does not match system value. The value has been set to NULL. | Agreement | Warning | Valid Entries  
  
Monthly  
  
Weekly  
  
Exact |   
222 | Interest Payment Frequency Weekly Missing Day of Week.  
  
A weekly interest payment frequency value requires an Interest Payment day of Week Value. | Agreement | Warning | Valid entries are  
  
Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday |   
223 | Interest Payment timing exact date value is not valid. | Agreement | Warning | The exact date specified on the import is not valid.  
  
**Possible resolution** : Ensure the date is valid and in a valid format. |   
224 | A duplicate exact date value was supplied for interest payment timing exact. | Agreement | Warning | Duplicate exact date specified on the import.  
  
One of the duplicate dates is loaded. |   
225 | Interest Calculation Type does not match system value. | Agreement Cash Interest Terms | Warning | The value included on the file does not match any calculation types that exist in the system. The record will import but will apply "Do Not Calculate Accrual" as an Interest Calculation type - even if a value already exists  
  
**Solution**  
  
Correct the entry on the file. |   
226 | Cash Is Not Eligible. | Agreement Cash Interest Terms | Exception | The CCY defined on the import is not an eligible collateral for the agreement  
  
**Possible Solution** : Add the cash ccy as eligible collateral or correct the import file. |   
227 | Interest Payment Monthly Is Not Valid. | Agreement | Warning | Monthly interest has been specified but the date of month has been incorrectly specified - eg 12st as opposed to 12th  
  
or Monthly is specified but an invalid occurrence value is specified (ie, not equal to Calendar Day, Business Day or Relative Day) |   
228 | Duplicate Interest Term. | Agreement Cash Interest Terms | Exception | A Duplicate Record was contained in the import file.  
  
NB - if a duplicate entry exists in the import file, the record will not be loaded. |   
229 | Parent Entity Name value supplied does not match any system defined value. The value has been set to NULL. | Entities | Warning |  |   
230 | The parent defined against this entity already exists as descendant of this entity. Circular references are not allowed. |  |  |  |   
231 | Next Coupon Date is After Maturity Date. | Instruments | Warning | The next coupon date specified in the instruments file is later than the Maturity Date of the Instrument.  
  
The Next Coupon date will be loaded. |   
232 | Extension Field data exceeds maximum length allowed for that field. The default value will be used if this is a new agreement. | Agreements | Warning | The length of the value specified as an extension in the import file is greater than the limit specified in the extension reference data object.  
  
The value on the import file is ignored, and any value in the database is maintained. |   
233 | Extension Field data exceeds capacity allocated. | Agreements | Warning | The number of digits (either before the decimal place or after the decimal place) for the numeric value specified as an extension in the import file exceeds the digit limit specified in the extension reference data object.  
  
The value on the import file is ignored, and any value in the database is maintained. |   
234 | Cannot Change Custodian When Is Referenced In Settlement Instructions. | Entities |  | The entity type could not be changed from custodian because it is used by existing settlement instruction |   
235 | Agreement Status Detail does not match any system defined value. The value has been set to NULL. | Agreements | Warning | The Monitoring Reason specified on the data file must match a valid monitoring reason entry in the system. | Edit Agreement Status Detail  
  
New Agreement Status Detail  
236 | Governing Law does not match any system defined value. The value has been set to NULL. | Agreements | Warning | The Governing Law specified on the data file must match a valid monitoring reason entry in the system. | Edit Country  
  
New Country  
237 | Agreement Status does not match any system defined value. The value has been set to NULL. | Agreements | Exception | The Agreement Status Value specified on the data file must match a valid monitoring reason entry in the system  
  
**Note: record will not be imported if this error raised.** |   
238 | Posting Party is either missing, or an invalid value on the file. | Agreements | Exception | Posting Party is a mandatory field on the Agreement Import.  
  
It must match one of three permissible values:  
  
Both  
  
Principal  
  
Counterparty  
  
**Note: record will not be imported if this error raised.** |   
239 | Apply To Collateral Margin value supplied does not match any system defined value. The value has been set to NULL. | Collateral Positions  
  
Agreement Cash Interest Terms | Warning | **_When raised for Collateral Position import:_**  
  
Permissible values are:  
  
Guarantee  
  
LockUp  
  
Surplus  
  
Variation  
  
**Note:** (Additional validations are performed to ensure above values are applicable for a business line - see File Format For Collateral Positions)  
  
**_When raised for Agreement Cash terms:_**  
  
Apply To Collateral Margin Type must be defined, and be one of the following values:  
  
Variation  
  
LockUp  
  
Both  
  
**Record will not be inserted if this error raised.** |   
240 | Collateral Allocation Type value supplied does not match any system defined value. The value has been set to NULL. | Agreements | Warning | Collateral Allocation Type must be defined, and be one of the following two values:  
  
Segregate Lock Up And Variation  
  
Auto Allocate  
  
Record will not be imported if this error raised. |   
241 | Cannot Segregate Collateral if Lock Up Margin is netted. | Agreements | Exception | The value "Segregate Lock Up And Variation" for Collateral Allocation Type is only acceptable if LockUpCalculationType is defined as "Not Netted Against Variation"  
  
If this is not the cause, this error is raised and the record is not imported. |   
242 | Available for Rehypothecation Type value does not match any system defined value. The value has been set to NULL. | Agreements | Warning | Value must be one of:  
  
None  
  
Variation Only  
  
LockUp Only  
  
Both Variation and Lock Up  
  
If not, the warning will be raised, and the record will not be loaded. |   
243 | Cannot Rehypothecate Lock Up if Collateral Allocation Type is Auto Allocate. | Agreements | Exception | Available for rehypothecation value has been defined as Lock Up Only, but Collateral Allocation Type has not been defined as Segregate Lock Up and Variation.  
  
If this inconsistency is encountered, the record will not be loaded. |   
244 | Cannot have Lock Up Collateral posted in both directions. | Margin Calculation | Warning | LockUp Collateral can only be in one direction, either held or posted, not both simultaneously.  
  
**If this warning is displayed, the results of the corresponding the margin calculation will not be correct.** |   
245 | Cannot have Lock Up Collateral for an Agreement not set to Collateral Allocation Type of Segregate Lock Up and Variation. | Collateral Positions | Exception | Collateral Positions defined on the data file with a margin type of Lock Up can only be loaded for OTC Agreements with a Collateral Allocation Type of Separate Lock Up And Variation. If this is not the case, records defined as margin type Lock up will not be loaded. |   
246 | Cannot have Lock Up Exposure due to principal and due to counterparty at the same time. | Margin Calculation | Warning | Lock Up exposure is in favor of Principal and Counterparty.  
  
The system assumes that lock up requirements will only ever be in favor of one party - either Principal or Counterparty.  
  
If lock up is discovered in both parties favor at the same time, the system assumes that this is due to booking errors, and this warning is generated to alert users to check the affected agreements. |   
247 | Custodian value supplied does not match any system defined value. The value has been set to NULL. | Agreement  
  
Triparty Positions | Warning | If mapped, the Tri Party custodian value supplied must match an existing custodian entity in the database. If not a Null value is used. |   
248 | Margin Type specified on interest term is invalid due to Agreement's Collateral Allocation Type. | Agreement Cash Interest Terms | Warning | Agreement Cash Interest Terms of LockUp have been supplied for an Agreement that has does not have a collateral allocation type of segregated lock up and variation. This is an invalid combination - the margin type should be Variation. |   
249 | CannotUpdateCollateralAllocationType  
  
Collateral Allocation Type cannot be changed from Segregation to Auto Allocation via the import. You must change it manually. | Agreement | Exception | Collateral Allocation value cannot be altered via import once set. It must be done via the GUI. |   
250 | The specific trade coverage is duplicated. The specific trade coverage was not used during assignment. | Trade Assignment | Warning | The same trade has been defined as being specifically included on multiple agreements.  
  
Based on this the system will stop trying to assign the trade and it will remain unallocated. |   
251 | Settlement Offset Value does not match any system defined value. The value has been set to NULL. | Agreement | Warning | Settlement Offset value must be one of the following permissible values: [T, T+1, T+2, T+3]. If missing or invalid, the value will be set to system default. If system default has not been defined, the following values will be used:  
  
Cash: T  
  
Debt: T+1 |   
252 | Applies to Position Type Value does not match any system defined value. The value has been set to NULL. | Agreement Cash Interest Terms | Warning | Permissible values must be one of the following:  
  
Held  
  
Posted  
  
Both  
  
If not, the record will not be imported. |   
253 | Cannot calculate interest when there is a partially undefined term. | Interest Calculation Task |  |  |   
254 | Cannot have an instrument type class of Cash when the instrument identifier type is not cash |  |  |  |   
255 | Cannot import duplicate cash instruments. |  |  |  |   
256 | Cannot apply Margin Terms to Lock Up. Lock Up Terms are invalid for non-OTC agreements. | Agreements Import | Warning | Applying MTA and Rounding terms to Lock Up margin requirement is not permissible for Non OTC Agreements. |   
257 | Cannot apply Margin Terms to Lock Up. Lock Up Terms are invalid for auto allocated agreements. | Agreements Import | Warning | MTA and Rounding terms can only be applied to OTC agreements that have a collateral allocation method of **Segregate Lock Up and Variation**. |   
258 | Primary Identifier for instrument matches an existing instrument's internal identifier. |  |  |  |   
259 | Entity Alias is already defined as an Entity Name. | Aliases Import | Exception | The Alias defined for the Entity has the same name as the Entity itself. |   
260 | Agreement Alias is already defined as an Agreement Name. | Aliases Import | Exception | The Alias defined for the Agreement Name is identical to the Agreement's Name. |   
261 | Trade Type Alias is already defined as an Trade Type Name. | Aliases Import | Exception | The Alias defined for the Trade Type is identical to the actual Trade Type Name. |   
262 | There are changes awaiting approval for this agreement. | Margin Calculation Task | Warning | This is raised when there are there are data items on the Agreement which have **not yet been approved**.  
  
The calculation will use the original (i.e. pre-pending approval) values in the margin calculation. |   
263 | Cannot import data because there are changes awaiting approval for this item. | The following Imports:  
  
Agreement Cash Interest Terms  
  
Agreements  
  
Alias  
  
Basic Eligibility  
  
Margin Terms  
  
Agreement Margins | Exception | For imports **apart** from Agreement Margins, this is raised when the data file for the import contains a record for an Agreement that is **Locked for Approval**.  
  
Records cannot be imported for Agreements that are Locked for Approval.  
  
The record in question will not be imported.  
  
See [Approvals](<approvals.md>).  
  
The exception is raised on an Agreement Margin import when one or more agreement margin records on the agreement is locked for approval.  
  
Note it is not raised if the Agreement Record is locked for approval. |   
264 | Maturity method is required when maturity band(s) is supplied. | Collateral Bucket Import | Exception | Maturity Band information has been defined on the import, but no Maturity Method has been supplied.  
  
Maturity Method must be defined if Maturity Band Information is supplied.  
  
The record will not import. |   
265 | Rating agency is required when rating band(s) is supplied. | Collateral Bucket Import | Exception | When Rating Band information is supplied for either Issuers  
  
or  
  
Instruments  
  
The corresponding Issuer Rating Agencies or Instrument Rating Agencies fields must be populated.  
  
The record will not import. |   
266 | TriParty Lock Up Custodian is not valid for Auto Allocate agreements. The Value has been set to NULL. | Agreement Import | Warning | Values defined for TriPartyLockupCustodian are only valid if CollateralAllocationType is defined as Segregate Lock Up and Variation. If defined as Auto Allocate, and a value is defined for TriPartyLockupCustodian, then this warning will be raised, and the field will be blanked. The record will load. |   
267 | Instrument updated by multiple identifiers. | Instruments Import | Exception | The same instrument has been supplied on the file multiple times but with differing Identifier Types.  
  
For example, it has been supplied as a row based on a CUSIP identifier, and also supplied as a row via an ISIN identifier. |   
268 | Interest Precision Apply To value supplied does not match any system defined value. The value has been set to Null. | Agreement | Warning | Interest Apply Precision To value must be supplied and must be valid:- Acceptable values:- Daily Accruals  
  
Final Payment only. |   
269 | The Lock Up Held Valuation Percentage was not supplied or the value was outside the allowed range of 0-100. The values has been set to Null. | Basic Eligibility | Warning | Valuation percentages must be defined as a positive number between 0 and 100. 3DP are permissible. |   
270 | The Lock Up Posted Valuation Percentage was not supplied or the value was outside the allowed range of 0-100. The values has been set to Null. | Basic Eligibility | Warning | Valuation percentages must be defined as a positive number between 0 and 100. 3DP are permissible. |   
271 | Price Adjustment must be provided for Repo and Securities Lending Agreements. | Agreements | Exception | Price Adjustment is mandatory on Repo and Securities Lending Agreements.  
  
If missing the record will not import. |   
272 | Invalid Price Adjustment valued Provided. | Agreements | Exception | Permissible values are  
  
T  
  
T+1  
  
T+2  
  
T+3 |   
273 | At least one valuation percentage must be specified. | Basic Eligibility | Exception | In order for a Collateral Bucket or Instrument to be assigned as eligible collateral to an agreement, at least one valuation percentage needs to be defined. |   
274 | A valuation percentage used in an existing eligibility rule cannot be imported as null. | Basic Eligibility | Exception | An instrument / bucket referred to in the file has been defined with no Valuation Percentage, yet has already been referenced in an Advanced Eligibility or Ratings Based Rule.  
  
It cannot be set to Null while in use elsewhere. |   
275 | Error calculating Dirty Price. Sum of clean price and coupon interest accrued to date cannot be negative. | Debt Instrument Prices | Exception | The calculation of an instrument dirty price using the file supplied clean prices and coupon accrual has resulted in a negative price.  
  
Coupon accrual can be a negative number, but must not result in a negative dirty price. |   
276 | Percentage amounts cannot exceed 9,999. | Agreement Margins  
  
Margin Terms | Exception | An Amount greater than 9999.999999 has been specified together with an Amount Method based on percentages.  
  
Amount must not exceed this value when Amount Method is defined as on of the following:  
  
Percent Notional 1  
  
Percent Notional 2  
  
Percent Exposure |   
277 | Interest term does not match eligibility definition parameter. |  |  |  |   
278 | Maximum Value for Column Exceeded |  |  |  |   
279 | Lot  
  
Increment cannot be larger than the Minimum Lot | Instruments | Exception | If defined the lot increment must be equal to or less than the Minimum Lot. If it is not, the record will not be imported |   
280 | Minimum Lot must be divisible by the Lot Increment. | Instruments | Exception | When defined the minimum lot must be divisible by the Lot Increment. If it is not, the record will not be imported |   
281 | Letter of Credit Instruments cannot be imported. | Instruments |  |  |   
282 | Letter Of Credit buckets cannot be imported. | Buckets |  |  |   
283 | The instrument provided does not allow ratings. | Instrument Ratings | Exception | This is displayed, when a rating is imported on an instrument for which ratings do not apply - for example a Letter of Credit Instrument. |   
284 | FX Rate Source value supplied does not match any system defined value. The value has been set to NULL. | FX Rates | Warning | FX Rate source defined for a FX rate on the data file must match a FX Rate Source defined in The system. |   
285 | The price terms supplied for this instrument are not valid. | Instruments | Exception | Price Terms must be defined and be one of the following values  
  
Percentage  
  
Actual |   
286 | Missing price ? |  |  |  |   
287 | Stock Index value supplied does not match any system defined value. The value has been set to NULL. | Instruments | Warning | Stock Index must exist in the system reference data. | Edit Stock Index  
  
New Stock Index  
288 | Exchange value supplied does not match any system defined value. The value has been set to NULL. | Instruments | Warning | Exchange must exist in the system reference data. | Edit Exchange  
  
New Exchange  
290 | At least one price must be specified for equity instruments. Equity Instrument with Instrument ID :< Instrument_Id > | Equity Instrument Prices | Exception | A Bid, Ask or Mid Price must be supplied for Instruments included on Equity Instrument Price import. |   
291 | Cannot import Cash nor Letter of Credit instrument prices. | Equity Instrument Prices | Exception | A cash or Letter of Credit instrument has been included on the Equity Instrument Prices import.  
  
These instruments do not have prices. |   
292 | The Instrument Identifier supplied is already defined in the import file. |  |  |  |   
293 | Call Type value supplied does not match any system defined value. The value has been set to NULL. | Margin Calls |  |  |   
294 | A duplicate margin call was specified. | Margin Calls |  |  |   
295 | Margin call matched no agreements. | Margin Calls |  |  |   
296 | A Call already exists today for this Agreement. | Margin Calls |  |  |   
297 | The Associated Agreement is Locked. | Margin Calls |  |  |   
298 | The Associated Agreement is Monitored. | Margin Calls |  |  |   
299 | Net Exposure Not Allowed with this Margin Type. | Margin Calls | Warning | Record will be loaded, but the Net exposure value will be set to Null. |   
300 | Lock Up margin not allowed with this margin type. | Margin Calls | Warning | Record will be loaded, but the Lock Up Amount will be set to Null. |   
301 | Margin call imported with a zero call amount. The call has been updated to a no action. | Margin Calls | Warning | Record will be loaded but set to a call type of "No Action". |   
302 | Cannot import Agreements of Central Clearing or Client Clearing Business Lines. | Agreements | Exception | Agreements import currently only allows import of Agreements for following Business Lines:  
  
OTC  
  
Repo  
  
Securities Lending  
  
Agreements not in any of the above will not be loaded. |   
303 | Central Counterparty entity type cannot be removed from this entity because it is in use by at least one agreement. | Entities | Exception | This is a Record level message that appears while trying to Import an Entities file which would make an Entity no longer a Central Counterparty if that Central Counterparty is already being used by one or more agreements in the application.  
  
The record will not be imported. |   
304 | Clearing Member entity type cannot be removed from this entity because it is in use by at least one agreement. | Entities | Exception | This is a Record level message that appears while trying to Import an Entities file which would make an Entity no longer a Clearing Member if that Clearing Member is already being used by one or more agreements in the application.  
  
Again record will not be imported. |   
305 | Clearing Client entity type cannot be removed from this entity because it is in use by at least one agreement. | Entities | Exception | As above but for a change to make a currently used Clearing Client no longer a Clearing Client.  
  
The record will not be imported. |   
306 | Duplicate column name found in the mapping file. |  |  |  |   
307 | The same column was specified for import and defaulted in the mapping file. |  |  |  |   
308 | Margin Type value supplied does not match acceptable value(s) for the agreement. | Agreement Margins | Exception | Agreement Margins can only be imported for the following Agreement Types  
  
OTC  
  
Client Clearing (where Margin Type defined on the Agreement is Lock up)  
  
The following Margin Types defined on the Agreement Margin file are therefore acceptable  
  
For OTC Agreements  
  
Additional Margin  
  
Lock Up  
  
For Client Clearing Agreements  
  
Lock Up |   
309 | Agreement name does not match any OTC Central Clearing Or Client Clearing agreement that accepts trades. | OTC Trade Import | Warning |  |   
310 | Margin Method value supplied does not match acceptable value(s) for Clearing agreement. | Agreements Margins | Exception | The only acceptable Margin Method for Central and Client Clearing Agreements is Flat. |   
311 | Collateral Margin Type supplied does not match the agreement's Collateral Margin Type. | Collateral Positions | Exception | Raised when Margin Type defined on the Collateral Position import does not match the Margin Type on the corresponding Central Clearing or Client Clearing Agreement. |   
312 | Collateral Margin Type supplied is not valid for Client Clearing positions. Only Variation and Lock Up are supported. | Collateral Positions | Exception | Raised when a collateral position on the import file for a client clearing agreement does not match the margin type of the agreement.  
  
Client clearing agreements have can have a margin type of either Variation or Lock Up. |   
313 | Issue Date Bands can only be specified for Debt Collateral Buckets. | Collateral Buckets | Exception | Issue date information can only be defined on Debt Collateral Buckets. That is Instrument Class value is defined as Debt. |   
314 | The Issue Date Band range supplied was invalid. | Collateral Buckets | Exception | An invalid Issue Date Band has been specified. For example, the upper issue date value is less than the lower issue date value:  
  
10 months  
  
< 9 months  
  
Issue Date bands must be logically correct. |   
315 | The Issue Date Band is invalid. | Collateral Buckets | Exception | An invalid Issue Date band has been defined. |   
316 | The Issue Date Band is not fully specified. | Collateral Buckets | Exception | This is a Record level message that appears while trying to load a collateral buckets file that contains an incomplete Issue Date rating band.  
  
This could be, for example, an operator and ordinal were supplied but not a time period. |   
317 | Cash Interest Terms are invalid for Central Clearing Agreements. | Agreement Cash Interest Terms | Exception | Agreement cash interest terms cannot be imported for agreements belonging to the Central Clearing Business Line. |   
318 | Applies To Collateral Margin does not match Collateral Margin Type on Agreement. | Agreement Cash Interest Terms | Exception | When importing agreement cash interest terms for a client clearing agreement, the value defined in the AppliesToCollateralMargin field must match the MarginType value defined on the Agreement. If not, this exception is thrown. |   
319 | Agreement value supplied does not match any existing Central Clearing Variation, Client Clearing Variation or OTC agreement. | Profit and Loss | Warning | P&L records can only be imported for an Agreement that satisfies two criteria  
  
1\. Business Line is one of the following:  
Central Clearing  
b. Client Clearing  
c. OTC  
  
2\. For a) and b) above Margin Type is Variation.  
  
**Note:** If this validation is raised, the corresponding Agreement Name field will be nullified. |   
320 | At least one type of P&L must be defined. Set either Consideration, Coupon, CCP Fees, Prince Aligned Interest or Cash Flow. | Profit and Loss | Warning | P&L record must contain at least one defined P&L Type (category amount and applies to party). |   
321 | The Currency specified is not attached to a Cash Instrument. | Profit and Loss | Warning | There must be a corresponding cash instrument in the system for those currencies defined per row in the P&L import.  
  
Records in the P&L import file for currencies which do not exist as cash instruments in The system will not be imported. |   
322 | At least one Profit And Loss component is zero. | Profit and Loss | Exception | P&L amounts if included on the P&L import file must be greater than zero. Zero amounts and their corresponding AppliesTo value are excluded during import. |   
323 | Agreement value supplied does not match any system defined value or does not allow the import of eligible collateral. | Basic Eligibility | Exception | Basic Eligibility cannot be imported for Central Clearing Agreements with a Margin Type of Surplus or Guarantee. | New Agreement  
  
Edit Agreement  
324 | Profit and Loss cannot be imported if the agreement is double posted. | Profit and Loss | Exception | P&L amount cannot be imported for an Agreement where there is both a Held and Posted collateral position for the same currency.  
  
The agreement collateral position must be corrected to be either held or posted, before the P&L record can be imported. |   
325 | The Guarantee Held Valuation Percentage was not supplied or the value was outside the allowed range of 0-100. The value has been set to Null. | Basic Eligibility | Warning | Valuation percentages must be defined as a positive number between 0 and 100. 3DP are permissible. |   
326 | The Guarantee Posted Valuation Percentage was not supplied or the value was outside the allowed range of 0-100. The value has been set to Null. | Basic Eligibility | Warning | Valuation percentages must be defined as a positive number between 0 and 100. 3DP are permissible. |   
327 | The Surplus Held Valuation Percentage was not supplied or the value was outside the allowed range of 0-100. The value has been set to Null. | Basic Eligibility | Warning | Valuation percentages must be defined as a positive number between 0 and 100. 3DP are permissible. |   
328 | The Surplus Posted Valuation Percentage was not supplied or the value was outside the allowed range of 0-100. The value has been set to Null. | Basic Eligibility | Warning | Valuation percentages must be defined as a positive number between 0 and 100. 3DP are permissible. |   
329 | Settlement Date of Profit And Loss record must not be in a paid interest payment period for that currency and agreement. | Profit and Loss | Exception | P&L amounts cannot be imported with a settlement date that falls within a closed interest payment period. |   
330 | The MTA and Rounding Amount fields are not allowed on OTC Margin Terms. | Margin Terms | Exception | OTC and Client clearing margin terms definition must include delivery and return values:  
  
Delivery MTA  
  
Return MTA  
  
Delivery Rounding  
  
Return Rounding |   
331 | The Deliver and Return MTA and Rounding Amount fields are not allowed on Repo and Securities lending Margin Terms. | Margin Terms | Exception | Repo and Securities Lending Agreements have a single MTA and Rounding amount fields. They do not have separate Delivery and Rounding values for these fields. |   
332 | A Margin Method of Flat cannot contain a decimal amount. Value will be rounded. | Margin Terms | Warning |  |   
333 | Allow Intraday Calculations can only be set for OTC Agreements. The value will be ignored. | Agreements | Warning | Intraday Calc flag can only be set on an OTC Agreement. |   
334 | Allow Intraday Calculation cannot be changed from true to false via the import. You must change it manually. | Agreements | Warning | Once the AllowIntradayCalculation flag on an agreement is set as True, it cannot be amended to false via the agreement import. That can only be done via the application's GUI. |   
335 | Allow Intraday Tolerance can only be set for Intraday OTC Agreements. The value will be ignored. | Agreements | Warning | IntraDay Tolerance can only be defined on OTC Agreements where the AllowIntradayCalculation flag is set as enabled. |   
336 | Asset Pool value supplied does not match any system defined value. The value has been set to NULL. | Asset Pool Balances | Exception | Asset Pool Name defined on the file must match an existing Asset Pool in the system.  
  
The record will not load. |   
337 | Asset Pool cannot be defined for a held position. The value has been set to NULL. | Collateral Positions | Warning | Asset Pools denote the source of collateral that has been used to meet a Principal's delivery obligations. Therefore they can only be defined on Posted Collateral Positions.  
  
The record will load but the Asset Pool value specified for the record on the data file will be ignored. |   
338 | The Principal on the Agreement and the Asset Pool do not match. | Collateral Positions | Exception | An Asset Pool is associated to a Principal and therefore Agreements for that Principal.  
  
If the Asset Pool specified for an Agreement's Posted collateral position is not associated to the Agreement's Principal then this error is thrown and the record will not load. |   
339 | Monitor Short Positions was defined on a non-principal entity. The value has been set to NULL. | Entities | Warning | The field Monitor Short Positions should only be populated for those Entities where the type is Principal, or Both.  
  
If populated for a Non Principal Entity then the value will be ignored and the record will load. |   
340 | Agreement must be assigned to a Central Clearing group before calls can be imported. | Margin Calls | Exception | If an imported margin call matches a central clearing agreement but the agreement is not assigned to a central clearing agreement group, then it is not imported. |   
341 | Multiple asset pool balances supplied with the same combination of instrument, asset pool, and effective date. | Asset Pools | Warning | Asset Pool balances are unique at the level of the instrument, asset pool and effective date level.  
  
If numerous entries exist in the file with identical values for these three fields, then the notional amount is aggregated and this warning thrown. |   
342 | Can only have Lock Up Collateral for an Agreement set to Collateral Allocation Type of Lock Up only. | Collateral Positions | Exception |  |   
343 | Collateral Allocation Type and Lock Up Calculation Type combination invalid for Agreement import. | Agreements | Exception |  |   
344 | Collateral Allocation Type and Lock Up Calculation Type combination invalid for Agreement Lock Up Only import. | Agreements Lock Up Only | Exception | Collateral Allocation Type and Lock Up Calculation Type combination invalid for Agreement Lock Up Only import. |   
345 | Available for Rehypothecation type is not set to Lock Up Only or None for Lock Up Only Agreement. | Agreements Lock Up Only |  | LockupOnlyAgreementInvalidCollateralAllocationAvailableForRehypCombination,Available for Rehypothecation type is not set to Lock Up Only or None for Lock Up Only Agreement. |   
346 | Margin Terms for Lock Up Only Agreement must be applied, value set to True. | Agreements Lock Up Only | Warning | UseMTAOnLockUpMarginTerms values must be set to True on the Lock Up Only agreement. Best is to set the mapping file to default to that value. |   
347 | Margin Terms for Lock Up Only Agreement must be applied, value set to True. | Agreements Lock Up Only | Warning | UseRoundingOnLockUpMarginTerms values must be set to True on the Lock Up Only agreement. Best is to set the mapping file to default to that value. |   
348 | Agreement has pending unapproved contacts. | Margin and Interest Calculation Task | Warning | When Agreement has Contacts awaiting approvals, users will be warned about it during the Margin Call and Interest calculations. |   
349 | Can only import Agreements of OTC Business Lines. | Agreements Lock Up Only | Exception | When using the Lock Up Only agreements import, the specified business line can only be OTC. |   
350 | Lock Up Calculation Type and Collateral Allocation Type combination cannot be changed to Lock Up Only agreement. | Agreements Lock Up Only | Exception | The correct combination is LockupOnly for the collateral allocation type and LockUpOnlyCalculation for the calculation type. |   
351 | Lock Up Calculation Type and Collateral Allocation Type combination cannot be changed from Lock Up Only agreement. | Agreements | Exception | The Collateral Allocation Type and Lock Up Calculation Type cannot be changed to create a regular OTC Agreement from Lock Up Only agreement or vice versa. |   
352 | Transition and/or creation of notification failed. Margin Call(s) not transitioned. | MC Workflow Transition | Exception | It is triggered when a user tries to transition a margin call and either the margin call notification publishing or margin call transition fails.  
  
In particular, this exception occurs when there is an underlying problem with the TLM Collateral Services services (e.g. it stopped). The margin call will remain in its original state and an investigation has to be conducted. |   
353 | This Entity is Locked and may not be imported. | Entities | Exception | The entity provided in the import file will not be captured because it is imported against an entity that is locked for approval. |   
354 | This Index is locked and rates may not be imported. | Index Rates | Exception | The index rate provided in the import file will not be captured because it is imported against an index that is locked for approval. |   
355 | This Debt Price is locked and prices may not be imported. | Debt Instrument Prices | Exception | The debt price provided in the import file will not be captured because it is imported against a debt price that is locked for approval. |   
356 | This Equity Price is locked and prices may not be imported. | Equity Instrument Prices | Exception | The equity price provided in the import file will not be captured because it is imported against an equity price that is locked for approval. |   
357 | Currency value supplied does not match any system defined value. Agree tolerance has been set to None. | Agreements | Warning | This validation appears when the currency value supplied for the Agree tolerance definition does not match a currency which exists in the database. |   
358 | Method value supplied does not match any system defined value. Agree tolerance has been set to None. | Agreements | Warning | The acceptable values for Method are Flat, Percent of Margin Call or pct. of Margin Call. Other values will be rejected. |   
359 | Method must be supplied if the Amount or Currency have been specified. Agree tolerance has been set to None. | Agreements | Warning | If either the amount or ccy have been supplied, the method also has to be provided. If incomplete values are being imported, Agree tolerance will be set to None, even if a tolerance was already defined on the agreement. |   
360 | Amount cannot be less than zero. Agree tolerance has been set to None. | Agreements | Warning | Negatives Amount values for Agree are not acceptable. If an incorrect value is being imported, Agree tolerance will be set to None, even if a tolerance was already defined on the agreement. |   
361 | Amount is not a valid percentage. Agree tolerance has been set to None. | Agreements | Warning | Values outside the 1 - 100% range are not accepted. If an incorrect value is being imported, Agree tolerance will be set to None, even if a tolerance was already defined on the agreement. |   
362 | Amount is required when Method is defined as Percent of Call Amount. Agree tolerance has been set to None. | Agreements | Warning | For Percent of Call method, amount has to also be supplied. If incomplete values are being imported, Agree tolerance will be set to None, even if a tolerance was already defined on the agreement. |   
363 | Amount and Currency are required when Method is defined as Flat. Agree tolerance has been set to None. | Agreements | Warning | For Flat method, amount and ccy have to also be supplied. If incomplete values are being imported, Agree tolerance will be set to None, even if a tolerance was already defined on the agreement. |   
364 | Instrument is locked and could not be imported. | Instruments | Exception | The instrument provided in the import file will not be captured because it is imported against an instrument that is locked for approval. The same would apply for Instrument Ratings import. |   
365 | Extension Field value supplied does not match any defined list value. The value has been set to NULL. | Agreements and Entities | Warning | List type of extensions are defined values and if the value provided on the import does not match it, it will not be imported and the field will be set to Null. |   
367 | There is an active/running instance of this config currently running. This request has been cancelled. | Task Configurations and Task Status | Exception | When the system is configured for concurrent task execution, the execution of the same configuration is not allowed. Concurrency is limited to OTC Trade and Repo trade imports, OTC and Repo Trade Assignments, Margin Calculations and Margin Calculation Analysis tasks. |   
368 | Entity Group value supplied does not match any system defined value. The value has been set to NULL. | Entities | Warning | The Entity Group provided in the import file does not exist in the system as a defined Entity Group. The Entity Group will not be imported and the field will be set to NULL even if an Entity Group was already defined on the Entity. |   
369 | The Agreement does not exist in the system. | Agreement Replication  
  
Contact Assignment | Exception | The existing Agreement Name provided in the import file does not exist in the system as a defined Agreement. The new Agreement will not be imported. |   
370 | The Counterparty Entity does not exist in the system. | Agreement Replication | Exception | The new Counterparty Name provided in the import file does not exist in the system as a defined Entity. The new Agreement will not be imported. |   
371 | The Entity supplied is not a valid Counterparty. | Agreement Replication  
  
Counterparty Contacts | Exception | The new Counterparty Name provided in the import file is not defined in the system as a Counterparty Entity. The new Agreement or Counterparty Contact will not be imported. |   
372 | The Entity supplied is not a valid Counterparty for the Business Line of the Agreement being imported. | Agreement Replication | Exception | The new Counterparty Name provided in the import file is not a valid Counterparty Entity for the Business Line of the Agreement. The new Agreement will not be imported. |   
373 | New agreement name matches existing agreement name in the import file. | Agreement Replication | Exception | The new Agreement Name provided in the import file is the same as an existing Agreement Name provided within the import file. This is a file validation and no records will be imported. |   
374 | The Agreement Status value was not supplied. The value has been defaulted to Inactive. | Agreement Replication | Warning | An Agreement Status was not provided within the import file. The Agreement Status will be defaulted to Inactive. The new Agreement will be imported. |   
375 | The Agreement Status value supplied does not match any system defined value. | Agreement Replication | Warning | The Agreement Status provided within the import file does not match any of the three valid values (Active, Inactive, Monitor). The new Agreement will be imported. |   
376 | An agreement with this name already exists. | Agreement Replication | Exception | The new Agreement Name provided within the import file is the same as an existing Agreement Name within the system. The new Agreement will not be imported. |   
377 | A validation error occurred while processing the record. | Agreement Replication | Exception | The import copies data from an existing agreement to a new agreement. The copied data is validated when saved to the database even though the copied data is not defined in the import configuration file. Should an error occur with the processing of this copied data, this validation will render in the Import Task Status screen as Agreement Name + exception message. The exception message can be any of the validation errors in this list. |   
378 | Multiple agreements supplied with the same name. | Agreement Replication | Exception | The new Agreement Name provided within the import exists for multiple records within the import file. This is a file validation and no records will be imported. |   
379 | A mapped field was not defined or another validation forced the value to be Null. | Trade Override  
  
IM/IA Exposures Exception | Warning | The Override Comment field is mapped but the value of a row is either empty or longer than 500 characters.  
  
The Initial Margin Exposure and/or Independent Amount Exposure have values but the DueTo fields are empty or invalid.  
  
On IM/IA Exposures no values were defined for the amounts thus resulting in Null for DueTo fields. |   
380 | Contact import specifies a Custom Statement that does not exist. | Counterparty Contact | Exception | The Custom Statement field has an value that does not exist within the system. The contact will not be imported. |   
381 | Interest statements may apply to Variation, Lock Up, or Both. | Counterparty Contact | Exception | When an invalid value is specified, the contact will not be imported. |   
382 | Email address is incorrectly formatted. | Counterparty Contact | Exception | When an invalid email address is specified, the contact will not be imported. |   
383 | Duplicate rows found in import data. | Contact Assignment  
  
IM/IA Exposures | Exception | The contact or agreement, depending on the import, will not be assigned when trying to import a duplicate row of data. |   
384 | The contact does not exist in the system. | Contact Assignment | Exception | The exception will occur when trying to import a contact that is not associated with the counterparty of the agreement. The contact will not be assigned. |   
385 | The associated contact is locked. | Contact Assignment | Warning | This warning will occur when assigning a contact that is currently locked under a different agreement. |   
386 | The contact already exists on the agreement. | Contact Assignment | Warning | The warning will occur when importing a contact that is already assigned to an agreement. |   
387 | MarginCallNotice must be enabled when any of IncludeExposureStatementMC, IncludePositionStatementMC, or IncludeCustomStatementMC are enabled. | Counterparty Contact | Exception | This exception will occur if the Margin Call Notice is not enabled but one of the Include Margin Call reports is enabled. |   
388 | Duplicated Contact Name supplied for the same Counterparty. | Counterparty Contact | Warning | This warning occurs if importing a contact that is already defined for a specific counterparty. |   
389 | An email address is required for a contact when the contact is set to receive any statements. | Counterparty Contact | Exception | This exception occurs when a report is indicated to generate but no email address is specified. |   
390 | A contact with a given name already exists for the given entry. | Counterparty Contact | Exception | This exception occurs when a contact already exists for a specific Counterparty. |   
391 | The Entity supplied is not a valid Custodian. | Triparty Positions | Exception | This exception occurs when importing a Triparty position and has a value that does not match a custodian. |   
392 | The supplied notional value is invalid. | Triparty Positions | Warning | This warning occurs when importing a Triparty position with a null or negative notional value. |   
393 | The supplied market value is invalid. | Triparty Positions | Warning | This warning occurs when importing a Triparty position with a null or negative market value. |   
394 | The supplied FX Rate is invalid. | Triparty Positions | Warning | This warning occurs when importing a Triparty position with a negative or invalid FX Rate. |   
395 | The supplied price is invalid. | Triparty Positions | Warning | This warning occurs when importing a Triparty position with a negative or invalid Price. |   
396 | The margin type is not applicable to the agreement. | Triparty Positions | Exception | This exception occurs when importing a Triparty position with a margin type of 'Additional'. |   
397 | Duplicated Triparty Position supplied. | Triparty Positions | Exception | This exception will occur when more than one Triparty position has the same Agreement, Custodian, Instrument, Collateral Position Type and Collateral Margin Type. |   
398 | The supplied valuation percentage is invalid. | Triparty Positions | Warning | This warning will occur when importing a Triparty position and the Valuation Percentage is a negative or the amount specified is too large. |   
399 | Due to party cannot be null when exposure is supplied. | IM/IA Exposures | Exception | This exception will occur when a value has been defined for IM Exposure but no value has been defined for the IM Exposure Due To. |   
400 | Due to party cannot be null when exposure is supplied. | IM/IA Exposures | Exception | This exception will occur when a value has been defined for IA Exposure but no value has been defined for the IA Exposure Due To. |   
401 | Valuation Frequency value does not match system value. The value has been set to NULL. | Agreements | Warning | Valid Entries are:  
  
Daily  
  
Monthly  
  
Weekly  
  
Exact |   
402 | Valuation Frequency must have a valid month. | Agreements | Warning | This warning will occur when the value supplied is not a valid month. |   
403 | Valuation Frequency requires an Day Of Week value. | Agreements | Warning | This warning will occur when a weekly valuation frequency does not have a valid a day of the week. |   
404 | Valuation Frequency Day Of Week does not match system value. | Agreements | Warning | Valid entries are:  
  
Monday  
  
Tuesday  
  
Wednesday  
  
Thursday  
  
Friday |   
405 | City value supplied does not match any system defined value. The value has been set to NULL. | Agreements | Warning | Record |   
406 | Notification Time needs to be 24 hour format. | Agreements | Warning | This warning will occur when the value supplied is greater than 24:00. |   
407 | "Notification City is not used when there is no Notification Time". | Agreements | Warning | This warning will occur when a Notification City is specified with no Notification Time. |   
408 | "Notification Time requires either a city or agreement with a counterparty managing location". | Agreements | Warning | This warning will occur when a Notification Time is specified without a city or an agreement with a counterparty managing location. |   
409 | Valuation Frequency exact date value is not valid. | Agreement | Warning | The exact date specified on the import is not valid.  
  
**Possible resolution** : Ensure the date is valid and in a valid format. |   
410 | A duplicate exact date value was supplied for valuation frequency exact. | Agreement | Warning | Duplicate exact date specified on the import.  
  
One of the duplicate dates is loaded. | 
