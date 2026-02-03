
# How to Import Data Using a Mapping File

The mapping file must be an XML file in a predefined format which identifies the column on the file to be imported (Position) and maps this to the destination column in the relevant table in the database (ColumnName).

The ColumnName must be the name expected by the database - ColumnNames are case sensitive also. If the mapping file contains an incorrect ColumnName the import will not work. The [Import Status](<task_status.md#imports>) will display the message "An unknown error occurred while processing the file". This is classed as an Exception and no records will be imported. The corresponding Value for this message will read "The column identified in the mapping file (column name) does not exist on the import table".

Note: If there is data which will not be received on the import file but will be maintained manually in the application, the corresponding ColumnName should not be included in the mapping file. In this case any data entered manually will not be removed during the import. The mapping file must be saved to a location that the server running the import process has access to and is defined in the import configuration.

It is also possible to include a default value for a column on a mapping file. For example, if the Instruments file, which contains credit ratings for those instruments and the rating is always a long term rating, the mapping file can be used to indicate which coolumn the debt structure value is in. The entry would be, for example:

Alternatively, the debt structure value may not be included and use of the default the value can be set to Long Term. The entry in that case would be:

Currently, only the columns which are not mapped to a "Position" in the file can use a specific default value. During imports the system will validate that either a Position or a DefaultValue are specified but not both.

If the value is a date it can currently be updated in three ways:

Include the actual date on the mapping file (This would need to be updated daily). Default the date to "Today". For example, if the RateDate on the FX Rates is defaulted to the current business day, the following entry could be included in the mapping file:

Default the date to " PreviousBusinessDay". (Note, holiday calendars are currently not implemented for the sake of imports in TLM® Collateral Management so business days are considered to be any non-weekend day.) For example, if teh RateDate on an FX Rates file is default to the previous business day, the following entry could be included in the mapping file: 

Dates will be formatted using the Date Locale and Date Format on the corresponding Import Configuration. The date used will be that of application server - this means that the definition of Today and Previous Day come from the date on the application server, and not the client.

Mapping file Column Names for Management Information Collateral Positions

How to Define Default Value Rules in a Mapping File It is currently possible to define "Default Value Rules" in a mapping file in order to define how a value in an import file should be interpreted. This can be done in any import mapping file.
