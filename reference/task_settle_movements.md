
# Settle Movements Task

## Create New Task

TLM® Collateral Management supports the use of loading collateral positions files and/or using collateral movement entry via workflow. There are some important considerations for this, outlined below:

  * If the intention is not to use collateral movement entry via the workflow, it is assumed that loading collateral positions will be done via the collateral position import. Additionally, it is assumed that the collateral position load will represent both settled and in transit positions, so that margin calculations will be based on accurate collateral balances. If this is the intention then settle movements task is not needed as all the collateral balance information is loaded.
  * If the intention is to load settled collateral position information into TLM Collateral, but wish to book collateral entries via the system to differentiate in-transit movements, then it is assumed that the collateral position load will cover only settled positions. In this situation, a settle movements task will be needed, but it is expressly recommended to ensure that the adjust positions check box is cleared for the Business Line / Instrument Class coverage of collateral positions that will be loaded - otherwise incorrect balances could be generated. (**Note:** By default, this check box is turned on.)
  * If the intention is to use TLM Collateral as the books and records collateral balances system, then the settle movements configuration should set the adjust collateral positions flag as On. It is expected that if this configuration is used, then collateral files would not be loaded for the same Business Line / Instrument Class combination as the settle movements task is for, otherwise incorrect collateral balance information will occur.

For example: If collateral positions is imported for OTC Cash collateral positions, ensure that any settle movements configurations that are for OTC Cash has the Adjust Positions check box cleared.




**Procedure**

  1. Within the Task Configuration screen, select _Settle Movements_ Configuration from the filter drop-down.
  2. To create a new Settle Movements Task, select the **Create Settle Movements Configuration** button.
  3. A pop-up screen will appear with the following fields made available:

**Note:** Fields in red are required.

Section | Field | Description  
---|---|---  
Configuration Details | Name | A unique name for the configuration.  
| Description | A meaningfule description for the configuration.  
Settlement Options | Settle On or Before | The available values are Today and Yesterday.  
  
**Today** \- This is the default choice and will apply the configuration to Collateral Movements where the settlement date is equal to or less than Today.  
"Today" is defined as the current date equivalent in the Principal Managing Location of the Agreement (to which the Collateral Movement is attached )at the time that the Settle Movements task is run.  
**Note:** This may be a different date to the date in your location, or the location where the task was run from.  
  
See [Understanding on or Before date](<task_settle_movements.md#understanding-on-or-before-date>) on Settlement Movements Configuration.  
  
**Yesterday** \- This will apply the configuration to Collateral Movements where the settlement date is equal to or less than T-1.  
"T" is defined as the current date equivalent in the Principal Managing Location of the Agreement (to which the Collateral Movement is attached )at the time that the Settle Movements task is run.  
**Note:** This may be a different date to the date in your location, or the location where the task was run from.  
  
See [Understanding on or Before date](<task_settle_movements.md#understanding-on-or-before-date>) on Settlement Movements Configuration.  
  
Further help on how these fields work is provided in Understanding on or Before date on Settlement Movements Configuration.  
| Adjust Positions | This field is to indicate whether to adjust the Collateral Positions by either "rolling in" the Collateral Movements or not. If Collateral Movements needs to be adjusted for Collateral Positions, check this field, otherwise clear it. By default this field is checked.  
Filter Details | Business Lines  
(OTC, Repo, Securities Lending,  
Central Clearing, Client Clearing) | Select the business lines for those Agreements that the collateral movements are associated to where collateral movements needed to be processed.  
| Instrument Classes  
(Cash, Equity, Debt, Letter of Credit) | Select the instrument class of the collateral on the movements that need to be processed.  
Principal Managing Locations | All | This value is selected by default. If specific managing locations and not all of them are needed, then click on _Managing Locations_.  
| Managing Locations | When selected, click the drop-down box to select the specific or multiple managing locations that this configuration applies to.  
  4. When all required and optional fields are filled in as required, click the **Save** button.




## Edit Task

  1. Within the Task Configuration screen, select _Settle Movements Configuration_ from the filter drop-down.
  2. Select the configuration that needs modification by clicking on the configuration.
  3. A pop-up screen will appear where the data can be modified.
  4. Click the **Save** button when all the changes have been made.



## Delete Task

  1. Within the Task Configuration screen, select _Settle Movements Configuration_ from the filter drop-down.
  2. From the results from the prior step, select a configuration that needs to be deleted by clicking in on a radial button. The **Delete** button will become visible.
  3. Click the **Delete** button.
  4. A popup window will appear confirming the deletion. Select _Cancel_ if this was pressed in mistake or select **Delete** to delete the configuration.



**Note:**

  * When a Settle Movement configuration is deleted, any history relating to the running of that configuration will remain in the Task Status view however it will be displayed in italics.



## Run Task

**Procedure**

  1. Within the Task Configuration screen, select _Settle Movements Configuration_ from the filter drop-down.
  2. Select the configuration that needs to be run by clicking the radial button next to the configuration.
  3. The **Run** button will become enabled and available to be clicked.
  4. Click the **Run** button.
  5. The results can be viewed from the [Task Status](<task_status.md#results-of-the-task>) screen.



## Runtime Considerations

It is strongly recommended that the settlement movements task is run once per day and only at the end of the business day when all other processing activity in the system has been completed.

The task should not be run intraday when other activity is occurring. Doing so has the potential to cause data inaccuracies.

The settle movements task is used to process collateral movements that have reached, or exceeded, their settlement date.

It is possible to filter this task to limit it to collateral movements associated to Agreements with specific Business Lines, specific Principal Managing Locations, and to collateral movements for specific Instrument Classes.

Additionally, the settle movements task can be configured to specify whether collateral movements are selected according to

  * Business Line(s)
  * Instrument class criteria
  * Principal Managing Location(s)
  * Settlement Date of [on or before](<#understanding-on-or-before-date>) Yesterday, or [on or before](<#understanding-on-or-before-date>) Today (with Today defined as date per Principal Managing Location) and whether the collateral movements selected via the above criteria will be adjust (roll into) collateral positions or not.



When the Settle Movements task runs, it performs the following functions:

First, for those collateral movements selected according to the configuration criteria, where the settlement date of the collateral movement matches the Settle Movements on or Before criteria selection-

  * The state of the Collateral Movements that are in an In Transit State are updated to Settled.
  * If all of the collateral movements associated to the margin call are in a Settled state or a Cancelled or Failed state, the Margin Call state is updated to Completed, else the state of the Margin Call remains Confirmed.
  * What happens next to the movements and the collateral positions depends on the value that has been set in the Roll movements into Positions field.



If the Adjust Positions check box is checked.

  * The task sums the movements into positions by agreement, by instrument reference, by margin type, by Asset Pool and applies the movements to the collateral positions of same margin type, same asset pool on the agreement as per the table below:

Movement Direction | Operation | Position  
---|---|---  
Deliver to Principal | Add | Held  
Return to Principal | Subtract | Posted  
Deliver to Counterparty | Add | Posted  
Return to Counterparty | Subtract | Held  
  * Movements that are rolled into existing positions by instrument according to the above table.

  * Movements are rolled in by Margin Type and by Asset Pool.
    * That is, a movement for margin type of lock up will not be rolled into a position for margin type variation, and vice-versa.
    * Similarly, a Movement with a defined Asset Pool of "AssetPool1" will not roll into any other Asset Pool position.
  * It will then form part of the collateral balance for margin calculation purposes.
  * If the movement is a deliver to Cpty or a deliver to principal, and no collateral Position exists, then a new Position will be created.
  * Only those movements in an In Transit settlement state are rolled up - movements in an Open, Failed, Ignored or Cancelled state are not subject to the roll in process.
  * Validation logic is applied to the individual movements to ensure that a movement cannot create an illegal position.

The following movements are considered invalid:

    * A return to Cpty movement for a greater amount of an instrument than is currently held.
    * A return to Cpty movement for an instrument that is not held.
    * A return to principal movement for a greater amount of an instrument than has been posted.
    * A return to principal movement for a instrument that has not been posted.



Please see the notes at the end of this topic for consideration around the usage of Adjust Positions check box.

**Adjust Positions**

  * It is assumed that if roll movements into positions is not elected, then collateral positions will be updated by using feeds from an external source and loading these into the system as collateral configurations. Once the movement is updated to a settled status, the market value of the movement is no longer taken into consideration for Margin Calculation purposes, nor forms part of the collateral positions for the agreement.

**Note:** Please see the notes at the end of this topic for consideration around the usage of Adjust Positions flag, where collateral positions are loaded.




Any errors that occur during the running of the task can be seen in Settle Movements Task Status.

The system supports the use of loading collateral positions files and/or using collateral entry via workflow.

There are some important considerations for this:

  * If it is the intention to utilize TLM® Collateral Management as a margin calculation engine, the following assumptions are made:

    * Collateral positions, both settled and in transit, will be loaded as well as trade exposure and other relevant data into the system for Margin Calculation Purposes.
    * Margin Calculation Results will be synched/ported back to the system for processing.
    * You will not be using any of the standard Workflow steps that exist in TLM Collateral Management, as they are designed to work with collateral movements entered via the Workflow - Please speak to a member of Support Staff if in doubt. 

Additionally, please note however, that the valuation of collateral balances that are loaded in, will be subsequently calculated based on latest dirty prices and valuation percentages for the instruments that exist in the system. Please see the final bullet point below.

  * If the intention is to load settled collateral position information into TLM Collateral, but wish to book collateral entries via the system to differentiate in-transit movements, then it is assumed that the collateral position load will cover only settled positions. Settle movements configuration will be needed, but it is expressly recommended that to ensure that the Adjust Positions check box is cleared for the Business Line / Instrument Class coverage of collateral positions that are loaded - otherwise incorrect balances could be generated.(Note that the check box is selected by default).

However, that the valuation of collateral balances that are loaded in, will be calculated based on latest dirty prices and valuation percentages for the instruments. Please see the final bullet point below.

  * If the intention is to use TLM Collateral as the books and records collateral balances system, then the settle movements configuration should check the Adjust Positions check box. It is expected that if this configuration is used, then collateral files would not be loaded for the same Business Line / Instrument Class combination as the settle movements task otherwise incorrect collateral balance information will occur.

For example - if collateral positions for OTC Cash collateral are imported, ensure that any settle movements configuration that are set up for OTC Cash has the Adjust Positions check box cleared. (i.e, not On)

  * Finally, the valuation of collateral balances and movements is done within TLM Collateral using latest dirty prices and valuation percentages applicable for the collateral instruments. Therefore the market value fields (Mkt Val Agmnt) and (Mkt Val Sys) on the collateral positions import file are ignored for collateral valuation purposes.




**Note:** While a task is in progress, it is not recommended to process items in the system - specifically, margin calls, substitutions, movements and interest payments. Doing so may result in data inconsistency. It is recommended to wait until the task has completed before processing items. 

## Understanding On or Before Date

The Settle Movements configuration provides an option to specify whether the configuration should apply to movements with a settlement date on or before today or yesterday.

In keeping consistent with date/time functionality used throughout the system workflows for Margin Calls, Substitutions, and Interest Payments, the settlement task configuration's definition of "Today" and "Yesterday" is based on the current date within the timezone of the Principal Managing Location of an Agreement at the time that the Settle Movements task is run.

**Consider the following scenario.**

  1. You as a collateral analyst are physically in Amsterdam (GMT+1 hr.). It is currently 5pm Amsterdam time (4PM GMT) on 29th January 2009.
  2. The TLM® Collateral Management Database is in London (GMT).
  3. The TLM Collateral Management Application Server is in London (GMT).
  4. You are responsible for managing 2 Agreements, each with a differing Principal Managing Location (Prin Loc):
     * ABC Bank Csa- Prin Loc London (GMT).
     * A Bank - Prin Loc New Zealand (GMT+12hrs).



The following Collateral Movements have been entered.

  * ABC Bank Deliver to Prin USD1mm for Settlement 29th January 2009.
  * ABC Bank Deliver to Prin USD 3mm for Settlement 30th January 2009.
  * A Bank Deliver to Prin GBP 2mm for Settlement 30th January 2009.



The Settlement Movements Configuration is executed below at 5.15pm Amsterdam time.

![settle_mvmt_config.jpg](Images/settle_mvmt_config.jpg)

**Note:** Today as a value has been selected for the field Settle Movements on or Before. The Task will therefore seek to settle collateral movements where the settlement date on a movement is equal to or before Today. Note however, that the task will work out what the date of "Today" means for each applicable collateral movement based on the Principal Managing Location for the Agreement. To establish this, consider the following.

  1. The Settlement Movements Task was executed at 5.15pm Amsterdam time on 29th Jan.
  2. This equates to 4.15pm GMT 29th Jan in London where the database and server are located.
  3. This equates to 4.15 am on 30th Jan in Wellington, new Zealand (GMT+12).



Therefore for the agreements covered by this configuration:

  * Today = 29th January for ABC Bank.
  * Today = 30th January for A Bank.



Therefore, the executed Settle Movements task will, subject to validations, update the following movements to settled status.

  * ABC Bank Deliver to Prin USD1mm for Settlement 29th January 2009.
  * A Bank Deliver to Prin GBP 2mm for Settlement 30th January 2009.



Note that the following movement will not be selected in the configuration as it is not yet 30th January in the Principal Managing Location (London) for the Agreement:

  * ABC Bank Deliver to Prin USD 3mm for Settlement 30th January 2009.



The definition of Yesterday works identically, with the exception that it uses prior date based on the current date and time zone of the Principal Managing Location of the Agreements in question at the time the Settle Movements task is executed.
