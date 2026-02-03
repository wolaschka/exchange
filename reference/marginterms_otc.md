# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/marginterms_otc.html

# OTC Margin Terms

## Margin Terms

The Margin Terms section for an [OTC Agreement](<agreements_define.md#otc>) is divided into two sides:

  * **Principal** \- These are the terms which are used to determine the collateral that the Principal is required to post.
  * **Counterparty** \- These are the terms which are used to determine the collateral that the Counterparty is required to post.

Field | Description  
---|---  
Currency | The Currency for Margin Parameters (Threshold; MTA; Rounding Amount;) for the relevant party under the agreement. This will default to Agreement Currency which is defined on the [General Tab](<agreements_general.md>) but can be defined in any currency.  
  
If defined in a currency other than Agreement Currency, the margin parameters will be converted into agreement currency using the latest [FX rates](<instruments_debt.md#prices>). The following rules are applied:  
  
\- The margin parameters are converted to agreement currency equivalents prior to the Margin Calculation.  
\- Any decimal places that exist after the conversion are ignored, e.g. 1,000,025.256 is treated as 1,000,025 in the Margin Calculation.  
  
The currency selected here applies to the following margin parameters:  
**Margin Parameter** \- Fixed Term or Ratings Related  
**Threshold** \- Fixed and Ratings Based  
**Minimum Transfer Amount** \- Fixed and Ratings Based  
**Rounding Amount** \- Fixed and Ratings Based  
**Additional Margin ** - Ratings Based Only  
** LockUp Margin**-Ratings Based Only  
  
** Note:** If the value defined here is Agreement Currency, any changes that are made to the Agreement Ccy field on the general tab will automatically apply to the Margin Terms.  
  
If Margin Terms are defined in a specific currency, then they will remain in that currency, even if the Agreement Ccy is the same, and then subsequently changed.  
  
In short, margin parameter currency is only automatically linked to [Agreement Ccy](<agreements_general.md>) when it is set with a value of Agreement Currency.  
Threshold | Define the Method and Amount, if any, which should be used as the Threshold in the margin calculation for the relevant party under this agreement.  
  
The method selected governs how the number entered in the adjacent numeric field is treated. There are four choices selectable from the drop-down.  
  
| **Threshold Method**| **Description**|  Flat| This is the default value. If selected, the number entered into the corresponding numeric field is treated as an absolute amount, (converted if necessary) in the specified currency. When Flat as a method is selected, the number entered must be positive and have no decimal places. The default is for zero.  
---|---  
Percent Notional 1| If selected the number entered into the corresponding numeric field is treated as a percentage and used to calculate the Threshold based on the Notional 1 Amount of the Exposure trades assigned to the Agreement.  
  
Specifically, the calculation is as follows:  
1\. Convert the Notional 1 amount of each exposure trade into an absolute amount. If Notional 1 amount is missing for an exposure trade it is assumed to be zero.  
2\. Convert each absolute amount from step 1) into the defined Margin Terms Currency  
3\. Sum the absolute amounts from step 2).  
4\. Calculate the percentage of absolute amounts from step 3) using the amount defined in the corresponding numeric field adjacent to method.  
  
The calculation is (Sum(ABS[Notional 1 in Margin Term Ccy]))x([Defined Value]/100)  
  
5\. The calculated amount from step 4) is rounded down to zero decimals and are used as the Threshold in the Margin calculation  
6.The calculated amount is saved with the Margin Calculation, and reflected in the Margin Call Notice, Margin call Read only reports and grids.  
  
**Note:** When Percentage Notional 1 is selected, the number entered in the adjacent field is assumed to be a percentage, and must be entered as a positive number between 0 and 9999.999999  
Percent Notional 2| This method is identical to Percent Notional 1, with the key exception that when selected the number defined is used as a percentage to calculate the Threshold based on the Notional 2 amounts of Exposure Trades.  
Percent Exposure| If selected the number entered into the corresponding numeric field is treated as a percentage and used to calculate the Threshold based on the Netted exposure amount  
Specifically, the calculation for netted agreements is as follows:  
  
1\. Convert the Exposure Amounts for each Exposure Trade into Margin Terms Currency  
2.Net the exposure amounts from step 1).  
3\. Convert the exposure number from step 2. into an absolute number  
4.Calculate the percentage of step 3) using the number defined in the adjacent numeric field.  
  
The calculation is ABS (Sum[Exposure Amount in Margin Term Ccy])*([Defined Value]/100)  
  
5\. The calculated amount from step 4) is rounded down to zero decimals and are used as the Threshold in the Margin calculation.  
6\. The calculated amount is saved with the Margin Calculation, and reflected in the Margin Call Notice, Margin call Read only reports and grids.  
  
**Note:** When Percentage Exposure is selected, the number entered in the adjacent field is assumed to be a percentage, and must be entered as a positive number between 0 and 9999.999999.  
Next enter the amount to be used in conjunction with the Method defined above.  
  
This value of this field can be based on the current credit rating of the party or party's credit support provider - see How to Define Ratings Related Margin Terms on an OTC Agreement.  
Minimum Transfer Amount | Minimum Transfer Amount is applied to collateral movements under the agreement. There are options to define the Delivery or/and the Return Minimum Transfer Amounts that will apply individually to the respective movements.  
  
The Method is the first field to define. There are four choices selectable from the drop-down. Please bear in mind that the method selected governs how the number entered in the adjacent numeric field is treated.| **Minimum Transfer Amount Method**| **Description**|  Flat| This is the default value. If selected, the number entered into the corresponding numeric field is treated as an absolute amount, (converted if necessary) in the specified currency. When Flat as a method is selected, the number entered must be positive and have no decimal places. The default is for zero.  
---|---  
Percent Notional 1| If selected the number entered into the corresponding numeric field is treated as a percentage and used to calculate the Minimum Transfer Amount based on the Notional 1 Amount of the Exposure trades assigned to the Agreement.  
  
Specifically, the calculation is as follows:  
  
1\. Convert the Notional 1 amount of each exposure trade into an absolute amount. If Notional 1 amount is missing for an exposure trade it is assumed to be zero.  
2\. Convert each absolute amount from step 1). into the defined Margin Terms Currency.  
3\. Sum the absolute amounts from step 2).  
4\. Calculate the percentage of absolute amounts from step 3. using the amount defined in the corresponding numeric field adjacent to method  
  
The calculation is (Sum(ABS[Notional 1 in Margin Term Ccy]))*([Defined Value]/100)  
  
5.The calculated amount from step 4) is rounded down to zero decimals and are used as the Minimum Transfer Amount in the Margin calculation.  
6\. The calculated amount is saved with the Margin Calculation, and reflected in the Margin Call Notice, Margin call Read only reports and grids.  
  
**Note:** When Percentage Notional 1 is selected, the number entered in the adjacent field is assumed to be a percentage, and must be entered as a positive number between 0 and 9999.999999  
Percent Notional 2| This method is identical to Percent Notional 1, with the key exception that when selected the number defined is used as a percentage to calculate the Minimum Transfer Amount based on the Notional 2 amounts of Exposure Trades.  
Percent Notional| If selected the number entered into the corresponding numeric field is treated as a percentage and used to calculate the Minimum Transfer Amount based on the Netted exposure amount.  
  
Specifically, the calculation for netted agreements is as follows:  
  
1\. Convert the Exposure Amounts for each Exposure Trade into Margin Terms Currency  
2\. Net the exposure amounts from step 1).  
3\. Convert the exposure number from step 2. into an absolute number  
4\. Calculate the percentage of step 3) using the number defined in the adjacent numeric field.  
  
The calculation is ABS (Sum[Exposure Amount in Margin Term Ccy])*([Defined Value]/100)  
  
5\. The calculated amount from step 4) is rounded down to zero decimals and are used as the Minimum Transfer Amount in the Margin calculation  
6.The calculated amount is saved with the Margin Calculation, and reflected in the Margin Call Notice, Margin call Read only reports and grids.  
  
**Note:** When Percentage Exposure is selected, the number entered in the adjacent field is assumed to be a percentage, and must be entered as a positive number between 0 and 9999.999999  
Next enter the amount to be used in conjunction with the Method defined above.  
Rounding Amount | The rounding increment, if any, which should be applied to collateral movements under this agreement. There are options to define the Delivery or/and the Return Rounding Amount that will apply individually to the respective movements. Again, like Threshold and Minimum Transfer Amount above, this is defined by selecting first a Method from the drop down and then entering an amount in the adjacent field.  
  
How the amount entered is treated depends on the method selected.| **Rounding Amount Method**| **Description**  
---|---  
Flat| This is the default value. If selected, the number entered into the corresponding numeric field is treated as an absolute amount, (converted if necessary) in the specified currency. When Flat as a method is selected, the number entered must be positive and have no decimal places. The default is for zero.  
Percent Notional 1| If selected the number entered into the corresponding numeric field is treated as a percentage and used to calculate the Rounding Amount based on the Notional 1 Amount of the Exposure trades assigned to the Agreement.  
  
Specifically, the calculation is as follows:  
  
1\. Convert the Notional 1 amount of each exposure trade into an absolute amount. If Notional 1 amount is missing for an exposure trade it is assumed to be zero.  
2\. Convert each absolute amount from step 1) into the defined Margin Terms Currency.  
3\. Sum the absolute amounts from step 2).   
4\. Calculate the percentage of absolute amounts from step 3. using the amount defined in the corresponding numeric field adjacent to method.  
  
The calculation is (Sum(ABS[Notional 1 in Margin Term Ccy]))*([Defined Value]/100)  
  
5.The calculated amount from step 4) is rounded down to zero decimals and are used as the Rounding Amount in the Margin calculation.  
6\. The calculated amount is saved with the Margin Calculation, and reflected in the Margin Call Notice, Margin call Read only reports and grids.  
  
**Note:** \- When Percentage Notional 1 is selected, the number entered in the adjacent field is assumed to be a percentage, and must be entered as a positive number between 0 and 9999.999999.  
Percent Notional 2| This method is identical to Percent Notional 1, with the key exception that when selected the number defined is used as a percentage to calculate the Rounding Amount based on the Notional 2 amounts of Exposure Trades.  
Percent Notional| If selected the number entered into the corresponding numeric field is treated as a percentage and used to calculate the Rounding Amount based on the Netted exposure amount.  
  
Specifically, the calculation for netted agreements is as follows:  
  
1\. Convert the Exposure Amounts for each Exposure Trade into Margin Terms Currency  
2\. Net the exposure amounts from step 1).  
3\. Convert the exposure number from step 2) into an absolute number  
4\. Calculate the percentage of step 3) using the number defined in the adjacent numeric field.  
  
The calculation is ABS (Sum[Exposure Amount in Margin Term Ccy])*([Defined Value]/100)  
  
5\. The calculated amount from step 4) is rounded down to zero decimals and are used as the Rounding Amount in the Margin calculation  
6\. The calculated amount is saved with the Margin Calculation, and reflected in the Margin Call Notice, Margin call Read only reports and grids.  
  
**Note:** When Percentage Exposure is selected, the number entered in the adjacent field is assumed to be a percentage, and must be entered as a positive number between 0 and 9999.999999  
Next enter the amount to be used in conjunction with the Method defined above.  
Deliver Rounding Method | The rounding method which should apply to deliveries of collateral under this agreement. The options are:  
  
Up  
Down  
Closer  
  
The default value is Up.  
  
**Note:** This value can also be applied Lock Up Margin Requirements for OTC agreements with a collateral allocation of Segregate Lock Up and Variation by setting the Apply to Lock Up flags.  
Return Rounding Method | The rounding method which should apply to returns of collateral under this agreement. The options are:  
  
Up  
Down  
Closer  
  
The default value is Down.  
  
**Note:** This value can also be applied Lock Up Margin Requirements for OTC agreements with a collateral allocation of Segregate Lock Up and Variation by setting the Apply to Lock Up flags.  
  
## Rating Based Margin Terms

Collateral Agreements specify the parameter values that should be used for margin calculations.

For example, Thresholds, Minimum Transfer Amounts and Agreement level Additional Margins and Lock Up Amounts.

Typically, these margin parameters are fixed values for Collateral Agreements.

However, for many OTC and Client Clearing Agreements, it is commonplace for these values to be derived from an [entity's current credit rating](<entities_general.md#credit-ratings>) as assigned by a recognized rating agency. When a parameter value is derived in the fashion it is known as being "Ratings Related."

The intent behind this approach is to adjust the margin terms of the Collateral Agreement as the credit rating of the Parties or their Credit Support Providers changes.

TLM® Collateral Management supports ratings related margin terms for Agreements in the following Business Lines:

  * OTC Agreements
  * Client Clearing Agreements



Ratings Related Margin Terms can be set for either the:

  * **Principal** \- Parameters entered here will apply to the Principal as per the Collateral Agreement Documentation. See [Understanding MTA, Rounding Increments, Threshold and Parties](<understanding_mta_round_threshold.md>) for more information.
  * **Counterparty** \- Parameters entered here will apply to the Counterparty as per the Collateral Agreement. See [Understanding MTA, Rounding Increments, Threshold and Parties](<understanding_mta_round_threshold.md>) for more information.
  * **Both Parties** \- If either of the parties has a credit support provider defined for them on their Agreement, then any ratings related margin terms will be based on the credit rating of the credit support provider. If no credit support provider is defined for the party, then credit ratings for the actual party themselves will be used to determine ratings related margin terms.



The purpose of this screen is to construct a grid of credit ratings from credit reference agencies with the respective ratings related margin parameters recorded beside each rating equivalence.

Once the margin parameters are enabled, the corresponding field in the Ratings Based Margin Terms section become enabled.

**Procedure**

To create the ratings grid, work from the top left of the form downwards.

  1. Select the margin terms with which the ratings need to be related, which will enable the associated parameter fields.
  2. Select the credit agencies which will provide ratings for the parties. This will create a blank grid for the credit ratings and fields to record the parameter values.
  3. Then populate the required margin parameters for a credit ratings range and add these to the grid. The margin parameters can be recorded as fixed amounts, or as percentages of notional / exposure, or a combination of each. This process is repeated until the grid is fully populated.

Section | Field | Description  
---|---|---  
Ratings Based Evaluation | Threshold | Threshold can added by checking the box. See [Threshold](<#threshold>) from Margin Terms for more information.  
| MTA | Minimum Transfer Amount can be added by checking the box. See [MTA](<#mta>) from Margin Terms for more information.  
| Rounding Amount | Rounding Amount can be added by checking the box. See [Rounding Amount](<#roundamt>) from Margin Terms for more information.  
| Additional Margin | Additional Margin can be added by checking the box. Amounts entered for Additional Margin are applicable as follows:  
  
If entered under the Principal, the amount recorded in the Additional Margin field in the grid for the current credit rating will form an Additional Requirement in Agreement currency due to the Counterparty, and will be aggregated with any other Additional Margin Amounts due to the Counterparty that exist at either the Agreement Level or Trade Level.  
  
Conversely, if entered under the Counterparty's ratings related grid, then the reverse is true; that is the Additional Requirement is due to the Principal and will be aggregated with any other Agreement or Trade Level Additional Margin amounts due to the Principal.  
  
**Note:** This parameter cannot be defined for any Client Clearing Agreements or OTC Lock Up Only agreement.  
  
See [Additional and Lock Up Margins](<misc.md#additional-and-lock-up-margins>) for more information.  
| Lock Up Margin | Lock Up Margin can be added by checking the box. Amounts entered here are applicable as follows:  
  
If entered under the Principal, the amount recorded in the Lock Up Margin field in the grid for the current rating, will form a Lock Up Margin Requirement in Agreement currency due to the Counterparty, and will be aggregated with any other Lock Up Margins due to the Counterparty at either the Agreement Level or Trade Level.  
  
Conversely, if entered under the Counterparty's ratings related grid, then the reverse is true; that is the Lock Up Margin requirement is due to the Principal and will be aggregated with any other Agreement or Trade level Lock Up Margins due to the Principal.  
  
**Note:** This parameter cannot be defined for Client Clearing Agreements which are defined with a Margin Type of 'Variation'.  
  
See [Additional and Lock Up Margins](<misc.md#additional-and-lock-up-margins>) for more information.  
Party Rating Method | Structure | Select from the drop down field, the debt structure for the ratings to be used.  
The choice is either:  
  
Short Term  
  
Long Term  
  
Financial Strength  
  
Internal  
| Selected Agencies | Select the required Credit Agencies from the drop down check boxes.  
The Agencies selectable are:  
  
Fitch  
  
Moodys  
  
S&P  
  
and any others which have been defined and populated debt structure equivalencies for.  
  
See [Working with Credit Ratings](<reference_related_data.md#ratings-equivalencies>) for more details.  
  
Multiple agencies can be selected if required.  
  
As the individual agencies are selected, the ratings equivalencies for those agencies are generated in the grid.  
| Reference Agency | Select from the dropdown one of the agencies selected from the Select Agencies field.  
  
The choice of Reference Agency selected here governs the ratings ranges available for selection in the Credit Contingent Margin Terms section. These ratings in turn, determine how values are applied to the grid.  
  
For example, if Long term debt structure had been chosen, with Moodys and Fitch as Selected Agencies, then selecting Fitch as the Reference Agency would allow the ratings range of AAA to DDD to be selected. If Moody's was chosen then Aaa to D would be available for selection in the Ratings Range field.  
| All Ratings Required | If **All specified ratings required** is checked then a credit rating for the party must be supplied by each of the Credit agencies defined in Selected Agencies. If a credit rating is not supplied by one or more of the Selected Agencies, the system will deem that it cannot definitively apply any of the margin parameters from the grid.  
  
Should the field be checked and the above scenario occur, the system will apply zero values to the ratings related margin terms parameters, and raise a warning message in the Margin Calculation task status screen when Margin Calculations for the Agreement are run.  
| Ratings Evaluation | Select the drop-down and choose either _Higher_ if the system should select margin parameters corresponding to the highest credit rating for the entity. Should the entity be rated differently by two or more selected agencies, the system will use the highest rating to determine the margin parameters to use. Or choose _Lower_ if the system should select margin parameters corresponding to the lowest credit rating for the entity. Should the entity be rated differently by two or more selected agencies, the system will use the lowest rating to determine the parameters to use.  
Ratings Based Margin Terms | Ratings Range | Select the start and end ratings to create a range of credit ratings to use when applying the margin parameter values.  
  
Ratings Range must be selected, otherwise the **Set** button will remain disabled and no values can be entered.  
| Threshold Method | See [Threshold](<#threshold>) from Margin Terms.  
| Threshold | Define the Amount, if any, which should be used as the Threshold in the margin calculation for the relevant party under this agreement. If Threshold was selected in under the Evaluation section and the method is populated, enter a value applicable for ratings range selected. How the numeric amount is treated depends on the method selected.  
| Additional Margin Method |   
| Additional Margin | Define the Amount, if any, which should be used as the Additional Margin in the margin calculation for the relevant party under this agreement. If Additional Margin was selected in under the Evaluation section and the method is populated, enter a value applicable for ratings range selected. How the numeric amount is treated depends on the method selected.  
| Lock Up Margin Method | There are four values available from the method drop-down:| **Lock Up Margin Method**| **Description**  
---|---  
Flat| If selected, the number entered into the corresponding adjacent amount field is treated as an absolute amount in agreement currency.  
Percent Notional 1| If selected the number entered into the corresponding amount field is treated as a percentage and used to calculate what the eventual applied amount should be. The applied amount is based on the Notional 1 Amount of the Exposure trades assigned to the Agreement. Specifically, the calculation is as follows:  
  
1\. Convert the Notional 1 amount of each exposure trade into an absolute amount. If Notional 1 amount is missing for an exposure trade it is assumed to be zero.  
2\. Convert each absolute amount from step 1) into Margin Terms Currency.  
3\. Sum the absolute amounts from step 2).  
4\. Calculate the percentage of absolute amounts from step 3) using the percentage number defined in the amount field.  
5\. The calculation is (Sum(ABS[Notional 1 in Margin Term Ccy]))x([Defined Value]/100)  
6.The calculated amount from the step 4) rounded down to zero decimals.  
7\. The amount calculated in step 5) is applied as the respective margin parameter in the Margin Calculation.  
8\. The calculated amount is saved with the Margin Calculation, and reflected in the Margin Call Notice, Margin call Read only reports and grids.  
Percent Notional 2| This method is identical to Percent Notional 1, with the key exception that when selected the number defined is used as a percentage to calculate the respective margin parameter based on the Notional 2 amounts of Exposure Trades.  
Percent Exposure| If selected the number entered into the corresponding amount field is treated as a percentage and used to calculate what the eventual applied margin parameter amount is. The applied amount is based on the netted values of the Exposure trades assigned to the Agreement. Specifically, the calculation for netted agreements is as follows:  
  
1\. Convert the Exposure Amounts for each Exposure Trade into the Currency defined in the Agreement Margin Terms form.  
2\. Net the exposure amounts from step 1).  
3.Convert the exposure number from step 2. into an absolute number.  
4\. Calculate the percentage of step 3) using the percentage number defined in the amount field.  
  
The calculation is ABS (Sum[Exposure Amount in Margin Term Ccy])x([Defined Value]/100)  
  
5\. The calculated amount from step 4) is rounded down to zero decimals.  
6\. The amount calculated in the step 5) is applied as the respective margin parameter in the Margin Calculation.  
7\. The calculated amount is saved with the Margin Calculation, and reflected in the Margin Call Notice, Margin call Read only reports and grids.  
8\. If Flat was selected chosen permissible entry is a positive number between zero and 9,999,999,999,999.99. The short cut keys of b (billion), m (million) and k (thousand) can be used entering amount when Flat is chosen. If Percentage was selected, permissible entry is a positive number between zero and 9,999.99999.  
9\. Amounts entered/calculated are interpreted as being in Margin Terms currency.  
| Lock Up Margin | Define the Amount, if any, which should be used as the Lock Up Margin in the margin calculation for the relevant party under this agreement. If Lock Up Margin was selected in under the Evaluation section and the method is populated, enter a value applicable for ratings range selected. How the numeric amount is treated depends on the method selected.  
| MTA Method | See [Minimum Transfer Amount Method](<#mta>) from Margin Terms for more information.  
| Deliver MTA | Enter a value that is a minimum amount that can be transferred for a margin call. How the numeric amount is treated depends on the method selected.  
| Return MTA | Enter a value that is a minimum amount that can be returned for a margin call. How the numeric amount is treated depends on the method selected.  
| Rounding Amount Method | See [Rounding Amount](<#roundamt>) from Margin Terms for more information.  
| Deliver Amount Rounding | Define the Amount, if any, which should be used as the deliver amount in the margin calculation for the relevant party under this agreement. If Rounding Amount was selected in under the Evaluation section and the method is populated, enter a value applicable for ratings range selected. How the numeric amount is treated depends on the method selected.  
| Return Amount Rounding | Define the Amount, if any, which should be used as the return amount in the margin calculation for the relevant party under this agreement. If Rounding Amount was selected in under the Evaluation section and the method is populated, enter a value applicable for ratings range selected. How the numeric amount is treated depends on the method selected.  
  
**Note:** Any amounts specified in the ratings related grid are specified per the currency in the Margin Terms tab per party. This currency can be defined in a currency other than Agreement currency. If this happens, then the amounts specified in the grid will be converted into Agreement currency using latest [FX rates](<instruments_debt.md#prices>). Any decimal place figures that result after conversion are ignored.

When margin terms are defined as Ratings related, the system audits the changes from fixed terms to ratings related and vice versa.

Defining Rating Based Margin Terms for Client Clearing Agreements is identical to the above process with the following minor exceptions:

  * Ratings Based Additional Margins cannot be defined.
  * Ratings Based Lock Up Margins can be defined but only when the Client Clearing Agreement has a margin type of Lock Up.



Ratings Based Thresholds, MTA and Rounding Amounts can be defined for any Client Clearing Agreements.

## [Examples of Margin Terms](<understanding_mta_round_threshold.md>)
