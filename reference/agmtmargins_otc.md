
# OTC Agreement Margins

In addition to taking collateral to cover the mark to market exposure of a transaction, it is common market practice, when trading with some Counterparties, to take some further margin. This extra margin is usually designed to offset potential exposure movements between margin calculation periods and to cover settlement risk between calling for and receiving collateral.

This extra margin is often referred to by a number of different terms including, Independent Amount, Upfront Amount and Initial Margin.

The way in which this extra margin is included in the margin calculation and called for is usually done in one of 2 ways:

  1. Netted with the mtm exposure.
  2. Called for as a separate requirement.



The ISDA Margin Provisions 2001 sought to introduce new terms for these amounts in order to simplify the documentation and it's application in the market. The terms they introduced were:

  * **Additional Margin** \- Netted with mtm exposure.
  * **Lock Up Margin** \- Called as a separate requirement.



Additional and Lock Up Margins can currently be applied in the application at trade level or agreement level and also at agreement level based on a parties credit rating.

These margins have differing treatments within the margin calculation.

Additional Margins (that is, all trade level or agreement level Additional Margins regardless of which party they are due to) are first netted together to find one "Net Additional Margin" requirement. This Net Additional Margin figure is then summed with the Net Exposure prior to the application of the Threshold. They will therefore be subject to the application of Minimum Transfer Amounts and Rounding Amounts later in the calculation.

Lock Up Margins are traditionally held regardless of the exposure and usually without reference to the MTA and Rounding Amount. This approach is generally seen to offer the best credit risk mitigation because the user would call the full amount of Lock Up Margin required even if it is below the MTA. Sometimes, this approach is seen to be problematic from an operational point of view and organizations might make a decision that while they would still require Lock Up Margin if it was below the Threshold they would allow it to be netted with other requirements and then be subject to the MTA and Rounding Amount.

TLM® Collateral Management can accommodate either of these approaches with the use of the "Lock Up Calculation Type" at the agreement level.

In order to take the first approach, the user would select the Lock Up Calculation Type, "Not Netted Against Variation". In this case the system will first calculate the total Lock Up Margin due. while it is possible that Lock Up margins could be due to both parties at the same time, this situation is not common. Hence, TLM® Collateral Management currently nets any trade level or agreement Lock Up margins due to the principal against those due to the Counterparty, to come up with one "Non Netted Lock Up Margin" requirement. The term "Non Netted" in this label indicates that the Lock Up Margin is not netted with the exposure (even though the principal and Counterparty requirements have been netted together). Any existing collateral position is then "auto-allocated" against this Lock Up Margin requirement to determine whether a demand for Lock Up Margin is needed. If sufficient collateral is already in place, any surplus is then allocated to the standard calculation for Additional Margin and Exposure.

In order to take the second approach, the user would select the Lock Up Calculation Type "Netted Against Variation". In this case the trade and agreement Lock Up Margins are netted together to find one "Netted Lock Up Margin" requirement. This is applied in the standard calculation after the Threshold. That is, one total requirement for Additional Margin and Exposure (after Threshold) plus Lock Up Margin is compared to the existing collateral position.

**Segregating Collateral Requirements**

Further, for those OTC Agreements that **do not** net Lock Up margin. That is, those that have a Lock Up Calculation Type of "Not Netted Against Variation" or “Lock Up Only Calculation”, it is possible to further define these Agreements to state whether lock up and variation requirements should be explicitly segregated. This is achieved via the collateral allocation field.

For those Agreements that segregate requirements, the value should be set to **_Segregate Lock Up and Variation or Lock Up Only_**. This has a number of consequences, such as splitting the collateral pool and indeed the margin call into totally independent lock up and variation requirements.

See [Working with OTC Agreements that Segregate Lock Up and Variation Margin](<segregate_lockup_varmargin.md>) or how to define an [OTC Lock Up Only Agreement](<agreements_define.md#otc-lock-up-only>) for more details.

Field | Description  
---|---  
Source | This field is non-editable and the value automatically fills in when the Agreement Margin is created. It will have a value of 'Manual' if the margin was manually entered or the name of the configuration if it was imported.  
Type | Select the type of margin, that is **Additional** or **Lock Up**.  
  
**Note:** For the OTC Lock Up Only agreement, the option to add an Additional Margin values is not available, the label suggests.  
Amount Method | Select an Amount Method from the drop down. Choices are:  
  
**FLAT** \- this is the default value. If selected, the number entered into the corresponding Amount field is treated as an absolute amount in the currency specified. If selected, amount defaults as zero.  
  
**PERCENT NOTIONAL 1** \- If selected the number entered into the corresponding amount field is treated as a percentage and used to calculate what the applied amount is.  
  
The applied amount is based on the Notional 1 Amount of the Exposure trades assigned to the Agreement.  
  
Specifically, the calculation is as follows:  
  
\- Convert the Notional 1 amount of each exposure trade into an absolute amount. If Notional 1 amount is missing for an exposure trade it is assumed to be zero.  
\- Convert each absolute amount from a) into the Currency on the defined Agreement Margins form  
\- Sum the absolute amounts from step b)  
\- Calculate the percentage of absolute amounts from step c) using the percentage number defined in the amount field.  
  
The calculation is (Sum(ABS[Notional 1 in Margin Term Ccy]))x([Defined Value]/100)  
  
\- The calculated amount from step d) is rounded down to zero decimals.  
\- The amount calculated in step e) is applied in the Margin Calculation to the party specified in the Due to field.  
\- The calculated amount is saved with the Margin Calculation, and reflected in the Margin Call Notice, Margin call Read only reports and grids.  
  
**PERCENT NOTIONAL 2**  
\- This method is identical to Percent Notional 1, with the key exception that when selected the number defined is used as a percentage to calculate the amount based on the Notional 2 amounts of Exposure Trades.  
  
**PERCENT EXPOSURE** \- If selected the number entered into the corresponding amount field is treated as a percentage and used to calculate what the applied amount is. The applied amount is based on the netted values of the Exposure trades assigned to the Agreement.  
  
Specifically, the calculation for netted agreements is as follows:  
\- Convert the Exposure Amounts for each Exposure Trade into the Currency defined in the Agreement Margin form.  
\- Net the exposure amounts from step a)  
\- Convert the exposure number from step b) into an absolute number  
\- Calculate the percentage of c) using the percentage number defined in the amount field.  
  
The calculation is ABS (Sum[Exposure Amount in Margin Term Ccy])*([Defined Value]/100)  
\- The calculated amount from step d) is rounded down to zero decimals.  
\- The amount calculated in step e) is applied in the Margin Calculation to the party specified in the Due to field.  
\- The calculated amount is saved with the Margin Calculation, and reflected in the Margin Call Notice, Margin call Read only reports and grids.  
Amount | Enter the amount. Please note that the treatment of the amount entered is contingent on the Amount Method Selected.  
  
If **Flat** was selected chosen permissible entry is a positive number between zero and 9,999,999,999,999.99 The short cut keys of b (billion), m (million) and k (thousand) can be used entering amount when Flat is chosen.  
  
If **PERCENTAGE** was selected, permissible entry is a positive number between zero and 9,999.999999  
Currency | Select the currency in which the amount is quoted.  
Due To | Select the party to which the agreement margin is due, that is Counterparty or Principal.  
Coverage | This is a text field which allows the user to input information about the coverage of the agreement level margin.  
  
For example, the trade type could be set to indicate that it is to cover or that it is a total portfolio requirement. A maximum of 100 characters is allowed.  
  
This information is currently not used in any calculations within the application.  
Method | This is a text field which allows the user to input information about how the agreement level margin has been calculated. For example, VAR or NOP. A maximum of 100 characters is allowed.  
  
This information is currently not used in any calculations within the application.
