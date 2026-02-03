# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/view_eligibility_breaches.html

# View Eligibility Breaches

When a Collateral Positions is selected on an Agreement, the system checks to see whether the Instrument of the Position on the Collateral Movement matches the following Agreement Eligibility rules:

  * [Basic Eligibility](<basiceligibility.md>)
  * [Advanced Eligibility](<advancedeligrules.md>)
  * [Ratings Based Eligibility](<ratingbasedeligrules.md>)
  * [Wrong Way Risk Eligibility](<wrongwayrisk.md>)



Within the Agreements Positions grid, Eligibility is one of the fields displayed.

If there are any eligibility breaches on a collateral position or in transit movement on the agreement, the field will display a ![ineligible.jpg](Images/ineligible.jpg).

To view the breaches, follow the below procedure.

**Procedure**

  1. Select the ![dotdotdot.jpg](Images/dotdotdot.jpg) icon for a specific position; a menu will appear.
  2. Select the **View Eligibility Breaches** and a new window will open up at the bottom of the page with the eligibility breaches information.



The Eligibility Breaches grid will display the following information for the selected position:

Field | Description  
---|---  
Rule Name | This will read "Basic Eligibility" if that is the evaluation that has failed. If the failure is due to an Advanced and/or Ratings Based evaluation then this field will list the actual Rule Names that the movement has failed evaluations for.  
Reason | This provides additional information as to how the nature of eligibility failure.  
  
For Basic Eligibility breaches, the cause maybe that there are no eligible buckets set up on the Agreement for the instrument to fall into.  
  
Or because the instrument on the movement could fall into more than one collateral bucket assigned to the Agreement.  
  
For Advanced and Ratings Based Eligibility Failures, the failure is typically because one criteria on the rules have not been met. The reason field provides information as to which criteria these are.  
  
See [Eligibility and Concentration Breaches](<eligibility_and_concentration_breaches.md>) for more details.
