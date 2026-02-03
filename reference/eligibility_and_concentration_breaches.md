
# Eligibility and Concentration Breaches

## Basic Eligibility Breaches

There are three types of Basic Eligibility breach, each with it's own "Reason" displayed on the Eligibility and Concentration Breaches Report:

  1. No Basic Eligibility buckets have been defined in TLM® Collateral Management so the check cannot be completed. The reason displayed is **"Instrument is not eligible. No buckets are defined to check further eligibility"**.
  2. Basic Eligibility buckets have been defined but the instrument does not fall into any of them: **"The basic eligibility checks failed."**
  3. The Basic Eligibility buckets set up in TLM® Collateral Management are invalid such that an instrument could fall into more than one bucket: **"Error: Instrument exists in multiple buckets, only allowed to exist in one. Please review bucket configuration"**.



## Advanced Eligibility Breaches

If an instrument fails an Advanced Eligibility rule the name of the "Rule Broken" is displayed along with the "Reason". For example, a rule is set up to check that for mortgage-backed securities the Percent Single Family is greater than 95%. The rule is called "US MBS". The instrument only has a Percent Single Family of 90%. The following would be displayed:

## Ratings Based Eligibility Breaches

There are six types of Ratings Eligibility breach, each with it's own "Reason":

  1. The rule requires that "all specified ratings are required" for the Party but not have all the ratings for the Party being evaluated have been specified. The reason displayed is **"Party rating method requires that all selected party rating agencies ratings are supplied"**.
  2. The rule requires that "all specified ratings are required" for the Instrument but not have all the ratings have been specified for Instrument being evaluated. The reason displayed is **"Instrument rating method requires that all selected instrument rating agencies ratings are supplied"**.
  3. The Counterparty rating supplied does not fall within the specified band: **"Counterparty rating does not fall within the rating eligibility rule band"**.
  4. The Principal rating supplied does not fall within the specified band: **"Principal rating does not fall within the rating eligibility rule band"**.
  5. The Instrument rating supplied does not fall within the specified band: **"Instrument rating does not fall within the rating eligibility rule band"**.
  6. The rating supplied for the Counterparty or Principal is not in the list of ratings for this rule. For example, the rule uses Moodys' Long Term ratings for the Counterparty but the Counterparty only has a Moodys' Short Term rating defined (or no rating at all defined). The reason displayed is **"Agency of rating supplied was not in list of selected party agencies for this rule"**.
  7. The rating supplied for the Instrument is not in the list of ratings for this rule. For example, the rule uses Moodys and S&P ratings for the Instrument but the Instrument only has a Fitch rating supplied: **"Agency of rating supplied was not in list of selected instrument agencies for this rule"**.



## Wrong Way Risk Eligibility Breaches

There are two types of Wrong Way Risk Eligibility breach, each with it's own "Reason":

  1. The rule requires that Posted Collateral Positions and Movements are not for the same Issuer that exists within the same Entity Group as the Principal. The reason displayed is **"Wrong Way Risk breached. Instrument Issuer matches Principal entity group issuer"**.
  2. The rule requires that Held Collateral Positions and Movements are not for the same Issuer that exists within the same Entity Group as the Counterparty. The reason displayed is **"Wrong Way Risk breached. Instrument Issuer matches Counterparty entity group issuer"**.


