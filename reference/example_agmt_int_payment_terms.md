
# Example Imports for Agreement Interest Payment Terms

Interest Payment Terms can be imported via the Agreements import.

There are certain fields that need to be populated depending on the Interest Period End Date and frequency that is to be achieved.

Below are some examples to assist in how to configure and populate agreement imports.

## Exact Date Interest Period End Dates

If the exact date payment frequency needs to be loaded, then the following fields must be populated on the agreement file.

![ExactDate_Interest_Example_Config.jpg](Images/ExactDate_Interest_Example_Config.jpg)

The below example snippet of an agreement import file will result in Interest Payment frequency being set as Exact Dates for

25th October 2008

27th November 2008

12th December 2008

10th January 2009

![ExactDate_Interest_Example_Import.jpg](Images/ExactDate_Interest_Example_Import.jpg)

**Note:** It is worth noting that exact dates specified on an agreement import will overwrite any exact dates that are already stored on the agreement in the system.

## For Weekly Interest Period End Dates

The following fields must be populated on the import file:

![Weekly_Interest_Config_Example.jpg](Images/Weekly_Interest_Config_Example.jpg)

The below example snippet from an import would set the Interest Payment End Date frequency to be weekly on a Thursday:

![Weekly_Interest_Import_Example.jpg](Images/Weekly_Interest_Import_Example.jpg)

## For Period End Dates that are set on particular months, based on Calendar Dates.

The following fields must be populated on the import file

![Monthy_Calendar_Interest_Config_Example.jpg](Images/Monthy_Calendar_Interest_Config_Example.jpg)

The below example snippet from an import would set the Interest Payment End Date frequency to be the 3rd Calendar day on January and June.

![Monthy_Calendar_Interest_Import_Example.jpg](Images/Monthy_Calendar_Interest_Import_Example.jpg)

If the frequency were to be every month, rather than including all months in the InterestPaymentMonths field, the value of ALL could be used:

![Monthy_all_Calendar_Interest_Import_Example.jpg](Images/Monthy_all_Calendar_Interest_Import_Example.jpg)

## Monthly Interest Period End dates, based on Business Days

This is very similar to calendar days, except with Business Day defined in InterestPaymentCalendarType field.

In the below example, the period end date is set as the last business day of each month.

![Monthy_all_Business_Interest_Import_Example.jpg](Images/Monthy_all_Business_Interest_Import_Example.jpg)

## Monthly Interest Period End dates, based on a specific day of a week in the month.

To populate a specific day of the week in a month, the following fields must be populated:

![Monthy_Relative_Config_Example.jpg](Images/Monthy_Relative_Config_Example.jpg)

Example snippet for populating agreement for last Thursday of each month to be period end date:

![Monthy_Relative_Import_Example.jpg](Images/Monthy_Relative_Import_Example.jpg)

**Note:** The system as a default will create new agreements with the following interest period end frequencies:-Monthly, Last calendar day of month, every month.

When creating an agreement via an import, if the fields/field contents was incorrectly entered for interest payment terms, the system will create the agreement but use the system defaults.

Similarly, if an agreement exists in the system and the import file is updating it, if the Interest Payment terms on the import are invalid then the existing terms on the agreement will not be updated.
