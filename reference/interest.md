# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/interest.html

# Interest

## Background

Interest Payments are created at an individual currency level per margin type, per position type (held and posted), per Agreement. Interest Payments generated on Held and Posted Payments are netted should the agreement be defined as such, otherwise they are created gross.

Interest Payments are treated in one of two ways:

  * They can be rolled into a party's corresponding cash collateral balance.
  * They can be paid back or Distributed to the owed party.



## Search Criteria

While viewing any of the interest payments in any of the [preset filter screens](<interest_workflow.md>), global filters can be applied which will propagate across all preset filter screens. If multiple filters are applied then all requirements must be met in order for data to be returned.

The data returned will be ordered by an ascending period end date then secondary by agreement name.

The fields available are the following:

Field | Description  
---|---  
[Workflow State](<#workflowstate>) | The option to select one, multiple or all values of Due To Prin, Due to Cpty, Due to be Sent, Sent, Agreed or Approved. This will return both standard and group interest payments.  
[Direction](<#direction>) | Select a state of either Due to Principal or Due to Counterparty.  
[Agreement Name](<#agmtname>) | Enter all or part of the agreement name. The field is case insensitive and an asterisk (*) can be used as a wild card.  
Responsibilities | Select **ALL** to see items for Agreements from the superset of [Agreement Responsibilities](<agreements_settleinstr.md#agreement-responsibility-groups>) that the user is assigned to, or select a specific Agreement Responsibility. When one or multiple responsibilities is (are) selected, the Agreement Group will be disabled.  
  
This can be used to filter out grouped interest payments.  
[Groups](<#groups>) | Select from the list of defined Agreement Groups. When an Agreement Group(s) is (are) selected, the Responsibility will be disabled.  
  
This can be used to filter out standard interest payments.  
Managing Location | Select one managing location from the drop down list defined or select blank for all principal managing locations to return all.  
Business line | Select one business line from the drop down list defined or select blank for all business lines to return all.  
[Principal](<#principal>) | Select a single Principal.  
[Counterparty](<#counterparty>) | Select a single Counterparty.  
[Currency](<#ccy>) | If currency is a field that needs to be filtered on, only one currency can be selected.  
[Margin Type](<#margintype>) | Select one of the these four values are available:  
Guarantee  
Lock Up  
Surplus  
Variation  
[Market Index](<#index>) | Select an index that the held or posted index will match.  
[Payment Type](<#preference>) | Select either Distribute or Roll In.  
Period End Date | Interest Periods are defined in terms of when they end and how frequently they recur. Interest Periods are used in the calculation of accrual amounts and when the Interest accruals should then be transformed into Interest Payments. The default value is to return **_Active Only_** payments, meaning, payments that do not have a workflow state of completed. When a From/To date is selected, all payments which will include open, current and historical payments will get returned depending if they fall into the selected date range.  
  
This filter will be applied after pressing the **Search** button and the filter will be maintained across all predefined filters until the fields are cleared. 

To clear the fields, click on the **Clear Filters** button.

## Grid Features

The interest grid can be [sorted](<grid_features.md#sorting>), [paged](<grid_features.md#paging>), [exported](<grid_features.md#export-grid>), [reorder columns](<grid_features.md#reorder-columns>), and fields can be [disabled or resized](<grid_features.md#display-and-resizing-columns>).

## Interest Grid View

The fields that exist on the Interest screen are noted below. The fields that data can be [filtered](<#search-criteria>) on are highlighted in red.

Fields | Comments  
---|---  
Actions | There are two options under the Actions column.  
  
| Action| Description  
---|---  
View Details| XXX  
View Settlement Instructions| When the view Settlement Instructions is selected, the data is displayed below the current grid.  
  
When the data is returned, it will be read-only details for both Receiver and Sender for each movement.The settlement instructions are available when the movement is in the following workflow states for distributions:  
\- Sent - to be Agreed- Agreed - to be Approved  
\- Approved - to be Distributed  
  
See [Settlement Instructions](<agreements_settleinstr.md#settlement-instructions>) for more information regarding Settlement Instructions.  
Workflow State | The current state of the Interest Payment. All workflow states can be viewed within the **All** workflow preset filter or the specified workflow filter noted in the below grid.  
  
A Payment can only have one current state as follows:  
  
| State| Workflow Preset Filter| Standard/  
Grouped| Description  
---|---|---|---  
Due to Prin - to be Sent| To Be Started| Standard| Opening state for an Interest Payment that is owed to the Principal.  
Due to Cpty - to be Sent| To be Started| Standard| Opening state for an Interest Payment that is owed to the Counterparty.| Due to be Sent| To be Started| Grouped| Opening state for an Interest Payment that is owed to the Counterparty or Principal.  
Sent - To Be Agreed| In Progress| Standard| The Interest Payment has been advanced to the Sent Workflow state, and the system will have attempted to email an Interest Statement to the defined contacts on the Agreement. The Status field will indicate whether the sending of the Interest Statement has been successful.| Sent| In Progress| Grouped| The Interest Payment has been advanced to the Sent Workflow state, and the system will have attempted to email an Interest Payment Summary File to the Agreement Group Interest Contact. The system will attempt to email individual Interest Statement to the defined contacts on the Agreement.  
Agreed - to be Approved| Approvals| Standard/  
Grouped| The Interest Payment is waiting for approval.  
Approved - to be Distributed| Confirmed| Standard| The Interest Payment has been approved by a manager / user with approval rights. The payment is awaiting settlement.| Approved - to be Rolled In| Confirmed| Standard| The Interest Payment has been approved by a manager / user with approval rights. The payment is awaiting settlement.  
Approved - to be Settled| Confirmed| Grouped| The Interest Payment has been approved by a manager / user with approval rights. The payment is awaiting settlement.  
Completed| Confirmed| Standard/  
Grouped| The Interest Payment has settled.  
Status | The status of the last action that was performed on the payment.  
  
| Symbol  
---  
Description  
![completed_successfully_icon.jpg](Images/completed_successfully_icon.jpg)| Represents a successful action of the interest payment.| ![warning_icon_workflow.jpg](Images/warning_icon_workflow.jpg)| Represents a warning that the action needs attention.| ![inprogress_icon.jpg](Images/inprogress_icon.jpg)| Represents that an action is currently processing.  
![rejected_status.jpg](Images/rejected_status.jpg)|  Represents a rejected action. By hovering over the icon, it will display the user id and timestamp along with the reject reason.  
![failed_icon.jpg](Images/failed_icon.jpg)| Represents an action has failed. By hovering over the icon, it will display the reason of why the action failed. An example may be data missing from the configuration or information is missing from the contact on the agreement. | Calc Status | The **calculation** status of the interest accrual calculation.  
  
| Symbol  
---  
Description  
![completed_successfully_icon.jpg](Images/completed_successfully_icon.jpg)| Represents a successful transition of the interest.| ![warning_icon_workflow.jpg](Images/warning_icon_workflow.jpg)| Represents a warning that the call needs attention. An example may be that the payment does not include interest from the most recent payment period.| ![recalculated_icon.jpg](Images/recalculated_icon.jpg)| Represents that the interest have been recalculated.  
![failed_icon.jpg](Images/failed_icon.jpg)| Represenets the transition has failed. An example may be data missing from the configuration or information is missing from the contact on the agreement. | Messaging Eligible | Interest Payment that meets the [criteria](<messaging_interest_grouped.md#behavior-for-messaging-grouped-interest-payment>) will have a check mark. It will be processed by electronic messages communicated between the Principal and Counterparty using the Acadia integration infrastructure.  
Grouped | Indicator for a grouped interest payment.  
Agreement Name | The agreement for which the accrual is being calculated.  
Margin Type | The Margin Type for the Open Accrual.  
  
This is based on the margin type of the underlying cash collateral position.  
  
For those OTC agreements that segregate lock up and collateral agreements, collateral positions can be either Lock Up or Variation margin types.  
  
For those OTC agreements that have lock up only calculation, collateral positions can only be Lock Up.  
  
For all other agreements, collateral positions, and therefore open accruals, are always for margin type Variation  
Direction | Direction is defined as:  
  
**Due to Principal** \- when the accrual has been calculated on a collateral position and resulted in Interest owed to the Principal. Typically this is when there has been a Posted Collateral Position. Interest Accrued amounts for this direction as shown in the system with positive signage.  
  
**Due to Counterparty** \- when the accrual has been calculated on a collateral position and resulted in Interest owed to the Counterparty. Typically this is when there has been a Held Collateral Position. Accrued amounts for this direction as shown in the system with negative signage.  
Preference | The defined preference for processing interest payments as specified in the agreement.  
  
Either Roll-In or Distribute.  
Currency | The Currency of the accrued interest.  
Accrued Interest | The interest accrual calculated from the Period Start Date to the date the Interest Calculation Task was run.  
  
When the direction is Due to Counterparty, the figure will be shown with negative signage; conversely, positive signage when due to Principal.  
Agreed Amount | The amount of Interest that has been agreed between the Principal and the Counterparty for the Interest Payment.  
Settlement Date | The settlement date entered for the Interest Payment.  
  
Date Interest Payment Item transitioned into the Sent - To Be Agreed state.  
  
Note that this Date is determined as being the current date in the Principal Managing Location of the Agreement at the time the item is transitioned in the Workflow.  
  
This can differ to the actual timezone that the user is working in.  
  
See [Understanding Date and Times](<understand_date_times.md>) for more information.  
Principal | The Principal for the Agreement  
Counterparty | The Counterparty for the Agreement  
Held Period Start | The start of the current Interest Period for accruals calculated from held cash positions.  
  
This is calculated as being the next calendar date after the previous Period End Date.  
  
If the Agreement is defined with gross interest payments, and the accrual is calculated on posted collateral positions, this field will be blank.  
  
This is always populated when the agreement is defined as netting interest payments  
Posted Period Start | The start of the current Interest Period for accruals calculated from posted cash positions.  
  
This is calculated as being the next calendar date after the previous Period End Date.  
  
If the Agreement is defined with gross interest payments, and the accrual is calculated on held collateral positions, this field will be blank.  
  
This is always populated when the agreement is defined as netting interest payments  
Period End | The Period End date for the Interest Payment shown. The Period End Date is defined on the agreement.  
Next Period End | The Period End Date for the next period after the current open payment.  
Held Index | The Index used to calculate the Interest accrual on held cash positions.  
  
This is defined under the Applies to Held (or both) cash collateral interest terms record for the agreement.  
  
If the Agreement is defined with gross interest payments, and the accrual has been calculated on posted collateral positions, this field will be blank.  
Post Index | The Index used to calculate the Interest accrual on posted cash positions.  
  
This is defined under the Applies to Posted (or both) cash collateral interest terms record for the agreement.  
  
If the Agreement is defined with gross interest payments, and the accrual has been calculated on held collateral positions, this field will be blank.  
Calculated Date | The time and date stamp of when the respective Interest Payment was calculated. These values are shown from the timezone perspective of the Principal Managing Location of the Agreement.  
  
To provide additional clarity the Managing Location is also recorded on the statement and read only report.  
  
See [Understanding Dates and Times](<understand_date_times.md>) for more information.  
Agreement Group | The group name where agreement(s) are part of a group.
