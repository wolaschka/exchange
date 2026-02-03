# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/import_im_ia_exposures.html

# File Format for IM IA Exposures

IM IA Exposure values can be imported into the Agreements for communication and verification purposes. These values are stored on the database for informational purposes and can be viewed in the workflow. These values do not impact the overall margin calculation.

When importing IM IA Exposures into an agreement, all previous records are not deleted when a new import is run. Only the agreements that are in the import file will be updated. In order to remove the data, the agreement must exist within the file and have no values.

When a margin calc has been run, any imported IA and IM figures will be displayed on the margin call. The following fields have been added to the margin call workflow grids to view the IA and IM figures. The timestamp is for when IM/IA was last imported on the agreement, when the margin calc was run. 

  * Independent Amount 
  * Independent Amount Due To 
  * Reg Initial Margin 
  * Reg Initial Margin Due To 
  * IM/IA Timestamp UTC 

Display Name | Mapping File Column Name | Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---|---  
Agreement | Agreement | Yes | Char(255) | ABC Bank | Agreement must be unique and must match Agreement Name or Agreement Alias Group. [Validation Message 397](<validation_messages.md#397>)  
  
The field must be supplied, otherwise [Validation Message 9](<validation_messages.md#9>)  
  
The field must be supplied, otherwise [Validation Message 383](<validation_messages.md#383>).  
InitialMarginExposure | InitialMarginExposure | No | Decimal (21,6) | 500000 | The field refers to the Initial Margin Exposure amount  
  
[Validation message 29](<validation_messages.md#29>).  
InitialMarginExposureDueTo | InitialMarginExposureDueTo | No - see description | Char(20) | Principal  
  
Counterparty | The party to which the agreement level Initial Margin Exposure is due. If an InitialMarginExposure amount is provided, the InitialMarginExposureDueTo is required.  
  
Due To needs to be a valid value [Validation message 100](<validation_messages.md#100>)  
  
When this field is mapped with no value for InitialMarginExposure then a warning will occur and the field will be set to Null. [Validation message 379](<validation_messages.md#379>)  
  
The field must be supplied when InitialMarginExposure has a value else an exception occurs. [Validation message 399](<validation_messages.md#399>).  
IndependentAmountExposure | IndependentAmountExposure | No | Decimal (21,6) | 500000 | The field refers to the Initial Margin Exposure amount  
  
[Validation message 29](<validation_messages.md#29>).  
IndependentAmountExposureDueTo | IndependentAmountExposureDueTo | No - see description | Char(20) | Principal  
  
Counterparty | The party to which the agreement level Independent Amount Exposure is due. If an IndependentAmountExposure amount is provided, the IndependentAmountExposureDueTo is required.  
  
Due To needs to be a valid value [Validation message 100](<validation_messages.md#100>)  
  
When this field is mapped with no value for IndependentAmountExposure then a warning will occurand the field will be set to Null. [Validation message 379](<validation_messages.md#379>)  
  
The field must be supplied when IndependentAmountExposure has a value else an exception occurs. [Validation message 400](<validation_messages.md#400>).  
  
**Note:**

  * The IM/IA Timestamp UTC on the margin call grid will show the timestamp of when the IM and IA fields were imported.
  * The IM and IA fields are visible from the margin call workflow grid and will not be in the lower level detail pane.
  * The IM and IA fields can be extracted to the reporting database.
  * The IM and IA fields will not be on the emailed margin call notices, margin call notices viewed in the application and margin call details in the lower level details pane.
  * The IM and IA fields will be included in the published margin call sent message that is then transformed and sent to Acadia by the Margin Call Adapter for creating margin calls, expected calls and notifications.


