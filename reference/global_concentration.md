# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/global_concentration.html

# Global Concentration Limits

## Overview

Global Concentration Limit rules can be defined for either held or posted collateral positions across the application. The rules will evaluate the collateral positions and display any breaches.

## Search Criteria

When entering the screen, all Global Concentration Limits are returned.

To filter the Global Concentration Limits based on the _Status Filters_ , click on the drop-down located at the top of the page labeled **Status Filters**.

One, multiple or all statuses can be selected or deselected to return a selected group of Global Status Limits.

## Grid Features

The global concentration limits grid can be [sorted](<grid_features.md#sorting>), [paged](<grid_features.md#paging>), [exported](<grid_features.md#export-grid>), [reorder columns](<grid_features.md#reorder-columns>), and fields can be [disabled or resized](<grid_features.md#display-and-resizing-columns>).

## Create Limit

**Procedure**

  1. Click on the **Create** button located on the right side of the screen and a pop up window will appear.
  2. At a minimum, fill in the required fields which are noted by a red asterisks next to the field label.
  3. The **Save** button will become visible when all the required fields are entered. Click the Save button when complete.



The fields available are the following:

**Note:** Fields in red are required. Additional fields required will be noted next to the greyed out **Save** button in the bottom right side of the pop up window. The **Save** button will not become enabled until all required fields are entered.

Section | Field | Description  
---|---|---  
General | Rule Name | Give the concentration rule a name. This name will be referenced when a concentration rule is broken so the name should be meaningful but kept short if possible.  
  
Example: "Issuer Type: Max 60% Corp." The rule cannot be saved if this field has not been populated.  
| Position Type | The type of position (Held or Posted) that the rule applies to.  
Rule | Amount | Enter the amount which is the maximum that can be held. This can be a value or a percentage amount. If the field is used as a percentage amount, the system will allow up to 3 digits after the decimal.  
| Value Checked Against | Select the collateral value that the amount is to be checked against.  
  
The options are:  
**Market Value in** \- Allows the user to specify a currency other than Agreement or [System Currency](<system_currency.md>). Where a specific currency is used, the collateral values loaded in Agreement or [System Currency](<system_currency.md>) are converted using the latest available FX Rate. Where an FX Rate does not exist for the currency a validation message will be generated.  
  
**Market Value in System Currency** \- The amount to be checked will be compared to the maximum or minimum post haircut market value which can be held. The value is displayed in the [System Currency](<system_currency.md>).  
  
**Percent of Amount Issued** \- The amount to be checked will be calculated as a percentage of the amount of the instrument originally issued. Any rules used with this option compare the current notional position held in that issue for the relevant agreement against the current Amount Issued value for that instrument. Can only be used with the "maximum" option.  
  
**Percent of Amount Outstanding** \- The amount to be checked will be calculated as a percentage of the amount of the instrument outstanding in circulation. Any rules used with this option compare the current notional position held in that issue for the relevant agreement against the current Amount Outstanding value for that instrument. Can only be used with the "maximum" option.  
  
**Percent of Total Collateral Held** \- The amount to be checked will be calculated as a percentage of the total post haircut market value of the current collateral position and compared against the percentage to be maintained in the concentration rule.  
Criteria | Can come from **A Specific** or **Any Single** | The rule should be set up with a specific or any single group. Choose from the drop down of the following values:  
Collateral Bucket  
Collateral Group  
Collateral Type  
Instrument  
Instrument Class  
Instrument Currency  
Instrument Type  
Issuer  
Issuer Domicile  
Issuer Entity Group  
Issuer Industry Sector  
Issuer Type  
  
**Note:** When the value to check against is **Percent of Amount Outstanding** or **Percent of Amount Issued", the only choice is Instrument.  
  
** Example:**  
To ensure that a maximum of 60% of the collateral that is being held under this agreement has been issued by corporates. In this case the "specific" Issuer Type which is corporate would be selected.  
or  
To ensure that no more than 10% of the Amount Outstanding is being held in a "single" issue. In this case, the calculation will be checked for every single issue currently held under the agreement.  
| which is | Choose the attribute values to be included (**In**), excluded (**Not In**) or **Not Only In** when the calculation is performed.  
See [examples](<#concentration-rule-examples>) of the use of "In" and "Not In".  
| Attribute Values | The attribute values available will be based upon what value was selected for the **Specific** or **Any Single** field.  
  
**Example:** If the **Specific** value is **Instrument Class** then the values available will be all the values defined under Instrument Class.  
| and where | It is possible to specify up to two additional criteria for the rule by selecting the "where" check boxes  
  
## Edit Limit

**Procedure**

  1. Click on the **Edit** ![edit_icon.jpg](Images/edit_icon.jpg) icon next to the item that needs to be modified.
  2. Make the necessary changes and click the **Save** button to commit the changes.



## Delete Limit

**Procedure**

  1. Click on the **Delete** ![delete_icon.jpg](Images/delete_icon.jpg) icon next to the item that needs to be delete.
  2. A pop-up screen will appear asking if this action is what needs to be done.
  3. Click the **Delete** button to proceed with the action or click **Cancel** to abort the action.



## Calculate Limit

The default sorting order is by Rule name.

**Procedure**

  1. Select a global concentration limit by clicking the radial button to the left of the rule.
  2. Click the **Calculate** button to calculate the Global Concentration Rule Limit.
  3. After the _Calculate_ button is clicked, the status of the rule will have an _In Progress_ symbol. Refresh the page or click the **Refresh** button at the top of the page to see that the calculation has completed.



The description of the displayed fields and the status of the calculation results are noted below.

Field Name | Field Description  
---|---  
Actions | This column allows a user to view a detailed result, edit or delete a Global Concentration Limit.  
Status | The current overall status of this Global Concentration Rule. There is also an individual status for each position within the rule. See Viewing the Results of Global Concentration Limits.  
  
| Symbol| Status| Desription  
---|---|---  
![run_task_fail.jpg](Images/run_task_fail.jpg)| Failed| The limit has not been calculated due to one of the following items of data being missing:  
  
\- FX Rate required in the calculation  
\- Amount Issued or Amount Outstanding (only where these parameters are used in the calculation)  
![run_task_warning.jpg](Images/run_task_warning.jpg)| Breached| The limit has been calculated and has resulted in a breach situation.  
![run_task_success.jpg](Images/run_task_success.jpg)| Passed| The limit has been calculated and no breach has occurred.  
![run_task_in_progress.jpg](Images/run_task_in_progress.jpg)| In Progress| The limit is in the process of being calculated.  
![run_task_queued.jpg](Images/run_task_queued.jpg)| Not Run| The limit has not yet been calculated.  
Rule | The name of this Global Concentration Rule.  
Type | Indicates whether this rule is to be calculated against the Collateral Held or the Collateral Posted positions.  
Description | The Description of the rule as created in the Concentration Rule Builder.  
Requested By | The user id of the user that last ran the calculation.  
Calculated Date | The date and time that this rule was last calculated. The time displayed is the start time and corresponds to the application server.  
  
## View

### Results

After the Global Concentration Limits rule has been run, the results can be viewed by clicking on the magnifying icon located under the Actions column in the grid.

  * Where no collateral positions exist at all, or no positions exist which fall within the criteria of the limit, the Status of the calculation will be Passed with a Result value of zero.
  * Where collateral positions exist which do fall within the criteria of the limit but do not exceed the limit, the Status of the calculation will be Passed and the total amount of that specific item held will be displayed in the Result value.
  * Where the rule has a Breached Status, the Result displays the current position for that limit.



After clicking on the view icon, the page will expand and the latest results will display with the following fields:

Field | Description  
---|---  
Status | The result of the global concentration limit run.  
  
| Symbol| Desription  
---|---  
![completed_successfully_icon.jpg](Images/completed_successfully_icon.jpg)| The result is within the limit and when the icon is hovered over it will show _Passed_.  
![warning_icon.jpg](Images/warning_icon.jpg)| the result exceeds the limit and when the icon is hovered over it will show _Breached_.  
![failed_icon.jpg](Images/failed_icon.jpg)| The limit was not able to run and when the icon is hovered over it will show _Failed_.  
Result | This will show the value that is calculated based on the rule.  
Context | When a limit is set up to be a specific, no context is displayed.  
  
**Example:** A Maximum of 1,000,000 Market Value In USD can come from a **_specific_** Instrument which is in ("US912810CS51").  
  
In this case, the Instrument is not listed.  
![GCL_example2.jpg](Images/GCL_example2.jpg)  
  
When a limit is set up as a single, the results will show each individual value of the category that the rule is checking.  
  
**Example:**  
A maximum of 100m Market Value in System Currency can come from any **_single_** Instrument Class.  
  
In this case, each Instrument class is listed.  
![GCL_example1.jpg](Images/GCL_example1.jpg)  
  
### Collateral Positions

In order to see more detailed information about the position(s) used in the calculation, for example, which counterparties or agreements it has been taken from, this can be viewed by clicking on the view icon next to the results. This will expand the page and list the collateral position(s) used in the calculation.

The fields displayed in the grid are listed below in the default display order:

  * Agreement
  * Business Line
  * Instrument ID
  * Instrument Description
  * Maturity Date
  * Notional
  * Instrument Ccy
  * Mkt Value (Sys) - This is the post haircut market value calculated using latest prices, valuation percentages and FX rates.
  * Issuer
  * Issuer Domicile
  * Instrument Class
  * Instrument Type
  * Managing Location
  * Counterparty



A total of _Mkt Value (Sys)_ will be displayed at the bottom of the page.
