
# File Format for Asset Pool Balances

When importing Balances for Asset Pools all records for the relevant Import Configuration are deleted when a new import is run.

(Please see note 2 below to understand implications of this.)

Additionally, Asset Pool balances can only be imported with a specified Effective Date which must be included on the balance record.

What is important to recognize is that an Asset Pool balance is only valid within the system on the defined effective dates.

Moreover, Asset Pool Balances for a defined effective date are not carried forward to subsequent effective dates, and are regarded as having a zero balance on any non defined effective dates. ( See note 3 below for more details)

Display Name | Mapping File Column Name | Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---|---  
| AssetPoolName | Yes | Char (100) | Treasury Desk | This name of the Asset Pool to which the balance belongs.  
  
This must match an existing Asset Pool in the system otherwise [Validation message 336](<validation_messages.md#336>) and the row is not loaded.  
  
**Note:** Asset Pools are created externally in TLM® Collateral Manager web application.  
| EffectiveDate | Yes | Date  
  
Any short date format accepted in a common locale. For example, 10-May-2006, 10-Mai-2006, 10/22/06, 22/10/2006 | 02/06/2007 | This is the date on which the Asset Pool balance will be effective in the system.  
  
Asset pool balances are only taken into consideration in the system on their effective date.  
  
Unlike FX rate or price data, the values are not carried forward to dates subsequent to effective dates. See note below.  
  
Future Dates and past dates can be specified, and there is no limit to how far in the future or past they can be specified.  
| InstrumentIdentifier | Yes | Char (30) | 912828RV4 | The [Instrument](<instruments.md>) Identifier as supplied by the corresponding source system.  
  
This should be an identifier that corresponds to a  
  
CUSIP, ISIN, SEDOL or Internal instrument identifier within the system.  
  
If it does not, [Validation Message number 25](<validation_messages.md#25>) is thrown and the row is not loaded.  
  
If the collateral type is cash then the respective currency should be shown in this field  
| Notional | Yes | Money | 10000000 | The notional amount of the balance.  
  
This can be negative  
  
**Note:**

  1. Asset Pool Balances are unique per Asset Pool Name, Instrument Identifier, Effective Date combination. Where the import file contains multiple rows with identical values for these three fields, the notional amounts are summed, and [validation message 341](<validation_messages.md#341>) is raised

For example, importing the following four records, will create:

     * A balance of 400 of Instrument 912828RV4 for Asset Pool DemoPool for the effective date of 12 August 2013
     * A balance of 650 of Instrument 912828RV4 for Asset Pool DemoPool for the effective date of 13 August 2013
AssetPoolName | InstrumentIdentifier | Notional | Effective Date  
---|---|---|---  
DemoPool | 912828RV4 | 500 | 12 Aug 2013  
DemoPool | 912828RV4 | (200) | 12 Aug 2013  
DemoPool | 912828RV4 | 100 | 12 Aug 2013  
Demo Pool | 912828RV4 | 650 | 13 Aug 2013  
  
and will result in a warning message being thrown in the task status pane

  2. This import configuration is a full refresh. That is all records imported for the prior configuration are deleted when the new import is run. Given that entries can have multiple asset pools in a single import file, ensure that for each import that is run, all entries include the respective asset pools as all the previous data will replaced in entirety.

For example consider the following imports:

Import Run #1

AssetPoolName | InstrumentIdentifier | Notional | Effective Date  
---|---|---|---  
Pool1 | 912828RV4 | 500 | 12 Aug 2013  
Pool2 | 912828RV4 | 250 | 12 Aug 2013  
Pool3 | 912828RV4 | 700 | 12 Aug 2013  
  
This will result in Asset Pool 1, 2, 3 each having a positive balance (500,250,700 respectively) for instrument 912828RV4 for effective date 12 Aug 2013.

Consider the import is run again with an updated data file

Import Run #2

AssetPoolName | InstrumentIdentifier | Notional | Effective Date  
---|---|---|---  
Pool1 | 912828RV4 | 600 | 12 Aug 2013  
  
Asset Pool 1 will have a 600 positive balance for effective date 12 Aug 2013

The previous imported balance of 250 and 700 for Pool2 and Pool3 created in Run#1 will be deleted and replaced by the contents of Run#2

  3. Asset Pool Balances and Effective Dates. Asset Pool balances are only taken into consideration in the application on the effective date specified on the import records, and are not carried forward to subsequent effective dates. In effect, an asset pool balance "expires" at the end of its effective date.

Consider the below example file import:

AssetPoolName | InstrumentIdentifier | Notional | Effective Date  
---|---|---|---  
Pool1 | 912828RV4 | 600 | 14 Aug 2013  
  
Within the system, on the 14th August, (assuming no movements for this instrument/pool) Asset Pool "Pool 1" will have a balance of 600 of instrument 912828RV4On the 15 August (again assuming no movements) the balance for Pool 1 for this instrument will be zero.

Consider another example. The below file is imported.

AssetPoolName | InstrumentIdentifier | Notional | Effective Date  
---|---|---|---  
Pool1 | 912828RV4 | 600 | 14 Aug 2013  
Pool | 912828RV4 | 1000 | 16 Aug 2013  
  
Like the previous example, on 14th August the balance will be 600, and will reduce to zero on 15th August (again assuming no movements) However, on the 16th August, the balance will be 1000 (again assuming no movements or subsequent imports)

What is key to understand is that the system does not bring forward an asset pool balance from a previous effective date. Similarly, if asset pool balances for non consecutive effective dates are imported, a zero balance is applied for any dates that are not specified

It is therefore the expectation that asset pool balances are regularly imported.



