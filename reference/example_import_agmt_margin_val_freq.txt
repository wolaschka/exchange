# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/example_import_agmt_margin_val_freq.html

# Example Imports for Agreement Margin Valuation Frequency

Margin Valuation Frequency can be imported via the Agreements import.

There are certain fields that need to be populated depending on the frequency that is to be achieved.

Below are some examples to assist in how to configure and populate agreement imports.

## Exact Date Margin Valuation Frequency

If loading the exact date valuation frequency, then the following fields must be populated on the agreement file.

![ExactDate_ValuationFreq_Example_Config.jpg](Images/ExactDate_ValuationFreq_Example_Config.jpg)

The below example snippet of an agreement import file will result in Margin Valuation Frequency being set as Exact Dates for

25th October 2019

27th November 2019

12th December 2019

10th January 2020

![ExactDate_ValuationFreq_Example_Import.jpg](Images/ExactDate_ValuationFreq_Example_Import.jpg)

**Note:** It is worth noting that exact dates specified on an agreement import will overwrite any exact dates that are already stored on the agreement in the system.

## For Weekly Margin Valuation Frequency

The following fields must be populated on the import file:

![Weekly_Margin_Valuation_Config_Example.jpg](Images/Weekly_Margin_Valuation_Config_Example.jpg)

The below example snippet from an import would set the Margin Valuation frequency to be weekly on a Thursday:

![Weekly_Margin_Valuation_Import_Example.jpg](Images/Weekly_Margin_Valuation_Import_Example.jpg)

## For Margin Valuation Frequency that is set on particular months, based on Calendar Dates.

The following fields must be populated on the import file

![Monthy_Calendar_Margin_ValuationFreq_Config_Example.jpg](Images/Monthy_Calendar_Margin_ValuationFreq_Config_Example.jpg)

The below example snippet from an import would set the Margin Valuation frequency to be the 3rd Calendar day on January and June.

![Monthy_Calendar_Interest_Import_Example.jpg](Images/Monthy_Calendar_Interest_Import_Example.jpg)

If the frequency were to be every month, rather than including all months in the ValuationFreqMonths field, the value of ALL could be used:

![Monthy_all_Calendar_Margin_ValuationFreq_Import_Example.jpg](Images/Monthy_all_Calendar_Margin_ValuationFreq_Import_Example.jpg)

## Monthly Margin Valuation Frequency based on Business Days

This is very similar to calendar days, except with Business Day defined in ValuationFreqCalendarType field.

In the below example, the period end date is set as the last business day of each month.

![Monthy_all_Business_Margin_ValuationFreq_Import_Example.jpg](Images/Monthy_all_Business_Margin_ValuationFreq_Import_Example.jpg)

## Monthly Margin Valuation Frequency based on a specific day of a week in the month.

To populate a specific day of the week in a month, the following fields must be populated:

![Monthy_Relative_Margin_ValuationFreq_Config_Example.jpg](Images/Monthy_Relative_Margin_ValuationFreq_Config_Example.jpg)

Example snippet for populating agreement for last Thursday of each month for the Valuation Frequency:

![Monthy_Relative_Import_Example.jpg](Images/Monthy_Relative_Import_Example.jpg)

**Note:** The system as a default will create new agreements with the Margin Valuation Frequency set to Daily.

When creating an agreement via an import, if the fields/field contents for valuation frequency were incorrectly specified, the system will create the agreement but use the system defaults.

Similarly, if an agreement exists in the system and the import file is updating it, if the Margin Valuation Frequency terms on the import are invalid then the existing terms on the agreement will not be updated.
