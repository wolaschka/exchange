# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/import_contact_assignments.html

# File Format for Contact Assignment

Contact Assignment import is used to assign an already existing counterparty contact to an Agreement. The contact must be associated to the Counterparty in order to be assigned to an Agreement and the Agreement must have that specific Counterparty.

Contact Assignment import is done on an insert basis and all previous records are neither updated nor deleted via the import.

The file format is as follows:

Display Name | Mapping File Column Name | Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---|---  
Agreement Name | AgreementName | Yes | Char (255) | ABC Bank Csa | The name of the existing collateral agreement.  
  
If the agreement does not exist in the system. [Validation message number 369](<validation_messages.md#369>)  
  
Duplicate rows found in import data. [Validation message number 383](<validation_messages.md#383>)  
Contact Name | ContactName | Yes | Char(50) | John Doe | The name of the contact associated to the counterparty of Agreement.  
  
When importing a contact not associated with a counterparty of the agreement. [Validation message number 384](<validation_messages.md#384>)  
  
When importing a contact that is currently locked. [Validation message number 385](<validation_messages.md#385>)  
  
When importing a contact that is already assigned to an agreement. [Validation message number 386](<validation_messages.md#386>)
