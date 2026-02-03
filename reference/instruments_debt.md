# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/instruments_debt.html

# Debt Instrument

Debt Instruments are an asset that require a fixed payment to the holder.

When a debt instrument is viewed, created or edited, it will contain 5 tabs of information. Each tab is described below.

**Note:** Fields in red are required.

## General

Section | Field | Description  
---|---|---  
**Identification** | Primary Id Type | The Instrument Identifier which is considered the primary ID for the instrument. The available values are ISIN, CUSIP, SEDOL and Internal ID. One of these must be defined as the Primary Id Type. Once the Primary ID Type has been selected, the corresponding Id becomes a mandatory field. It is this Id which will be displayed on the Instruments grid, Collateral Position Statements, and Collateral Notices. Additionally, in certain areas within the system wherever Instruments can be selected, only Primary ID type can be entered.  
  
Example: In the concentration rule builder.  
  
Validation is done against a combination of this field and the Instrument Identifier Type to ensure that the number of characters in the ID corresponds to the ID Type. (ISIN, CUSIP and SEDOL).  
  
Where the Instrument Identifier Type is Internal, validation checks that this ID does not correspond to an existing ISIN, CUSIP or SEDOL.  
| ISIN | A unique identifier for securities that requires 12 characters which can include spaces, numbers and symbols and is required when the Primary ID Type is set to ISIN.  
| CUSIP | A unique identifier for securities that requires 9 characters which can include spaces, numbers and symbols and is required when the Primary ID Type is set to CUSIP.  
| SEDOL | A unique identifier for securities that requires 7 characters which can include spaces, numbers and symbols and is required when the Primary ID Type is set to SEDOL.  
| Internal | A unique identifier for securities that can have up to 30 characters which can include spaces, numbers and symbols and is required when the Primary ID Type is set to Internal.  
| Description | A free form field where a written representation of the instrument can be specified.  
| Cost of Funding | Allows the user to optionally record a numeric value which represents the internal cost of funding the instrument. This field can accommodate 19 digits which includes 2 decimal places.  
| Currency | The currency in which the instrument is denominated.  
| Instrument Type | User defined value which is used to group types of instruments together.  
| Issuer | The issuer of the instrument.  
| Minimum Lot | Allows the user to record the minimum amount of the Instrument which can be transferred. This field, if populated, is used to calculate and validate entries for collateral movements. (Please see notes below for validation rules on this field.)  
| Lot Increment | Allows the user to record the incremental amount in which the Instrument can be transferred. Like Minimum Lot, it is used to calculate and validate collateral movements entries. (Please see notes below for validation rules on this field.)  
| Price Terms | There are two choices:  
  
**Actual** \- Will use the price as provided in determining the value.  
Example:  
If price is 34, and notional is 1,000,000 value will be 1,000,000 * 34 = 34,000,000.  
  
This is the default market standard for equity instruments.  
  
**Percentage** \- price entered is interpreted as a percentage, and is effectively divided by 100 when deriving value.  
Example:  
Price = $25.3  
Notional = 1,000,000  
Market Value = (1M * 25.3)/100 = $253,000  
Maturity | Issue Date | The date the Instrument was issued.  
| Maturity Date | The date the Instrument is due to mature.  
**Instrument Ratings** | Debt Structure | Select a debt structure from the drop-down menu. The possible choices are Long Term, Short Term, Financial and Internal.  
| Agency | Select the relevant agency from the drop-down menu. The available choices are defined in the reference data under [rating agencies](<reference.md#adding-reference-data>).  
  
**Note:** It is not possible to mix and match debt structures and ratings.  
| Rating | Select the current rating for the relevant agency from the drop-down menu. The available choices are defined in the reference data under [rating equivalencies](<reference_related_data.md#ratings-equivalencies>)  
  
**Rules for Minimum Lot and Lot Increment**

The following validation rules regarding the fields Minimum Lot and Lot Increment.

Field Name | Validation Performed | Prevents Record Save ?  
---|---|---  
Lot Increment | Minimum Lot size must be at least equal to or greater than any defined Lot Increment. | Yes  
Lot Increment | Minimum Lot size must be defined if Lot Increment is defined. | Yes  
Minimum Lot | The Minimum Lot must be divisible by the Lot Increment. | Yes  
  
### Add/Delete Instrument Ratings

  * **Add**

    1. To add an Instrument Rating, select from the drop-down menus to specify a Debt Structure, Agency and Rating.
       1. **Note** : It is not possible to mix and match debt structures and ratings. The list of available agencies will change according to the debt structure selected and the ratings drop down will be populated accordingly.
    2. The ![add_button.jpg](Images/add_button.jpg) button will become enabled. Click the button to add the data to the grid.
    3. Click the ![save_button.jpg](Images/save_button.jpg) button to retain the changes.
  * **Delete** \- To remove data from the grid, click on the delete ![delete_icon.jpg](Images/delete_icon.jpg) icon located next the row that needs to be deleted. As this action is not reversible, the user will be prompted with a warning message asking to confirm the deletion or cancel the action. The user can click **Cancel** or **Delete**.




## Prices

All prices that have been loaded for that instrument will be displayed by default.

Instrument Prices are regarded as unique in the system according to three fields:

  * Price Source
  * Price Date Adjustment
  * Price Date



Prices can be filtered by the following Filter criteria:

  * **Price Quote** \- the default is to display prices for All Price Quote types, but this can be filtered by Mid, Bid or Ask
  * **Price Date Adjustment** \- by default, the value selected here is to display prices for all Price date adjustments, but it can be filtered to select prices for T, T+1, T+2, T+3

Field | Description  
---|---  
Price Source | The source of where the associated current price came from. This field is mandatory when prices are added/loaded onto an instrument.  
Price Quote | This denotes what type of price the numeric value represents.  
  
Price Quote type (e.g. MID, BID, ASK) is not imported as such, Although displayed in the Instrument Prices Grid, together with the relevant Clean and Dirty Price for that Quote Type, it is actually imported as one field value. E.G. A Clean Price with Quote Type Mid, is imported via one field MidCleanPrice on the source file.  
  
Alternatively, it is derived when a price is added, e.g, a Mid price of 101 is added.  
Price Adjustment | Denotes whether the price is applicable for Today, T+1, T+2, T+3.  
  
It must be specified when loading / manually adding prices.  
Clean Price | This is the clean price of the instrument. This value can only be imported.  
  
Manually entered prices are processed as Dirty Prices.  
  
Displayed to 5 decimal places. It should be read in conjunction with the Price Quote field to indicate whether it is Clean Mid/Bid/Ask.  
Coupon Accrual | This represents the accrual factor to date for the bond, and is added to the clean price to form party of the dirty price calculation. This value can only be imported. Displayed to 5 decimal places.  
Pool Factor | This represents the pool factor for bonds where the pool factor is a variable in dirty price calculation. This value can only be imported.  
Dirty Price | If calculated, it is calculated as (Clean Price + Coupon Accrual) * Pool Factor. It is displayed up to 5 decimal places. As per Clean Price, this value needs to be read in conjunction with Price Quote field to determine whether it is Dirty Mid/Bid/Ask.  
Calculated | Populated with a Y, if the Dirty Price has been calculated by the system during the Instrument Price Import. If the Dirty Price was supplied for an instrument on the instrument price file, or the Dirty Price has been manually added or edited by a user, then it will be populated with N.  
Date | This is the Price Date for the Instrument as contained in the instrument price import file.  
  
If a price for a particular Instrument, Price Date and Price Date Adjustment combination was not loaded, then the pricing field will be blank.  
  
Prices can also be manually edited or added from the screen. See _Add/Edit Prices_ in the next section for more information.

### Add/Edit Prices

With either the below selections, a new window will appear where the prices can be added or amended. Click the **Save** button to commit the changes to the instrument.

  * **Add** \- To add a price, select the ![add_button.jpg](Images/add_button.jpg) button.

  * **Edit** \- If a price needs to be overridden on an existing price, click on the Edit ![edit_icon.jpg](Images/edit_icon.jpg) icon located next the row that needs to be modified.




Repeat the above steps if prices are required for more than one Price Source or more than one Price Adjustment Date.

Only dirty prices can be manually edited or manually added. Any dirty prices that are entered or edited will display as "N" in the calculated field once price(s) are saved.

Additionally, for any price that is manually added or edited, the Date field will display the date that the price was manually edited.

**Validation**

  * A Price Source, a price data adjustment and at least one dirty price must be entered before the entry can be saved.
  * Prices must be entered as positive numbers, and can be entered with 5 decimal places of precision.
  * Any instrument price information that is manually edited or added will be recorded in standard auditing reports.



**Note:** The fields noted in red are required fields.

Section | Field | Description  
---|---|---  
Price Details | Price Source | The source of where the associated current price came from. This field is mandatory when prices are added/loaded onto an instrument.  
| Adjustment | Denotes whether the price is applicable for Today, T+1, T+2, T+3.  
Prices | Current Date | The date the price was last updated.  
| Current Dirty Bid | The highest price a buyer will pay for the instrument.  
| Current Dirty Mid | The average market rate of the bid and ask rates.  
| Current Dirty Ask | The minimum price that a seller is willing to take for the security.  
| Updated Date | Today's date.  
| Updated Dirty Bid | The updated highest price a buyer will pay for the instrument.  
| Updated Dirty Mid | The updated average market rate of the bid and ask rates.  
| Updated Dirty Ask | The updated minimum price that a seller is willing to take for the security.  
  
**Note:** If the approval process enabled, the price changes made in above will not be truly saved to the database until they are fully approved. Instead the price record will become locked for approval until either approved or rejected. See [Approvals Process for Instrument Prices](<instruments_approvals.md>) for more details.

## Misc

Field | Description  
---|---  
Asset Country | Records the domicile of the underlying assets of the Bond.  
Bullet | Indicates whether the debt instrument can be redeemed prior to maturity or not. Bullet bonds are "non callable", and are payable at maturity only.  
Credit Linked Notes | Indicates whether the debit instrument has an embedded credit default element or not.  
Putable | Indicates whether the debt instrument has an embedded put option or not.  
Callable Bond | Indicates whether the debt instrument is callable or not.  
DTC Eligible | Indicates whether or not the Instrument can be cleared through the Depository Trust Corporation.  
Senior | Indicates whether the Instrument is subordinated or not. If the Instrument is Senior it is not subordinated and ranks higher in the order of priority in the event of liquidation of the issuer.  
Convertible Bond | Indicates whether the bond is a convertible or not.  
Guaranteed | Indicates whether the debt instrument is Guaranteed (the Principal and/or Interest Payments are guaranteed by an entity other than the Issuer) or not.  
Sinkable Fund | Indicates whether the debt instrument is backed by a sinkable fund or not.  
Covered Bond | Indicates whether the debt instrument is secured by a covered pool of mortgage loans.  
Private Placement | Indicates whether the debt instrument results from a private placement.  
  
## Coupon

Many Collateral Practitioners wish to know in advance when debt instruments in their Collateral Inventory are scheduled to be paying a coupon. Practitioners can then plan how they wish to treat the forthcoming coupon event. Some may wish to process the coupon payments, whereas others may wish to arrange substitutions for the respective bonds.

The functionality to substitute bonds in this scenario is outlined in [Inventory Management: Upcoming Coupons](<upcomingcoupons.md>).

In order for the system to identify forthcoming coupon events on debt instruments, the date of the next coupon payment must be populated on the Instrument.

  * Ex-Date
  * Next Coupon Date



It is anticipated that most users will load next coupon date information for debt Instruments via the [Instrument Import File](<import_instruments.md>).

Field | Description  
---|---  
Coupon Type | The type of coupon payable on the Instrument. A coupon types can be [added](<reference.md#adding-reference-data>) through reference data.  
Coupon | The coupon percentage applicable to the Instrument.  
Ex-Date | The date on which the seller, and not the buyer, of an instrument will be entitled to a recently announced coupon. The ex-date is usually two business days before the record date.  
Record Date | The establishment of whom the bond owner is for the purposes of paying the coupon on coupon date is determined on a date known as "Record date".  
Next Coupon Date | Date on which the debt instrument coupon is paid.  
Index Linked | Indicates whether the coupon for this Instrument is linked to an index.  
  
Some validation will be performed on the data entered:

  * If a next coupon date is entered before today (taken from today's date of the Application server), a warning indicator will appear stating that the next coupon date occurs before today.
  * If a next coupon date is entered that is greater than the Instrument's maturity date, a warning indicator will appear stating that the next coupon date is greater than Maturity Date.



These warnings are provided for information purposes only and do not prevent the Instrument and next coupon date from being saved.

## Issuer

Field | Description  
---|---  
Issuer Domicile | The domicile of the Issuer. A domicile can be [added](<reference.md#adding-reference-data>) through reference data.  
Issuer Type | The type of the issuer. An issuer type can be [added](<reference.md#adding-reference-data>) through reference data.  
Issuer Industry Sector | The Industry Sector of the Issuer. An industry sector can be [added](<reference.md#adding-reference-data>) through reference data.  
Issuer Industry Group | The Industry Group of Issuer. An industry group can be [added](<reference.md#adding-reference-data>) through reference data.  
Amount Issued | The amount of the Instrument that was originally issued.  
Amount Outstanding | The amount of the Instrument remaining in circulation.  
Collateral Type | The collateral type associated to the Instrument. A collateral type can be [added](<reference.md#adding-reference-data>) through reference data.  
  
## Ratings

Field | Description  
---|---  
S&P Watch | Indicates whether an Instrument is on ratings watch with S&P.  
  
The options are:  
Negative  
Positive  
Developing  
Moodys Watch | Indicates whether an Instrument is on ratings watch with Moodys.  
  
The options are:  
Negative  
Positive  
Developing  
Fitch Watch | Indicates whether an Instrument is on ratings watch with Fitch.  
  
The options are:  
Negative  
Positive  
Developing  
Number of Ratings | Number of ratings received for the Instrument.  
  
## ABS/MBS

Field | Description  
---|---  
ABS/CMO Asset Class | The CMO or ABS Asset Class. Multiple classes can be used for one Instrument by selecting all of the appropriate check boxes.  
Instrument Underlying Sector | The underlying sector for asset backed securities.  
Percent Single Family | The percentage of underlying mortgages in a pool which are owner occupied 1-4 family loans (that is, not multi-family).  
Weighted Average FICO | The FICO score is a credit score used by lenders as a component in how they set the interest rate they will charge for a loan. This is the weighted-average credit score of all the underlying mortgages.  
Agency | Indicates whether or not the Instrument is an agency bond.  
Mortgage Factor | A decimal value reflecting the proportion of the outstanding principal balance of a mortgage security, which changes over time, in relation to its original principal value.  
Prime | Used to define the credit quality of the lender.  
  
The choices are:  
Prime  
Subprime  
  
**Note:** This field cannot be loaded using an import configuration. It can only be manually input.  
Weighted Average Life | The average amount of time that will elapse from the date of a security's issuance until each dollar of principal is repaid to the investor. Quoted in years.  
Bond Purpose | The bond purpose for municipal bonds.  
Municipal Region | The U.S region where the underlying pool of loans originates from.  
Seasoning | When a pool of mortgages (or other cashflows for ABS) is securitized, some of the mortgages may have been existence for a period of time. The seasoning indicates the average period of time underlying obligations have been in existence.  
Weighted Average Loan Size | Weighted-average size of the underlying loan. Quoted in thousands.  
Credit Enhanced | Indicates whether or not the Instrument is credit enhanced.  
Municipal State | The U.S state where the underlying pool of loans originates from.  
Second Lien Percentage | The percentage of the underlying mortgages on which there is a second lien (refinancing).  
Weighted Average LTV | This is the weighted-average of the ratios between each mortgage's Unpaid Principal Balance (UPB) as of the note date and either:  
  
1\. in the case of a purchase, the lesser of the appraised value of the mortgaged premises on the note date or the purchase price of the mortgaged premises  
2\. in the case of a refinancing, the appraised value of the mortgage premises on the note date.  
Fund Source | The fund source for municipal bonds.  
Pass Through | Indicates whether the Instrument is "pass-through" or not. Proceeds from an underlying mortgage pool are passed on to investors.  
Weighted Average Coupon | The weighted-average of the current interest of the mortgages in a pool.  
Weighted Average Maturity | The current weighted-average remaining time to maturity of the loans/pools backing mortgage backed securities. Quoted in months.  
  
## Extensions

The system provides the flexibility for users to create their own parameters on the Instrument Object. These parameters are termed "Extensions".

[Instrument Extensions](<reference_related_data.md#extensions>) are created in [Reference Data](<reference.md>). Once created, they can be seen, and their values updated on the Extensions Tab on the Agreement form.
