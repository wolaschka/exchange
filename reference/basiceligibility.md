
# Basic Eligibility

## Overview

When Cash Collateral is defined as eligible Collateral on an Agreement, it is necessary to define the Interest Terms that will be applicable to cash positions that will form cash collateral balance on the Agreement.

It is possible to define interest terms that will be applied to held positions, and those that will be applied to posted positions. This allows the user to define that when the Principal is holding cash collateral, a rate of X will be paid, but when cash collateral is posted, a rate of Y will be received.

Additionally, for those OTC Agreements that segregate Lock Up and Variation collateral, (that is, those with a collateral allocation method of Segregate Lock Up and Variation, it is further possible to define cash interest terms for Lock Up collateral separate to those for variation collateral. For more information on Agreements that segregate collateral see [Working with OTC Agreements that Segregate Lock Up and Variation Margin](<segregate_lockup_varmargin.md>).

In order to define cash collateral interest terms, cash must first be assigned as eligible collateral on an Agreement.

Cash can be assigned as eligible collateral on an agreement in two ways:

  * Cash can be assigned as an eligible instrument to an Agreement. 
  * A cash collateral bucket which contains one or more currencies can be assigned to the Agreement. 



Once the bucket or instrument is assigned, the corresponding currencies will be added to the Cash Collateral Interest Terms section, and their terms need to be defined.

Fields for setting up eligible collateral:

Field | Description  
---|---  
Type | Select between Buckets or Instruments that will be used to evaluate basic eligibility for collateral positions and movements for the Agreement.  
Name | The name will be populated based on the value that the user selected.  
Variation Held Valuation Percentage | Used to adjust to the market value of that particular eligible collateral when held by the principal, or when returned to the Counterparty. Negative numbers and numbers greater than 100 are not accepted.  
Variation Posted Valuation Percentage | Used to adjust market value of that particular eligible collateral when posted by the principal, or when being returned to the principal. Negative numbers and numbers greater than 100 are not accepted.  
Lock Up Held Valuation Percentage | Used to evaluate collateral of margin type Lock Up that is held by the Principal for eligibility. Negative numbers and numbers greater than 100 are not accepted.  
Lock Up Posted Valuation Percentage | Used to evaluate collateral of margin type lock up that is posted by the Principal for eligibility. Negative numbers and numbers greater than 100 are not accepted.  
Cash Offset | Define the adjustments for Cash instrument movements.  
  
There are five choices available:  
  
**Use default** \- this is the default choice and it uses the values that have been set as the system default. If no system default settings exist, Cash movements will use T, that is the same day (from the Agreement's Principal Managing location perspective) as the movement creation date.  
  
**T** \- the same day (from the Agreement's Principal Managing location perspective) as the movement creation date.  
  
**T** \- Collateral Movements for the selected instrument class will default the settlement date to be the same day (from the Agreement's Principal Managing location perspective) as the date the movement is created.  
  
**T+1** \- Collateral Movements for the selected instrument class will default the settlement date to be the following business day (from the Agreement's Principal Managing location perspective) from the date the movement is created.  
  
**T+2** \- Collateral Movements for the selected instrument class will default the settlement date to be two business days (from the Agreement's Principal Managing location perspective) from the date the movement is created.  
  
**T+3** \- Collateral Movements for the selected instrument class will default the settlement date to be three business days (from the Agreement's Principal Managing location perspective) from the date the movement is created.  
  
**T+4** \- Collateral Movements for the selected instrument class will default the settlement date to be four business days (from the Agreement's Principal Managing location perspective) from the date the movement is created.For T+1 to T+4 selections, Business days for the purpose of settlement dates are defined as Monday to Friday.  
  
Offset values can be independently set for each Instrument Class. That is the value selected for Cash does not have to be identical to any value selected for Debt.  
Debt Offset | Define the adjustments for Debt instrument movements.  
  
There are five choices available:  
  
**Use default** \- this is the default choice and it uses the values that have been set as the system default. If no system default settings exist, the following values will be used: Debt Instrument movement will use T+1, that is the following business day (from the Agreement's Principal Managing location perspective) from the movement creation date.  
  
**T** \- Collateral Movements for the selected instrument class will default the settlement date to be the same day (from the Agreement's Principal Managing location perspective) as the date the movement is created.  
  
**T+1** \- Collateral Movements for the selected instrument class will default the settlement date to be the following business day (from the Agreement's Principal Managing location perspective) from the date the movement is created.  
  
**T+2** \- Collateral Movements for the selected instrument class will default the settlement date to be two business days (from the Agreement's Principal Managing location perspective) from the date the movement is created.  
  
**T+3** \- Collateral Movements for the selected instrument class will default the settlement date to be three business days (from the Agreement's Principal Managing location perspective) from the date the movement is created.  
  
**T+4** \- Collateral Movements for the selected instrument class will default the settlement date to be four business days (from the Agreement's Principal Managing location perspective) from the date the movement is created.  
  
For T+1 to T+4 selections, Business days for the purpose of settlement dates are defined as Monday to Friday.  
  
Offset values can be independently set for each Instrument Class. That is the value selected for Debt does not have to be identical to any value selected for Cash.  
Rehypothecation | TLM Collateral Management allows the user to define whether received collateral, (that is collateral that has been delivered to the Principal) can be rehypothecated by the Principal.  
  
Collateral Agreements typically specify whether the holder of collateral assets is able to re-use those received assets for their own purposes. The re-use of collateral to meet the Principal's own collateral requirements is commonly termed "Rehypothecation" amongst Collateral Practitioners.  
  
Additionally, for those OTC Agreements that separate Lock Up and variation requirements or have a lock up only calculation type, collateral positions are split into those for variation requirements, and those for lock up requirements. This delineation is indicated by the Margin Type value on collateral positions and movements. (See Working with OTC Agreements that Segregate Lock Up and Variation Margin or for more details)  
  
There are four choices for Rehypothecation rights:  
  
| Available for Rehypothecation Value| Collateral included in Available for Allocation Pool  
---|---  
None| This is the default value meaning rehypothecation rights are not enabled on the agreement.  
  
Collateral is specifically excluded from assets available calculation.  
Both LockUp and Variation| Held collateral positions where Margin Type is Variation or Lock Up.  
LockUp Only Held| Collateral positions where Margin Type is Lock Up only.  
  
Held collateral balances with a Margin Type of Variation will not be included in the calculation of available collateral.| Variation Only| Held collateral positions where Margin Type is Variation only.  
  
Held collateral balances with a Margin Type of LockUp are not included in the calculation of available collateral.  
  
  
These values are checked against how [Collateral Allocation](<agreements_general.md#collatallocation>) has been defined on the General tab to ensure consistency of approach.  
  
Consider the following:  
  
\- If LockUp Only is selected for the Available for rehypothecation value, the system will check to ensure that Collateral Allocation has been defined as Segregate LockUp and Variation.  
  
If this check is failed, then the system will display the following error message and the record cannot be saved.  
  
The rationale for this check is that only agreements that segregate collateral into lock up and variation requirements can have collateral balances defined as Lock Up margin type. All other agreements should have collateral balances defined as variation margin type.  
  
\- If defining Rehypothecation rights for an OTC Lock Up Only agreement, the only options available are **Lock Up Only** or **None**.  
  
\- Collateral Positions that are Held by the Principal are included in the calculation of Assets Available for Allocation to meet Antic Demands and Substitutions based on the value selected in the Available for Rehypothecation drop down box.  
  
This can be summarized below:  
  
**Note:** Letters of Credit Instruments are specifically excluded from the pool of available for allocation collateral. 

## Adding a Bucket or Instrument

To add an eligible bucket or Instrument:

**Procedure**

  1. Click the **Add** button.
  2. **_Assign Eligible Collateral_** form will open up.
  3. Select the _Type_ from the drop-down menu. The choices are either Bucket or Instrument. Depending on the selection, either Eligible Buckets or Eligible Instruments field will appear to select a single or multiple value(s).

     * Select the value(s) but clicking on each individual value or select all. If an instrument or bucket is selected by accident click on it or select the Clear all.
  4. The valuation percentage will default to 100% but the value can be adjusted between 0 - 100.

  5. Once the eligible field has been populated, the **OK** button can be clicked and the values are added to the grid. 
  6. Click the **Save** button to save the changes.



## Editing a Bucket or Instrument

**Procedure**

  1. Click on the Edit ![edit_icon.jpg](Images/edit_icon.jpg) icon next to the item that needs to be modified.
  2. Make the necessary changes and click the **Save** button to save the changes.



## Deleting a Bucket or Instrument

**Procedure**

  1. To delete, click on the ![delete_icon.jpg](Images/delete_icon.jpg) icon next to the instrument or bucket.
  2. A delete eligibility pop-up will appear asking for confirmation to delete.
  3. Click the **Delete** button to remove the instrument or bucket from eligible collateral.
  4. Then click the **Save** button to commit the changes to the agreement.


