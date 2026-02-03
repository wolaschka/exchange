# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/import_holiday_calendars.html

# File Format for Holiday Date Information

Holiday Date information can be imported into Holiday Calendars. When importing holiday dates for a Calendar all previous records are not deleted when a new import is run. The import is done on an insert and update basis.

Holiday Dates are independent of the Import Configuration used to import them. That is, if two different Holiday Import configurations exist and contain the same holiday date information for the same Holiday Calendar then the later import will overwrite any matching holiday date information that was loaded in the earlier import - with Holiday description being updated to the value contained on the latter import.

Given that the imports are done on an insert/update basis, it is not possible to delete holiday calendar entries via imports. They must be done manually.

**Note:** This import is not designed to be used in conjunction with Agreements for the central clearing business line

The file format is as follows:

Display Name | Mapping File Column Name | Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---|---  
Name | HolidayCalendarName | Yes | Char (100) | UK Holidays | This is the name of the actual Holiday Calendar that the file contains holiday date information for.  
  
If missing from the file,   
  
[Validation Message 9](<validation_messages.md#9>) will occur.  
  
If on the file, but no correspondingly named Holiday calendar exists in the system, the above validation message together with [validation message 205](<validation_messages.md#205>) will occur.  
**Holidays Tab** * - Description | Description | No | Char (250) | Christmas Day | This is the holiday name for holiday date entry within the file. It is not compulsory, but is recommended that this be populated.  
**Holidays Tab** \- Date | HolidayDate | Yes | Date Time | 25/12/2008 | This is the actual date for the Holiday itself. It is a compulsory field - If missing from the file:  
  
[Validation Message 9](<validation_messages.md#9>)  
  
If a date is specified on the file but is invalid, the above validation message and  
  
[Validation Message 10](<validation_messages.md#10>) will occur.  
  
There can only be one holiday date entry per HolidayCalendar Name. If more than one entry per date for the same HolidayCalendarName is included then the system will regard them as duplicates. If this occurs,   
  
[Validation Message 207](<validation_messages.md#207>) will occur  
  
and none of the duplicate records will be imported.  
  
  * NB - Description referred to above is the description of the Holiday Date (e.g. Christmas Day) as seen on the Holidays Tab of the Holidays Calendar form, and not the description of the actual Holiday Calendar as seen on the General Tab.


