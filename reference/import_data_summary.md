
# Data Import Summary

There are several ways in which data is processed as it is imported:

  * **Insert / Update**

Existing records are not deleted, but are updated (subject to validation) with values in the import file.

Additionally new records are created for new records on the file.

  * **Insert Only**

Records are inserted only. Existing records are not altered.

  * **Full Replace**

All records are deleted and replaced by records within the import file.

  * **Full Replace Based on Configuration File**

All records that exist in TLM® Collateral Management as recorded as being prior imported for that configuration are replaced by the contents of the file run against the same configuration.

Records that were loaded via a different configuration are not deleted until that configuration is run.

  * **Full Replace for Agreements based on Configuration File**

This functions identically to Full Replace based on configuration file with a key exception. Records for an Agreement are replaced with the contents of the file only when both of the following are true:

    1. The Agreement is included on the file. 
    2. The current record was previously imported with the same configuration. 

In short, if an Agreement record was imported on a prior day, but the latest import file does not include any records for that Agreement, the existing record is not deleted.




The following table summarizes the types of data import processes that exist in TLM Collateral

Data Import Type | Import Process Type  
---|---  
Agreement Cash Interest Terms | Insert / Update.  
Agreement Margins | Full replace based on configuration.  
Agreement Replication | Insert Only.  
Agreements | Insert / Update.  
Agreements Lock Up Only | Insert / Update.  
Aliases | Insert Only.  
Asset Pool Balance | Full replace based on configuration.  
Basic Eligibility | Insert / Update.  
Collateral Buckets | Insert / Update.  
Collateral Positions | Full replace based on configuration.  
Debt Instrument Prices | Insert / Update.  
Entities | Insert / Update.  
Entity Ratings | Full replace (including deletion) for Agency & Debt Structure supplied on file.  
Equity Instrument Prices | Insert / Update.  
Exposure Trade Overrides | Insert / Update.  
FX Rates | Insert / Update.  
Holidays | Insert / Update.  
Index Rates | Insert / Update.  
Instruments | Insert / Update.  
Instrument Prices | Insert / Update.  
Margin Terms | Insert / Update.  
Margin Calls | This import deletes all Margin Calls for Central clearing that are in the initial central clearing workflow queue. See [File Format for Margin Calls](<import_margin_calls.md>) for more details.  
Profit And Loss | Insert Only. That is successfully imported records are inserted. No existing records are deleted hen the import is run.  
OTC Trades | Full replace based on configuration.  
OTC Comparison Trades | Full replace based on configuration.  
Repo Trades | Full replace based on configuration.
