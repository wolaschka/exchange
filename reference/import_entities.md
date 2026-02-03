# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/import_entities.html

# File Format for Entities

When importing Entities all previous records are not deleted when a new import is run. The import is done on an insert and update basis.

When the import is run, the system checks to see whether the entity already exists. This check is done using the Source Reference and the Entity Name as follows:

  1. If a Source Reference is supplied and matches an existing source reference in TLM® Collateral Management, then the import updates the entity (subject to other validation criteria). If the Entity Name supplied for the source reference is different to the name stored in TLM® Collateral Management, the name in TLM® Collateral Management will be updated, as long as there is not already an entity existing with that name. If there is an existing entity with the same name the record will not be updated and an exception will be generated. [Validation message number 120](<validation_messages.md#120>). 
  2. If the Source Reference supplied does not match an existing source reference in TLM Collateral Management TLM® Collateral Management then the import will add a new entity, as long as the entity name does not already exist in TLM® Collateral Management. If there is an existing entity with the same name the record will not be updated and an exception will be generated. [Validation message number 122](<validation_messages.md#122>). 
  3. If the Source Reference is not supplied or this column has not been mapped, then the update or insert will be done simply based on the Entity Name. If the name already exists in TLM® Collateral Management, the entity will be updated with the record on the file. If the name does not exist in TLM® Collateral Management then the entity will be inserted. 
  4. Entities can be subject to approval (if defined so in the system level configuration file.) If that is the case, no changes to an existing Entity with changes pending approval can be made manually or via an import. If an import is run while an Entity is pending approval, a [validation message 353](<validation_messages.md#353>) is raised. 
  5. If Approvals for Entities is enabled, and a newly created Entity is awaiting approval, then the import will occur, as the pending create does not yet exist in the database.



An entity must have at least one Type. The entity Type is defined on the entities file by using a combination of six fields:

  1. **Party** \- specify whether the entity is a Principal or Counterparty. If it is neither (for example, it is just a custodian) then this field can be left blank.
  2. **IsCustodian** \- this defines whether the entity is a Custodian and can be used in combination with IsIssuer and Party.
  3. **IsIssuer** \- this defines whether the entity is an Issuer and can be used in combination with IsCustodian and Party.
  4. **IsCentralCounterparty** \- identifies whether the Entity is a central clearing party (CCP).
  5. **IsClearingMember** \- identifies whether the entity is a member of a central clearing agency.
  6. **IsClearingClient** \- identifies an entity as a clearing client.



Note the following:

  1. If there is no type defined for the Entity (that is none of the above six fields are positively defined), then [Validation Message 67](<validation_messages.md#67>) will be raised as an exception.
  2. An entity can have several types.



**Some considerations on Parent Entity Name**

Parent Entity Name is an optional field. If it is contained on the file then it must match certain criteria (namely, the Parent specified must exist and must not create a circular reference). Furthermore if Parent Entity Name is defined in the mapping file, but not included in the data file, the existing Parent Entity value will be removed.

Display Name | Mapping File Column Name | Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---|---  
Custodian ID | CustodianIdentifier | No (unless IsCustodian = True) | Char (250) | Clear | This is an SSI element for Custodian Entity types.  
  
The field is mandatory only if Entity Type is defined as Custodian.  
  
If the Entity Type is Custodian, and the field is not supplied, then [validation message 9](<validation_messages.md#9>) will be raised and the record will not be imported.  
Domicile | Domicile | No | Char(100) | Germany | This is the legal residence of the entity and must exist in the countries table in the database.  
  
[Validation message number 65](<validation_messages.md#65>)  
Group | EntityGroups | No | Char (1500) | US Treasury Group | This is the Entity Group to which the entity is associated and must exist in the database.  
  
[Validation message number 368](<validation_messages.md#368>)  
  
If importing more than one Entity Group on an entity, a sub delimiter will be needed in the mapping file.  
Name | EntityName | Yes | Char (255) | ABC Bank | The name of the entity that is reflected in the system.  
  
Entity names must be unique.  
  
[Validation message number 86](<validation_messages.md#86>)  
  
Entity names cannot be the same as an existing entity alias.  
  
[Validation message number 142](<validation_messages.md#142>)  
  
**Note:** If an Entity is locked for approval, then [Validation Message 353](<validation_messages.md#353>) is thrown  
Extension Label Name | < ExtensionName >  
  
Note if values are to be loaded into extensions, then the mapping file must include the ExtensionName exactly as it has been defined in the Entity Extension Reference Data Object.  
  
Additionally, the mapping file must explicitly define that the field is an extension.  
  
See [Example of Agreement Mapping File with Extensions](<import_example_agmt_mapping_file.md>) for example of this.  
  
Although example is for an Agreement Import, the concept and format are identical for Entities. | No | Extension Values can only be one of the following 4 data types.  
  
**AlphaNumeric**  
  
**Numeric**  
  
**Date**  
  
**Boolean**  
  
Y, Yes, 1, True, T  
  
F, No, 0, False, F  
  
**List** |  | Although extensions are not mandatory, there are some specific rules:  
  
1\. The ExtensionName specified in the Import File must be identical to the Extension Name on the Entity Extension Reference Data object.  
  
Additionally, the mapping file must state that the field is an Extension.  
  
(See Example of Agreement Mapping File with Extensions for examples)  
  
If not, then the [validation message 8](<validation_messages.md#8>) will be raised, and the file will not load.  
  
2\. If the Extension is defined as a Numeric Data Type, any values on the import file for this extension must also be numeric, otherwise [validation message 11](<validation_messages.md#11>) will be raised, and the value will be set to NULL.  
  
3\. If the Extension is defined as an AlphaNumeric and the length of the value on the Import file does not fall within the lower and upper limits, then [validation message 232](<validation_messages.md#232>) will be raised, and the value will be not be loaded.  
  
4\. If the Extension is defined as Numeric, the values on the import file must be within the minimum and maximum numbers as defined on the reference data object. If not, then [validation message 233](<validation_messages.md#233>) will be raised and the value will not be loaded.  
  
5\. If the Extension field is defined as a Boolean, the values on the import file must be one of the following:  
  
(Yes,Y, 1, True, T, No, N, 0, False, F) otherwise [validation message 19](<validation_messages.md#19>) will be raised, and the value will not be loaded.  
  
6\. If the extension field is defined as a Date, then the values on the import file must be in a recognized date format, otherwise [validation message 10](<validation_messages.md#10>) is raised, and the value ignored.  
  
7\. If the extension field is defined as a List, then the values on the import must match the defined values in the system. Otherwise [validation message 365](<validation_messages.md#365>) is raised and the value is set to Null.  
  
**Note:** When importing extension values, all existing extension values stored for the entity are deleted, and then replaced with those (successfully validated) values specified on the import file. Care should therefore be undertaken to ensure that the import file contains values for all extensions.  
Industry Sector | IndustrySector | No | Char (100) | Financial | This is Industry Sector to which the entity belongs and must exist in the database.  
  
[Validation message number 39](<validation_messages.md#39>)  
Type | IsCentralCounterparty | No | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether the entity is a central clearing counterparty.   
  
[Validation Message 303](<validation_messages.md#303>) is raised if the import seeks to alter an existing utilized Central Counterparty no longer a Central Counterparty. If raised, the record is not imported.  
Type | IsClearingMember | No | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates whether the Entity acts as a Clearing Member on behalf of clients.  
  
Clearing Members can also self clear, that is clear trades on their own behalf.  
  
[Validation message 304](<validation_messages.md#304>) is raised if the import seeks to alter an existing utilized Clearing Member no longer a Clearing Member.  
  
If raised, the record is not imported.  
Type | IsClearingClient | No | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Indicates those entities which are provided services by Clearing Members.  
  
[Validation message 305](<validation_messages.md#305>) is raised if the import seeks to alter an existing utilized Clearing Client no longer a Clearing Client.  
  
If raised, the record is not imported.  
Type | IsCreditSupportProvider | No | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Specify whether the entity should have the Type Credit Support Provider.  
  
[Validation message number 140](<validation_messages.md#140>)  
Type | IsCustodian | No | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Specify whether the entity should have the Type Custodian.  
Type | IsIssuer | Yes | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | Specify whether the entity should have theType Issuer.  
  
If the entity is already being used as an Issuer within the application (for example, the Issuer of an Instrument, as an Issuer in a collateral bucket or in a concentration rule), then the import cannot change the status so that the entity is no longer an Issuer.  
  
[Validation message number 116](<validation_messages.md#116>).  
Legal Name | LegalName | No | Char (500) | ABC Bank Limited | This can be used to load the full legal name of the entity as this could be different to the name that will be used as the EntityName.  
Monitor Short Positions | MonitorShortPositions | No (but if this field is in the mapping file then a value of N, No, F, False or 0) must be set if the Party is not set to a value of Principal or Both. | Bit | Any of the following values can be loaded: (case insensitive)  
  
Y  
  
N  
  
T  
  
F  
  
Yes  
  
No  
  
True  
  
False  
  
1  
  
0 | This field can be defined when types is defined as Principal (or both) and determines whether the Principal will be selectable to be shown in the Inventory Management Short Positions screen.  
  
When set as false, the Principal will be excluded from being selected in the short positions screen. In essence, short positions for the Principal will not be shown.  
  
If short positions need to be displayed for the Principal, ensure it is set as on.  
  
By default when a Principal Entity is first inserted by the import, and the field is not defined, the value will default to True.  
  
When an existing Principal is being updated by an import, the value on the file is applied.(subject to Validation)  
  
This field should be populated only when type is set as Principal or Both. If set for other types then [validation message 339](<validation_messages.md#339>) is raised.  
Organization Type | OrganizationType | No | Char (100) | HedgeFund | The Organization Type for the Entity.  
  
Any Value specified on the file for this field must already exist in the database.  
  
[Validation Message number 185](<validation_messages.md#185>)  
Type | Party | No (unless the record on the file is for a Principal or Counterparty entity) | Char (20) | Counterparty | This defines whether the entity is a Counterparty or a Principal. The valid options are:  
  
Both  
  
Counterparty  
  
Principal  
  
If the entity is neither a Counterparty or principal this field should be left blank.  
  
The "Party" cannot be changed if the entity is already being used in a collateral agreement as that type.  
  
[Validation message number 115](<validation_messages.md#115>).  
Parent | ParentEntityName | No | Char (255) | Parent | This is the name of the Entity's Parent Entity.  
  
Although not compulsory, if specified it must satisfy two conditions:  
  
Parent Entity Name must exist in the database or on the file. If no match is found, validation message 229 will be raised, and the Parent Entity field will be blank.  
  
The Parent Entity specified cannot be lower down in the parent/child hierarchy - i.e. a circular reference cannot be created. If this is the case [validation message 230](<validation_messages.md#230>)  
  
will be raised and the field will be blank.  
Source Reference  
  
(only displayed on read-only form) | ParentSourceReference | No | Char (255) | 23666 | The Parent Source Reference is the unique identifier for the Entity's Parent.  
  
If quoted it must match an existing Entity's Source Reference. If it doesn't match, the Parent Entity will be blank.  
Source Reference  
  
(only displayed on read-only form) | SourceReference | No | Char (255) | 985365 | The Source Reference is the unique identifier for the entity in the system from which the entity data will be received.  
  
If multiple entities are supplied on the file with the same source reference none of them will be imported.  
  
[Validation message number 120](<validation_messages.md#120>).
