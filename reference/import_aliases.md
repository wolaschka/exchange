
# File Format for Aliases

There may be occasions when a large number of Aliases need to be defined in TLM® Collateral Management at one time. For example, if the system is receiving a trade feed from a new system. In order to speed up this process, the aliases can be imported into the application on a file.

When importing Aliases no records are deleted when a new import is run. The import is done on an insert only basis.

Aliases can currently only be removed by [deleting the Alias Group](<reference.md#deleting-reference-data>).

Display Name | Mapping File Column Name | Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---|---  
Name | AliasGroupName | Yes | Char (255) | Repo Trades | This is the [Alias Group](<reference_related_data.md#alias-groups>) to which the alias belongs and must match an existing Alias Group in the database.  
  
[Validation Message number 107](<validation_messages.md#107>).  
Alias | AliasName | Yes | Char (255) | ABC | The alias itself. Duplicate aliases are not allowed in the file. To be considered unique each record in the file must have a unique combination of AliasName, AliasGroup, and AliasType.  
  
[Validation message number 110](<validation_messages.md#110>).  
  
[Validation message number 111](<validation_messages.md#111>).  
| AliasReference | Yes | Char (255) | ABC Bank Ltd | This is the full name, as stored in the database, for the relevant alias being imported. This is linked to the AliasType.  
  
[Validation Message number 54](<validation_messages.md#54>).  
  
[Validation Message number 64](<validation_messages.md#64>).  
  
[Validation Message number 108](<validation_messages.md#108>).  
| AliasType | Yes | Char (255) | Agreement | This is the data type that the alias is in reference to. The available options are:  
  
Agreement  
  
Entity  
  
TradeType  
  
[Validation Message number 106](<validation_messages.md#106>).  
  
**Note:** If an Agreement is defined here, and that Agreement is [Locked for Approval](<agreements_approvals.md>), [validation message 263](<validation_messages.md#263>) will be raised, and the record for the corresponding agreement will **not be imported**.  
  
If we were to import the record defined in the table above we would be importing an Agreement alias from our Alias Group for Repo Trades. The alias being imported is ABC and this matches to the agreement ABC Bank Ltd.

**Note:** AliasName cannot be the same as the Alias Reference itself.

For example, if an agreement with a name of _ABC Agreement SA_ exists, the alias of _ABC Agreement SA_ cannot be loaded against the agreement. A [validation message 260](<validation_messages.md#260>) will occur and the record will not be imported.

[Validation Message 259](<validation_messages.md#259>) will be raised should this scenario occur with Entity Aliases, and [validation message 261](<validation_messages.md#261>) for scenarios with Trade Type aliases.
