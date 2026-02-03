
# Debt Buckets

Debt buckets can be [added](<buckets.md#create-buckets>), [edited](<buckets.md#edit-buckets>), or [deleted](<buckets.md#delete-buckets>).

Required fields are noted in Red.

Section | Field | Description  
---|---|---  
General | Name | This name will be selected in agreements and referenced throughout the system so the name should be meaningful but kept short if possible. The name is a mandatory field so the bucket cannot be saved if this field has not been populated.  
| Currencies | Select one or more Currencies by clicking the drop-down menu. Click **Select All** to have all currencies associated with the bucket or click on each individual currency. When a currency is clicked on, it will move from _Unselected_ to the _Selected_ column. If this field is left blank then all currencies will be eligible in the bucket.  
| Instrument Types | Select one or more Instrument Types by clicking the drop-down menu. Click **Select All** to have all Instrument Types associated with the bucket or click on each individual instrument type. When an instrument type is clicked on, it will move from _Unselected_ to the _Selected_ column. If this field is left blank then all instrument types will be eligible in the bucket.  
| Issuers | Select one or more Issuers by clicking the drop-down menu. Click **Select All** to have all Issuers associated with the bucket or click on each individual Issuer. When a Issuer is clicked on, it will move from _Unselected_ to the _Selected_ column. If this field is left blank then all issuers will be eligible in the bucket (provided they meet the other criteria).  
Maturity & Issue Bands | Maturity Method | If Maturity Date criteria is defined, an appropriate Maturity Method must be selected.  
  
The choices are:  
  
**Remaining** \- The maturity of the instrument is calculated from today to the Maturity Date.  
  
**Original** \- The maturity of the instrument is calculated from it's original Issue Date to the Maturity Date.  
  
**Note:** If a Maturity Method is defined, then a Maturity Band is required.  
| Maturity Band | If a Maturity Method has been selected, the Maturity Band fields become active and a warning symbol will appear. When hovering over the warning symbol, it will state "At least one bound maturity band is required".  
  
**First Row:** This is used to define the minimum maturity conditions.  
  
The first drop-down list contains the operators.  
These are:  
> (greater than)  
>= (greater than or equal to)  
= (equal to).  
  
Enter into the second box the relevant number. The maximum accepted is 999.  
  
The third drop-down list contains the maturity criteria. The options are:  
Days  
Months  
Years  
  
**Second Row:** This is used to define the maximum maturity conditions.  
  
The first drop-down list contains the operators.  
These are:  
< (less than)  
<= (less than or equal to)  
  
**Note:** It is not necessary to complete both rows.  
  
Example: A bucket can be created for instruments with a remaining maturity of less than 30 years by just completing the bottom row.  
  
If the Maturity Band is defined which is not feasible, a warning symbol will appear. When hovered over it, it will state "Maturity Band range is invalid". The maturity band must be fixed before the bucket can be saved.  
| Issue Band | If Issue Date criteria needs to be included on the Debt Bucket, define the Issue date banding that will be used when evaluating Instruments.  
  
Essentially, the banding is defined in the same way as with Maturity Dates with the exception that the banding will be applied to an Instrument's Issue Date, and that maturity method is not used.  
  
**First Row:** This is used to define the minimum issue date conditions.  
  
The first drop-down list contains the operators.  
These are:  
> (greater than)  
>= (greater than or equal to)  
and = (equal to)  
  
Enter into the second box the relevant number. The maximum accepted is 999.  
  
The third drop-down list contains the date criteria.  
The options are:  
Days  
Months  
Years  
  
**Second Row:** This is used to define the maximum issue date conditions.  
  
The first drop-down list contains the operators.  
These are:  
< (less than)  
<= (less than or equal to)  
  
**Note:** It is not necessary to populate both rows.  
  
Issue Date bands are validated to ensure they are feasible. When calculating the time that has elapsed since an Instrument's Issue Date, the system does not employ any Maturity Method, merely the difference in time between today (taken from the application server's date) to Issue date.  
Ratings | All Ratings Required | Rating Evaluation criteria can be defined which can be used with both Instrument Ratings and Issuer Ratings.  
  
If the bucket includes more than one rating agency it will be needed to specify whether all of those ratings must be supplied for the instrument in order for it to be considered eligible.  
  
If all ratings must be supplied then click the checkbox.  
  
If the **All Ratings Required** box is selected, the first check will determine whether all relevant ratings have been supplied for the instrument.  
  
If, for example, the bucket has ratings criteria for Fitch, Moody's and S&P ratings and only a Moody's and S&P rating have been supplied for the instrument, it will automatically be considered ineligible regardless of whether the Moody's and S&P ratings meet the criteria.  
  
If this checkbox is cleared, the eligibility check will continue even though the Fitch rating is missing.  
| Rating Evaluation | Using only the ratings which have been supplied, the system will determine whether the instrument is eligible for this bucket according to which which option is chosen.  
  
**Use higher rating** \- The highest of the ratings supplied will be used to determine whether the instrument is eligible for this bucket.  
  
**Use lower rating** \- The lowest of the ratings supplied will be used to determine whether the instrument is eligible for this bucket.  
Instrument Ratings | Structure | **ADD** \- To add an Instrument Rating to a new bucket, click the **Edit** button. Select the debt structure for the required ratings.  
This can be either short term or long term but not a combination of both. This determines which agencies can then be selected and the values for the ratings themselves.  
  
**EDIT** \- To edit an Instrument Rating, click the **Edit** button to the debt bucket, then click the **Edit** button on the rating.  
  
**DELETE** \- To delete an Instrument Rating, click the **Edit** button to the debt bucket, then click the **Clear** button. The **Save** button must be clicked to save the changes made.  
| Agencies | One of the agencies must be selected as the Reference Agency. This will be the primary agency that is used to determine the rating equivalencies.  
| Reference Agency | It is essential to select a Reference Agency that has all ratings defined for the ratings band that needs to cover the bucket.  
  
**Note:** Not all Rating agencies have equivalencies defined for every ordinal within a debt structure. There may be situations where gaps exists.  
| Band Condition | The first two drop-downs is used to define the minimum rating conditions, the lower band, and the next two drop-downs are used to define the maximum rating conditions, the upper band.  
  
If the band is selected where lower band is greater than the upper band, then an error message will appear and the rating will not be able to be saved.  
Issuer Ratings | Structure | **ADD** \- To add an Issuer Rating to a new bucket, click the **Edit** button. Select the debt structure for the required ratings.  
This can be either short term or long term but not a combination of both. This determines which agencies can then be selected and the values for the ratings themselves.  
  
**EDIT** \- To edit an Issuer Rating, click the **Edit** button to the debt bucket, then click the **Edit** button on the rating.  
  
**DELETE** \- To delete an Issuer Rating, click the **Edit** button to the debt bucket, then click the **Clear** button. The **Save** button must be clicked to save the changes made.  
| Agencies | One of the agencies must be selected as the Reference Agency. This will be the primary agency that is used to determine the rating equivalencies.  
| Reference Agency | It is essential to select a Reference Agency that has all ratings defined for the ratings band that needs to cover the bucket.  
  
**Note:** Not all Rating agencies have equivalencies defined for every ordinal within a debt structure. There may be situations where gaps exists.  
| Band Condition | The first two drop-downs is used to define the minimum rating conditions, the lower band, and the next two drop-downs are used to define the maximum rating conditions, the upper band.  
  
If the band is selected where lower band is greater than the upper band, then an error message will appear and the rating will not be able to be saved.  
  
**Note:**

  * Issuer and Instrument Rating bands may use different debt structures to each other.
  * Collateral Buckets are [audited](<audit.md>) in the standard manner.
  * There are particular conditions regarding short term ratings.

    * Due to the missing ordinal 2 for Short Term ratings, if S&P or Fitch is used as the reference agency and ordinal 2 is used in the band there are special conditions applied:
    * If = is used and a rating equivalent to ordinal 2 is selected, the ratings will be displayed as shown below:

![bucket_instrument_rating.jpg](Images/bucket_instrument_rating.jpg)

    * If > or >= is used together with a rating equivalent to ordinal 2 then when displaying the band for Moodys, the value >= P-1 is displayed.
    * If < or <= is used together with a rating equivalent to ordinal 2 then when displaying the band for Moodys , the value <= P-2 is displayed.
  * Blank fields indicate "all". Where multiple criteria are used, each of those criteria must be satisfied in order for an Instrument to be eligible in the bucket.



