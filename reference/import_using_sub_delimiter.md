# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/import_using_sub_delimiter.html

# How to Import Data Using a Sub Delimiter

In certain cases it is possible to import multiple values into one field using a sub delimiter.

This can currently be done for the field [CMO ABS Asset Class](<import_instruments.md#abscmo>) and [Stock Index](<import_instruments.md#stockindex>) for Instruments, [Holiday Calendars](<import_agreements.md#holiday>) for Agreements and [Entity Groups](<import_entities.md#entitygroups>) for Entities.

In this case it is necessary to include on the mapping file an additional reference to identify the field which uses the sub delimiter and what that sub delimiter is. The line would read as shown in the example below:
    
    
    <mapping Position="29" ColumnName="CMOABSAssetClass" SubDelimiter="|" />
    

an example for HolidayCalendar field on Agreements file where the sub delimiter has been defined as tilda would be:
    
    
    <mapping Position="17" ColumnName=" HolidayCalendar" SubDelimiter="~" />
    

an example for EntityGroups field on Entities file where the sub delimiter has been defined as a semicolon would be: 
    
    
    <mapping Position="14" ColumnName="EntityGroups" SubDelimiter=";"/>
    

It is essential that the sub delimiter is different to the main delimiter used on the Import Configuration.

If the mapping file contains a sub delimiter which is the same as the main delimiter for the Import Configuration the import will not work. The Import Status will display the message "The sub delimiter cannot be the same as the delimiter for the import configuration." This is classed as an Exception and no records will be imported.

If any of the values included within the field do not exist in the database then they will all be set to NULL and the Import Status will display the message " ... value supplied does not match any system defined values. The value has been set to NULL." This is classed as a Warning. The corresponding Value for this message will display just the value(s) which does not exist in the database.

**Note:** If numerous entries are being imported and using a sub-delimiter, and one or more of the entries in the import file does not exist as reference data item within the system, none of the entries will be imported and all exiting entries in the system will be erased.

If the field is included in the mapping file, then any entries that exist within the application will be replaced in entirety by the entries contained on the Import File.

When a Sub Delimiter is selected to distinguish between each value, the single character delimiter is changed internally to an 8 character delimiter. These 8 characters between each item count toward the maximum length of the field.
