
# Margin Calculation Analysis Task

## Overview

The Margin Calculation Analysis task should be run after its corresponding [Margin Calculation Configuration](<task_margin_calc.md>). This task calculates and saves additional data which can subsequently be viewed from a Margin Call (for example exposure trades and collateral positions used for a margin call) or in one of the Data Analysis reports.

## Create Task

  1. Within the Task Configuration screen, select _Margin Calculation Analysis_ Configuration from the filter drop-down.
  2. To create a new Margin Calculations Task, select the **Create Margin Calculation Analysis Configuration** button. 
  3. A pop-up screen will appear with the following fields made available:

**Note:** Fields in red are required.

Section | Field | Description  
---|---|---  
Configuration Details | Name | A unique name for the configuration.  
| Description | A meaningful description for the configuration.  
Margin Calculation Configurations | All | If 'All' Margin Calculation Configurations should be run for this task then check the radial button.  
| Include | It the Margin Calculation Analysis needs to be run for particular Margin Calculation Configurations, select "Include". Then click on the drop-down and select all, multiple or just one configuration. It can be cleared by clicking on the _Clear All_.  
  4. Click the **Save** button when all the required and additional fields needed have been filled in.




## Edit Task

  1. Within the Task Configuration screen, select _Margin Calculation Analysis Configuration_ from the filter drop-down.
  2. Select the configuration that needs modification by clicking on the configuration.
  3. A pop-up screen will appear where the data can be modified.
  4. Click the **Save** button when all the changes have been made.



## Delete Task

  1. Within the Task Configuration screen, select _Margin Calculation Analysis Configuration_ from the filter drop-down.
  2. From the results from the prior step, select a configuration that needs to be deleted by clicking in on a radial button. The **Delete** button will become visible.
  3. Click the **Delete** button.
  4. A popup window will appear confirming the deletion. Select _Cancel_ if this was pressed in mistake or select **Delete** to delete the configuration.



## Run Task

The task runs the analysis for any agreements which meet the criteria defined by the corresponding **Margin Calculation Configurations**. The margin calculation records included in the analysis are then flagged in the database as having been analyzed. If a margin calculation is subsequently re-run, the corresponding agreements will get re-set to not analyzed.

The next time the Margin Calculation Analysis task is run it will only try to analyze those agreements which are set as not analyzed. This is to ensure that when trades or collateral positions that are being viewed are associated to a margin calculation result, that they are just the trades or positions that were used in that calculation and not including trades and positions which may have been imported or updated after the calculation was run.

In order to ensure accurate analysis data corresponding to the margin calculation results, always run the corresponding Margin Calculation Analysis Configuration after running the Margin Calculation Configuration.

**Procedure**

  1. Within the Task Configuration screen, select _Margin Calculation Analysis Configuration_ from the filter drop-down.
  2. Select the configuration that needs to be run by clicking the radial button next to the configuration.
  3. The **Run** button will become enabled and available to be clicked.
  4. Click the **Run** button.
  5. The results can be viewed from the [Task Status](<task_status.md#results-of-the-task>) screen.



**Note:**

When the Margin Calculation Analysis Configuration is not run, the margin call workflow is impacted as follows:

  * Sending Exposure Statements (including custom statements) from the standard or group margin call workflow will fail and generate an error.
  * Viewing Exposure Trades from margin calculation result will be empty.
  * Viewing Exposure Trades in Microsoft Excel format from a margin calculation result will be empty.
  * Data Analysis Reports may either be empty or include stale data.
  * Live Collateral Positions will publish along with the margin call details and sent to Acadia, if the system is appropriately configured for publishing messages.



To optimize performance, the Margin Calculation Analysis task uses trade data stored in the start of day cache, and only reads the database for any trade information that has been overridden by an override file or manually altered.

Additional performance optimization can be gained by disabling the retrieval of trades extension data values within the Margin Calculation Analysis process. Although this is considered to be a system administrator function and thus outside the remit of this user guide, it is useful in terms of background knowledge to know how to disable the retrieval of trades extension data values, and what its implications are.

To disable the retrieval of extension data from the Margin Calculation Analysis process, the System Administrator or Database Administration team should set the value in the system configuration file:
    
    
    <install_path>\CollateralWinService\Algo.Collateral.Services.WindowsServiceHost.exe.config
    

for the IncludeExtensionDataFromMCA key to false
    
    
    <add key="IncludeExtensionDataFromMCA" value="false"/>.
    

This means, once disabled, all Margin Calculation Analysis tasks will stop retrieving trades extension data values as part of its exposure trade processing.

When this configuration key is set to 'false', the margin call workflow is impacted as follows:

  * Viewing Exposure Trades in Microsoft Excel format from a margin calculation result will not populate any extension data field headings or values.
  * Custom Statements ([2](<custom_statement.md#report-two-otc-exposures>), [3](<custom_statement.md#report-three-otc-exposures>) and [4](<custom_statement.md#custom-exposures-four>)), which require that certain extension data fields exist, will not have any extension data values populated. The report will retain the extension data field headings, but the underlying extension data values will never populate.



**Note:** While a task is in progress, it is not recommended to process items in the system - specifically, margin calls, substitutions, movements and interest payments. Doing so may result in data inconsistency. It is recommended to wait until the task has completed before processing items.
