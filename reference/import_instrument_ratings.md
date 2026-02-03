# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/import_instrument_ratings.html

# File Format for Instrument Ratings

When importing Instrument Ratings no records are deleted when a new import is run.

The import is done on an insert and update basis by Agency and Debt Structure for that Rating per Instrument.

Instruments can be subject to the approvals process (if defined so in the system level configuration file.) If that is the case, no changes to the Instrument Ratings can be made manually or via an import. If an Instrument Ratings import is run while an existing instrument with pending changes is awaiting approval, a [validation message 364](<validation_messages.md#364>) is raised.

If Approvals for Instruments is enabled, and a Newly created Instrument is awaiting approval, any instrument rating imported for that instrument will not find it, as the instrument does not yet appear as approved in the database.

**Note:** Only one rating per debt structure and rating agency per instrument can be loaded, otherwise [validation message 58](<validation_messages.md#58>) will be raised.

Display Name | Mapping File Column Name | Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---|---  
| InstrumentIdentifier | Yes | Char (255) | US9128274V18 | The Instrument Identifier for the instrument.  
  
This can be any of the four Identifier types  
  
ISIN  
  
CUSIP  
  
SEDOL  
  
Internal  
  
for the Instrument but must match an identifier, otherwise [validation message 25](<validation_messages.md#25>) will be raised and the record will not import.  
  
**Note:** Should ratings be specified for an Instrument on which ratings are not applicable - such as a letter of credit, then [validation message 283](<validation_messages.md#283>) would be raised and the record will not be loaded.  
Agency | RatingAgencyName | Yes | Char (255) | S & P | The Rating Agency that has supplied the Rating for the Instrument.  
  
This must match an entry in Rating Agency in the system's reference data, otherwise [validation message 55](<validation_messages.md#55>) will be raised.  
Debt Structure | DebtStructureName | Yes | Char (50) | Long Term | The Debt Structure that the Instrument Rating is for.  
  
This must be one of the following values:  
  
Long Term  
  
Short Term  
  
Financial Strength  
  
Internal  
  
otherwise [validation message 56](<validation_messages.md#56>) will be raised and the record will not import.  
Rating | Rating | Yes | Char (50) | AA | The current rating for the Instrument for the Debt Structure as defined by the Rating Agency.  
  
This must match an existing Rating for the Agency and Debt Structure in the system, otherwise [validation message 57](<validation_messages.md#57>) will be raised and the record will not import
