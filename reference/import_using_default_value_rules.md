
# How to Define Default Value Rules in a Mapping File

It is currently possible to define "Default Value Rules" in a mapping file in order to define how a value in an import file should be interpreted. This can be done in any import mapping file.

Below is an example for OTC Trades and Exposure Trade Overrides where the usage of Default value rules removes the need to supply the fields AdditionalMarginDueTo and LockUpMarginDueTo on the import file.

The entry for Additional Margin in the mapping file could be, for example:
    
    
    <mapping ColumnName="AdditionalMarginDueTo">
    
      < defaultValueRules>
    
        <if Column="AdditionalMargin" Operator="LessThan" Value="0" Then="Counterparty"/>
    
        <if Column="AdditionalMargin" Operator="GreaterThan" Value="0" Then="Principal"/>
    
      </defaultValueRules>
    
    </mapping>
    

In this above illustration, if the Additional Margin value supplied is less than 0 (that is a negative number) the system will update the Additional Margin Due To field to be "Counterparty" and if the value supplied is greater than 0 (that is a positive number) the field will be set to Principal.

The supported operators are:

  * LessThan

  * LessThanorEqual

  * GreaterThan

  * GreaterThanOrEqual

  * Equals




If defined as "Default Value Rules" but have also defined a "Default Value" the rules will take precedence.
