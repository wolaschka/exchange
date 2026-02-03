# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/task_extract.html

# Extract Task

## Overview

For a **Collateral Eligibility Extract** task, this will extract out all eligible Collateral information for all agreements that are setup to use TLM® Collateral Management Messaging Adapter. The extract can be configured by Principal Managing Location. It will generate a binary file to be sent to the Messaging Adapter to be consumed, converted and sent to AcadiaSoft.

When TLM® Collateral Management is installed, the following key will need to be set in the Algo.Collateral.Services.WindowsServiceHost.exe.config file to specify the location of where the file will exist for the Messaging Adapter to consume.
    
    
    <add key="CollateralEligibilityExtractTargetDirectory" value=""/>
    

The setting "MessagingAgreementGroupAliasName" must be defined in order to extract out the eligible collateral. A subset of the eligible collateral can be defined to be extracted out by adding the following key to the Algo.Collateral.Services.WindowsServiceHost.exe config file.
    
    
    <add key="MessagingAgreementGroupAliasName.EligibilityExtract" value=""/>
    

To extract out with the subset, both Aliases (MessagingAgreementGroupAliasName and MessagingAgreementGroupAliasName.EligibilityName) must be defined on the Agreement. If the MessagingAgreementGroupAliasName.EligibilityExtract is not defined, then the default will be to use MessageAgreementGroupAliasName which will be all Agreements with eligible collateral that communicate with AcadiaSoft.

See [Understanding "suggested" Collateral Pledges](<messaging_suggestedpledges.md>) for Messaging for more information.

For an **Exposure Statements Extract** , Exposure statements can currently only be extracted to Microsoft™ Excel spreadsheet software files in a predefined standard format.

It is possible to extract statements for specific Business Lines and to filter the output by Principal or Principal Managing Location.

These filter options along with the extract location are defined in the Extract Task Configuration screen.

## Create New Task

### Collateral Eligibility

**Procedure**

  1. Within the Task Configuration screen, select _Extract_ Configuration then select _Collateral Eligibility Extract_ type from the filter drop-down.
  2. To create a new collateral eligibility extract task, select the **Create Collateral Eligibility Extract** button.
  3. A pop-up screen will appear with the following fields made available:

**Note:** Fields in red are required.

Section | Field | Description  
---|---|---  
Configuration Details | Name | A unique name for the configuration.  
| Description | A meaningful description for the configuration.  
Principal Managing Location | All | All managing locations will be included in the extract of the eligible collateral.  
| Managing Location | Specific managing locations can be selected for the extract of the eligible collateral.  
  4. Click the **Save** button when all the required and additional fields needed have been filled in.




The collateral eligibility fields fields that are extracted as part of this process:

  * AgreementAlias
  * AgreementName
  * CollateralAllocationType
  * LockupCalculationType
  * CollateralMarginType
  * PositionType
  * InstrumentIdType
  * InstrumentTypeName
  * InstrumentClass
  * InstrumentDescription
  * InstrumentIdentifiers
  * Haircut
  * DirtyPrice
  * CleanPrice
  * PriceDate
  * FxRateToAgreementCurrency
  * AgreementCurrency
  * InstrumentCurrency
  * SettlementOffset - If a currency is defined on a holiday calendar and that currency matches an eligible bucket or instrument, the settlement offset will adjust according to holidays defined on that calendar.
  * MinimumLot
  * LotIncrement
  * Factor
  * AccruedInterest
  * Exchange
  * StockIndexes
  * Issuer
  * IssuerCountry
  * IssuerType
  * IssueDate
  * NextCouponDate
  * MaturityDate



### Exposure Statement

  1. Within the Task Configuration screen, select _Extract_ Configuration then select _Exposure Statement Extract_ type from the filter drop-down.
  2. To create a new exposure statement extract task, select the **Create Exposure Statement Extract** button.
  3. Based on the selection chosen, a pop-up screen will appear with the following fields made available:

**Note:** Fields in red are required.

Section | Field | Description  
---|---|---  
Configuration Details | Name | A unique name for the configuration.  
| Description | A meaningful description for the configuration.  
Extract Location | Output Path | Type in or browse to the file location to which the statements should be saved. If the folder you specify here does not exist it will be created when the extract is run. This must be a location that the server running the extract process has access to.  
  
**Note:** If you specify the C:\ drive, this will be the C:\ drive of the application server which is going to be executing the task (that is, not necessarily the C:\ drive of your own machine.) In order to ensure that all users have access to the extracted statements it may be better to specify a file server or shared drive on a machine all users can access.  
  
When the Extract Configuration is run, the statements will be saved into a sub directory in the folder you have specified here. The sub directory will be named with today's date.  
  
Today's date is defined using the date of the application server. date in the format yyyymmdd. This allows a history of the statements to be saved over a period of time. If the extract is run multiple times on the same day, existing statements are overwritten with the latest.  
Business Lines | Business Lines  
(OTC, Repo, Sec Lending) | Select one, multiple or all business line(s) that an exposure statement should be extracted.  
Filter Details | None | When selected, no filter will be applied to the extract. When the task is run, statements will be extracted for all the agreements within the selected Business Line.  
| Principal | To have a more refined extract based on Principal, a selection of one, multiple or all principals can be selected.  
| Managing Location | To have a more refined extract based on Managing Location, a selection of one, multiple or all managing locations can be selected.  
Audit Details | Created by | This is a read only field that will be populated with the user id that created the extract.  
| Last modified by | This is a read only field that will be populated with the user id that modified the extract.  
  4. Click the **Save** button when all the required and additional fields needed have been filled in.




The exposure trade fields that are extracted as part of this process:

  * Trade Ref
  * Trade Type
  * Notional 1 Ccy
  * Notional 1
  * Notional 2 Ccy
  * Notional 2
  * Trade Date
  * Effective Date
  * Maturity Date
  * Exposure Ccy
  * Exposure Amount
  * Exposure Date
  * Exposure FX Rate
  * Exposure Amount (Agmt Ccy)
  * Quantity
  * Strike Price
  * Spread
  * Buy/Sell
  * Put/Call
  * Option Type
  * Underlying
  * Underlying Instr Identifier
  * Lock Up Method
  * Lock Up
  * Lock Up Ccy
  * Lock Up Due To
  * Lock Up FX Rate
  * Lock Up (Agmt Ccy)
  * Additional Method
  * Additional
  * Additional Ccy
  * Additional Due To
  * Additional FX Rate
  * Additional (Agmt Ccy)
  * Source Principal
  * Principal Branch
  * Source Principal Branch
  * Source Counterparty
  * Counterparty Branch
  * Source Counterparty Branch
  * Source Agreement
  * Trader Name
  * Book
  * Desk
  * Secondary Trade Ref
  * DTCC Trade Ref
  * Deal Ref
  * CLIPS Code
  * Counterparty Trade Ref
  * Exposure Trade Comment
  * Source Trade Type
  * Clearing House Reference
  * Clearing House
  * Clearing Status



## Edit Task

  1. Within the Task Configuration screen, select the _Extract Configuration_ that needs to be modified, _Collateral Eligibility_ or _Exposure Statement_ , from the filter drop-down.
  2. Select the configuration that needs modification by clicking on the configuration.
  3. A pop-up screen will appear where the data can be modified.
  4. Click the **Save** button when all the changes have been made.



## Delete Collateral Eligibility

**Procedure**

  1. Within the Task Configuration screen, select **Extracts** for the Configuration then select **Collateral Eligibility** for the type from the filter drop-down.
  2. From the results from the prior step, select a configuration that needs to be deleted by clicking in on a radial button. The **Delete** button will become visible.
  3. Click the **Delete** button.
  4. A popup window will appear confirming the deletion. Select _Cancel_ if this was pressed in mistake or select **Delete** to delete the configuration.



## Run Task

**Procedure**

  1. Within the Task Configuration screen, select _Extracts Configuration_ then select the type of filter, _Collateral Eligibility_ or _Exposure Statement_ from the filter drop-down.
  2. Select the configuration that needs to be run by clicking the radial button next to the configuration.
  3. The **Run** button will become enabled and available to be clicked.
  4. Click the **Run** button.
  5. The results can be viewed from the [Task Status](<task_status.md#results-of-the-task>) screen.


