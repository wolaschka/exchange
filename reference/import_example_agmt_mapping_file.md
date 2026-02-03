
# Example of Agreement Mapping File with Extensions

Extension fields must be specifically defined as such in their associated mapping files.

This is done by using the term extension rather than mapping.

Additionally, the column name in the mapping file must correspond exactly to the Extension Name defined in the [Agreement Extension Reference Data Object](<reference_related_data.md#extensions>).

Below is an example Mapping file for Agreements, which contains the mapping entries for 4 Extensions.

For clarity these have been highlighted in blue.

**Note:** Bear in mind the following:

  * Extensions are differentiated by the XML line beginning <Extension Position = "xx..." rather than <mapping Position ="xx". These are highlighted in bold below. 
  * The name of the extension defined in the mapping file corresponds exactly to the ExtensionName as defined on Agreement Extension Reference Data (see below.)



**Example of Mapping File**
    
    
    <?xml version="1.0" encoding="utf-8" ?>
      <mappings>
          <mapping Position="1" ColumnName="AgreementName"/>
          <mapping Position="2" ColumnName="AgreementType"/>
          <mapping Position="3" ColumnName="Principal"/>
          <mapping Position="4" ColumnName="Counterparty"/>
          <mapping Position="5" ColumnName="PrincipalManagingLocation"/>
          <mapping Position="6" ColumnName="ValuationAgent"/>
          <mapping Position="7" ColumnName="AgreementCurrency"/>
          <mapping Position="8" ColumnName="SourceReference"/>
          <mapping Position="9" ColumnName="IncludesTradeDays"/>
          <mapping Position="10" ColumnName="ExcludesTradeDays"/>
          <mapping Position="11" ColumnName="CounterpartyCreditProvider"/>
          <mapping Position="12" ColumnName="CalculationType"/>
          <mapping Position="13" ColumnName="PrincipalCreditProvider"/>
          <mapping Position="14" ColumnName="LockUpCalculationType"/>
          <mapping Position="15" ColumnName="CollateralValuationQuote"/>
          <mapping Position="16" ColumnName="CollateralPriceSource"/>
          <mapping Position="17" ColumnName="HolidayCalendar" SubDelimiter="~"/>
          <mapping Position="18" ColumnName="IncludeAccrualInMarginCalc"/>
          <mapping Position="19" ColumnName="InterestPaymentPreference"/>
          <mapping Position="20" ColumnName="InterestPaymentCalendar"/>
          <mapping Position="21" ColumnName="InterestPaymentFrequency"/>
          <mapping Position="22" ColumnName="InterestPaymentExactDates" SubDelimiter="~"/>
          <mapping Position="23" ColumnName="InterestPaymentDayOfWeek"/>
          <mapping Position="24" ColumnName="InterestPaymentDayOfMonth"/>
          <mapping Position="25" ColumnName="InterestPaymentCalendarType"/>
          <mapping Position="26" ColumnName="InterestPaymentMonths" SubDelimiter="~"/>
          <mapping Position="27" ColumnName="InterestPaymentWeekOfMonth"/>
          <mapping Position="28" ColumnName="CanRehypothecate"/>
          <extension Position="31" ColumnName="OTCField1"/>
          <extension Position="32" ColumnName="OTCField2"/>
          <extension Position="33" ColumnName="OTCField3"/>
          <extension Position="34" ColumnName="OTCField4"/>
      </mappings>Agreement Extension Reference Data
    

Note how the ExtensionName field matches ColumnName in mapping file.

![example_agmt_ext_field_mapping.jpg](Images/example_agmt_ext_field_mapping.jpg)
