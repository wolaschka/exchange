
# How to Define Ratings for an Agency as Not Provided

## Overview

It is possible within TLM® Collateral Management to denote that certain ratings for a Rating Agency should be regarded as Not Provided.

That is, the system will effectively ignore this rating when it is set on any object.

This can have an affect on how the system interprets the basic eligibility of an instrument. See below for some examples.

There are certain prerequisites that must be met before ratings can be marked as not provided.

  * The Rating Agency must have been created.
  * Ratings for the Rating Agency must have been added to the debt structure equivalency.



## Adding a Rating as Not Provided

  1. Click the ![edit_icon.jpg](Images/edit_icon.jpg) next to the Rating Agency to be modified and the Edit Rating Agency window will appear.
  2. Click on the "Ratings to be treated as not provided" drop-down.
  3. Select one, multiple or all of the ratings moving them from the Unselected to the Selected columns.
  4. Click **Save** to commit the data changes.



## Examples

### Example 1

**Bucket defined without all ratings required and use lower of ratings (Basic Eligibility)**

Consider the following debt collateral bucket definition with the following instrument ratings defined.

![agency_not_provided_ex1_a.jpg](Images/agency_not_provided_ex1_a.jpg) ![agency_not_provided_ex1_b.jpg](Images/agency_not_provided_ex1_b.jpg)

The following are the criteria that govern whether a debt instrument will be covered by this bucket.

  * Instrument ratings are evaluated.
  * The debt instrument must have a Long term rating
    * (>=A+ from Fitch; >=A1 from Moodys; >=A+ from S&P)
  * Ratings from all 3 agencies are not required
  * The lowest level rating received will be used.
  * This bucket is assigned to Basic Eligibility for Agreement A Bank.



Consider the following debt instrument.

It is rated NR for Long Term debt structure by Fitch; AA by S&P and Aaa by Moodys.

![agency_not_provided_ex1_c.jpg](Images/agency_not_provided_ex1_c.jpg)

In terms of evaluating whether this instrument would be eligible the system applies the following logic.

  * 3 Long Term Ratings have been received.
  * The lowest of these ratings is NR (as recorded by Fitch).
  * NR is therefore selected as the evaluating rating.
  * NR is lower than the minimum instrument ratings required.



The Instrument is therefore ineligible:

![agency_not_provided_ex1_d.jpg](Images/agency_not_provided_ex1_d.jpg)

Consider the exact same example, but this time NR as a Long Term Rating from Fitch has been defined as Not Provided.

![agency_not_provided_ex1_e.jpg](Images/agency_not_provided_ex1_e.jpg)

This time the following logic applies:

  * The Rating of NR for the Instrument from Fitch is deemed not provided and therefore ignore.
  * In terms of evaluation, only 2 Ratings on the Instrument are considered - AA from S&P and Aaa from Moodys.
  * Both these ratings are above the level required on the collateral bucket.



The Instrument is therefore deemed eligible for A Bank.

![agency_not_provided_ex1_f.jpg](Images/agency_not_provided_ex1_f.jpg)

### Example 2

**Bucket defined with all ratings required and use lower of ratings**

This example is identical to Example 2, except the Debt Collateral Bucket is set up with **All Specified Ratings Required** check box enabled.

![agency_not_provided_ex2_a.jpg](Images/agency_not_provided_ex2_a.jpg) ![agency_not_provided_ex2_b.jpg](Images/agency_not_provided_ex2_b.jpg)

The following are the criteria that govern whether a debt instrument will be covered by this bucket.

  * Instrument ratings are evaluated in determining whether an Instrument is covered by this bucket.
  * To be considered, a debt instrument must have Long term ratings of
    * (>=A+ from Fitch; >=A1 from Moodys; >=A+ from S&P)
  * Ratings from all 3 agencies are required. If all ratings are not received then the instrument will automatically not be considered for this bucket.
  * The lowest level rating received will be used.
  * This bucket is assigned to Basic Eligibility for Agreement A Bank.



Consider the following debt instrument. It is rated NR for Long Term debt structure by Fitch; AA by S&P and Aaa by Moodys.

![agency_not_provided_ex2_c.jpg](Images/agency_not_provided_ex2_c.jpg)

In terms of evaluating whether this instrument would be eligible the system applies the following logic.

  * 3 Long Term Ratings have been received.
  * The lowest of these ratings is NR (as recorded by Fitch).
  * NR is therefore selected as the evaluating rating.
  * NR is lower than the minimum instrument ratings required.



The Instrument is therefore ineligible:

![agency_not_provided_ex2_d.jpg](Images/agency_not_provided_ex2_d.jpg)

Consider the exact same example, but this time NR as a Long Term Rating from Fitch has been defined as Not Provided.

![agency_not_provided_ex2_e.jpg](Images/agency_not_provided_ex2_e.jpg)

This time the following logic applie:

  * The Rating of NR for the Instrument from Fitch is deemed not provided and therefore ignored.
  * In terms of evaluation, only 2 Ratings on the Instrument are considered - AA from S&P and Aaa from Moodys.
  * As the bucket requires that ratings from all three agencies are received, the instrument is automatically not covered by the bucket, despite the other two ratings.



The Instrument is therefore deemed ineligible for A Bank.

![agency_not_provided_ex2_d.jpg](Images/agency_not_provided_ex2_d.jpg)
