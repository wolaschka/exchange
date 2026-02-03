# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/instruments.html

# Overview

## Search Criteria

Instruments can be viewed by selecting **Instruments** from the navigation pane.

There are several ways to return instrument data.

  1. To return all instruments within the instruments screen, click on the **Search** button.

  2. To return a subset of instruments based on a name within the search field labeled **Instrument Name** , enter all or part of the instrument name. The field is case insensitive and an asterisk can be used as a wild card. Click the **Search** button to return the data.

  3. To return a specific subset of instruments based on the Instrument Type, select from the drop-down from the **Type** field. Only one instrument type can be selected at one time. Click the **Search** button to return the data.

  4. To return a subset of instruments based on instrument name and type, enter all or part of the **Instrument Name** with a wild card if needed and select **Type** from the drop-down menu. Click the **Search** button to return the data.




To clear the search criteria, click the **Clear Filters** button.

## Grid Features

The instrument grid can be [sorted](<grid_features.md#sorting>), [paged](<grid_features.md#paging>), [exported](<grid_features.md#export-grid>), [reorder columns](<grid_features.md#reorder-columns>), and fields can be [disabled or resized](<grid_features.md#display-and-resizing-columns>).

## Instruments Grid View

When data is returned, the main page will display the following fields in the grid:

Field | Description  
---|---  
Locked for Approval (Locked icon) | [Approvals](<instruments_approvals.md>) has been [enabled](<system_configuration.md#database-approvals>), and there are pending changes on the Instrument that require approval. A locked icon will appear in this column and the instrument cannot be edited, or copied. "Locked due to pending approval" will be displayed when hovering over the icon. The details of the pending changes can be viewed.  
Primary Id | The main identifier of the instrument.  
Class | The designation of the instrument. It can be either debt, cash, equity or letter of credit.  
Type | User defined value which is used to group types of instruments together.  
Currency | The currency in which the instrument is denominated.  
Description | A free form field where a written representation of the instrument can be specified.  
  
## Create Instruments

**Procedure**

  1. Select the ![Create](Images/instrument_create_button.jpg) button.
  2. Select the type for the instrument to be created.

The current choices are:

     * [Debt](<instruments_debt.md>)
     * [Cash](<instruments_cash.md>)
     * [Equity](<instruments_equity.md>)
     * [Letters of Credit](<instruments_loc.md>)

The choice of instruments determines which default instrument screen opens.

  3. Once all required fields, noted by the red start next to the field label, are filled in, the **Save** button becomes enabled.

  4. Click the **Save** button to commit the changes.



**Note:** Instruments are [audited](<audit.md>) in the standard manner.

## Edit Instruments

  1. Search for the instrument that needs to be modified.
  2. Click on the View Details ![view_icon.jpg](Images/view_icon.jpg) icon and then select the Edit button in the top right corner. All fields will become editable.
  3. Make the required changes and click the **Save** button to retain the changes.



## Instrument Setup for Placeholder Movement Support

Acadia v2.2 and higher supports Triparty Agreement pledges using a placeholder collateral instrument predefined as TRIPARTYALCT. This placeholder instrument naming convention conforms to the ISIN character length. TLM® Collateral Management supports the MarginSphere placeholder instrument within the TLM Collateral Management Margin Call Messaging Adapter ("TLM Adapter") translation logic. The TLM Adapter will be able to translate incoming and outgoing pledge messages using the TRIPARTYALCT placeholder instrument provided a predefined Instrument naming convention within TLM® Collateral Management is strictly adhered to.

### Overview

Using the existing TLM® Collateral Management Reference Data setup infrastructure in its entirety is made available to create a placeholder instrument(s) and all the supporting data for those instruments. The placeholder instruments will function like any other instrument within the application fully utilizing the collateral movement functionality throughout the application.

There are several considerations to bear in mind when using placeholder movements:

  * A standard naming convention for all placeholder instruments is required. If the standard convention defined below in the **Data Setup Summary** section is not strictly enforced, the TLM Adapter will not be able to translate the Acadia placeholder movement, TRIPARTYALCT.
  * Placeholder movements will be the official books and records for the agreement(s). This means all movements will progress and settle like any other movement and roll up into a placeholder Collateral Position.
  * All Custodian balance reconciliations will take place outside the TLM® Collateral Management application.
  * All Custodian Position Eligibility verifications will take place outside the TLM® Collateral Management application.



### Data Setup

The following data is **_required_** to be setup within TLM® Collateral Management in order to ensure the TLM Adapter translation logic works correctly:

  1. A single placeholder [Debt Instrument Type](<#debt-instrument-type>).
  2. A placeholder [Debt Instrument](<#debt-instrument>) for each currency defined in the application.
  3. A single placeholder [Instrument Price Source](<#instrument-price-source>).
  4. A single placeholder [FX Rate Source](<#fx-rate-source>).
  5. A new import configuration for the placeholder [Debt Instrument Prices](<#debt-instrument-prices>).
  6. A new import configuration for the placeholder [FX Rates](<#fx-rates>).
  7. Update to each Triparty Agreement with:
     1. Placeholder Instrument Price Source.
     2. Placeholder FX Rate Source.
     3. Eligible placeholder Instrument(s).



#### Debt Instrument Type

[Debt Instrument](<instruments.md#create-instruments>) placeholder setup requires an association to an [Instrument Type](<reference_related_data.md#instrument-types>). A single placeholder Instrument Type needs to be defined and associated to each placeholder Instrument. A specific naming convention is not required for TLM® Collateral Management and AcadiaSoft to communicate. However, the naming convention should be something meaningful to the user and the user's business process.

#### Debt Instrument

[Create](<#create-instruments>) a placeholder Debt Instrument per currency defined as follows:

  1. Primary Id Type set as **ISIN**
  2. ISIN naming convention: **TRIPTYALC <_currency code_ >**

e.g. TRIPTYALCUSD, TRIPTYALCEUR, etc...

**Note:** It is very important to adhere to this naming convention. The TLM Adapter is relying on this naming convention in order to translate incoming and outgoing placeholder instruments between TLM® Collateral Management and AcadiaSoft.

  3. Currency set as the same currency appended to the ISIN in step 2.

e.g. USD, GBP, EUR etc...

**Note:** The currency appended in step 2 and defined in step 3 must be the same naming convention as the naming convention within the Currencies reference data. 

  4. Instrument Type set as the placeholder Debt Instrument Type defined above.




**Note:** It is not necessary to populate any other fields within the Debt Instrument setup in order for TLM® Collateral Management and AcadiaSoft to communicate. However, please see **Placeholder Debt Instrument Prices** below for more information on updating prices.

#### Instrument Price Source

The purpose of defining a placeholder [Instrument Price Source](<reference_related_data.md#price-source>) is to segregate special placeholder Debt Instrument Prices and allow only those agreements that will be booking placeholder movements to use these special prices. See [**Placeholder Debt Instrument Prices**](<#debt-instrument-prices>) and [**Agreement Updates**](<#agreement-updates>) for more details.

The placeholder Instrument Price Source is required when [importing placeholder Debt Instrument prices](<import_debt_instrument_prices.md>). It is also required to be defined on an agreement placeholder movements are expected to be booked against. Just like the placeholder Debt Instrument Type, a specific naming convention is not required for TLM® Collateral Management and AcadiaSoft to communicate. However, the naming convention should be something meaningful to the user and the user's business process.

#### FX Rate Source

The purpose of defining a placeholder [FX Rate Source](<reference.md#adding-reference-data>) is to segregate special placeholder FX Rates and allow only those agreements that will be booking placeholder movements to use these special rates. See **Placeholder[FX Rates](<#fx-rates>) and [Agreement Updates](<#agreement-updates>)** for more details.

The placeholder FX Rate Source is required for [importing placeholder FX Rates](<import_fx_rates.md>). It is also required to be defined on any agreement placeholder movements are expected to be booked against. Just like the placeholder Instrument Price Source, a specific naming convention is not required for TLM® Collateral Management and AcadiaSoft to communicate. However, the naming convention should be something meaningful to the user and the user's business process.

#### Agreement Updates

For those agreements where placeholder movements will be booked, the following updates are required on the agreement:

  1. **General Tab:** Select the placeholder Price Source and FX Rate Source previously defined above. This means the agreement will only ever use the Instrument Prices and FX Rates that are imported against the placeholder price and rate sources.
  2. **Eligibility/Interest Tab:** Under Eligibility, add the placeholder instrument(s) that will be used for the agreement. This means only those placeholder instruments added will be eligible for the agreement.



The agreement updates can be executed using the Agreement Import(s) for ease of updating a large volume of agreements. Please take note of the mandatory fields that are required within the import file as these are the minimum fields required for updating an agreement.

If the Approval functionality is utilized to manage the changes, the updates can be executed directly from the Agreements module within the UI.

#### Debt Instrument Prices

Placeholder [Debt Instrument Prices](<import_debt_instrument_prices.md>) need to be defined in order to ensure the market values for placeholder movements are correctly calculated and not subject to price fluctuations as follows:

  1. All prices, i.e. Mid, Bid and Ask, should be set as 100.

**Note:** If the Instrument Price Terms default value of Percentage is overwritten to Actual, then all prices should be set as 1.

  2. All prices [imported](<task_imports.md#create-task>) against placeholder Price Source defined above.

  3. Pool Factor and Coupon Accruals should not be imported.
  4. The import only has to be executed once provided a Price Date is used in the past, e.g. 1/1/1972. It should be far enough back to ensure any historical updates will pick up the correct price.

**Note:** It is strongly recommended that the placeholder Debt Instrument prices are imported and not entered manually. Manually entered Debt Instrument Prices cannot be entered with an historical price date.

The above setup ensures that all placeholder instruments will be valued 1 to 1, i.e. Notional and Market Value will always be identical.

See [**Placeholder FX Rates**](<#fx-rates>) section below on how to define FX Rates that will maintain the 1 to 1 market valuation when the placeholder instrument is in a currency other than the agreement currency.




#### FX Rates

Placeholder [FX Rates](<import_fx_rates.md>) need to be defined in order to ensure placeholder instrument market values that require conversion to the agreement currency are not subject to rate fluctuations, i.e. the market value when converted maintains the 1 to 1 valuation described above under Placeholder Debt Instrument Prices section. FX Rates definitions are as follows:

  1. All FX Rates should be set to 1.
  2. All FX Rates [imported](<task_imports.md#create-task>) against the placeholder FX Rate Source defined above.
  3. The import only has to be executed once provided a Rate Date is used in the past, e.g. 1/1/1972. It should be far enough back to ensure any historical updates will pick up the correct price.

**Note:** Placeholder FX Rates can only be imported. The UI does not allow for the updating of FX Rates for existing currencies. It only allows for the entry of an FX Rate for a newly defined Currency and then only for the system Default FX Rate Source for Today's date.




#### New Managing Location Collateral Positions

A placeholder for a new managing location is required for new settlement task that would not roll up movements into collateral positions. It is expected the Triparty allocated collateral would be imported. This new managing location does not need to be a specific city but it could be set as “Triparty Allocation” or similar, as long as the underlying meanings are well understood.

If the actual allocated collateral identifiers are unnecessary, the following steps could be skipped.

#### New Settlement Task for Not Rolling Up Movements

When [creating the Settlement Task](<task_settle_movements.md#create-new-task>) placeholder, uncheck the Adjust Positions checkbox.
