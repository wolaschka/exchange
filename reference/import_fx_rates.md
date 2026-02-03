# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/import_fx_rates.html

# File Format for FX Rates

FX Rates are unique per currency and date and are independent of the Import Configuration used to import them. That is, if two different FX Rate Import Configurations exist and contain rates for the same currencies then subsequent imports overwrite the corresponding rate for the same currency and date.

Display Name | Mapping File Column Name | Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---|---  
Currency or Alias | FXRateName | Yes | Char (255) | EUR | This field should contain either the Currency name as defined in TLM® Collateral (generally the ISO code) or the Alias (an alternative name for the currency to reflect how it is called in another system from which data is going to be received).  
  
[Validation message number 95](<validation_messages.md#95>)  
Source | FXRateSource | Yes | Char (250) | Bloomberg | The FX Rate Source that the FX Rate is for.  
  
This must match a valid entry in the database otherwise validation message 284 will be raised and the record will not be loaded.  
Current® Rate | Rate | Yes | Decimal | 1.3136 | This is the current rate for the appropriate Currency for the rate date. The details of the rate need to be defined against the relevant currency.  
  
[Validation message number 96](<validation_messages.md#96>)  
  
[Validation message number 97](<validation_messages.md#97>)  
  
[Validation message number 98](<validation_messages.md#98>)  
Rate Date | RateDate | Yes | DateTime | 19/02/2007 | The date can either be contained in the file or set as a default value in the mapping file. See [How to Import Data Using a Mapping File](<mapping_file.md>).  
  
It is only possible to import one rate per FXRateName per RateDate. If the file contains duplicate records none of those duplicates will be imported. Validation message number 99.

**Note:** The FX rate for [system currency](<system_currency.md>) is stored in the system as 1, and any subsequent rates loaded for system currency are ignored.
