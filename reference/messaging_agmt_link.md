# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/messaging_agmt_link.html

# Agreement Linking

## Overview

In order for communication to occur between TLM® Collateral Management and your organization's account in Acadia, the Collateral Agreement must be set up in both systems and linked.

The below sections outline the linkage mechanisms that need to be configured in the various components of the TLM Collateral Management Acadia integration solution. However, setting up Agreements in Acadia is outside the remit of this user guide. Please contact an Acadia representative for guidance on how to perform that task.

## Agreement Linking Mechanism

Agreements are linked between TLM Collateral Management and Acadia via the Acadia Agreement's Agreement Short Name plus Agreement Currency being recorded on the TLM Collateral Management Agreement against a defined Alias Group Name. The Alias Group name is in turn referenced in configuration files.

  * It is recommended to create a new Alias group to represent Acadia – e.g. Acadia

  * Then for those Agreements that will be subject to Margin Call and Interest Payment processing via the Acadia adapter the corresponding Acadia Agreement Short Name plus Agreement Currency is recorded on the TLM Collateral Management Agreement as an Alias in the Alias Tab against the Alias Group Name that was set up.

  * This Agreement Short Name plus Agreement Currency combination must match the "Our Unique Identifier" of the corresponding Agreement in Acadia and the Agreement Currency of the corresponding Agreement in TLM Collateral Management.




**Note:** While Agreement Linking is using **Agreement Short Name plus Agreement Currency** was primarily implemented within TLM Collateral Management to support the Acadia multi-currency agreement concept, **Agreement Short Name plus Agreement Currency** __is always__ required when linking Agreements between TLM Collateral Management and Acadia regardless if Acadia is using multi-currency agreement concept.

## Alias Group Name Configuration

The name of the Alias Group defined is not important. It is essential that it is configured identically in various configuration files within the TLM Collateral Management suite of products in order that connectivity with Acadia can occur:

  1. In the TLM Collateral Management WCF Services web.config file in the MessagingAgreementGroupAliasName key:

e.g:
         
         <Collateral Management Install>\TLM Collateral Services\Web.config
         
           <add key="MessagingAgreementGroupAliasName" value="Acadia"
         

  2. In the Acadia Adapter’s properties.cfg configuration file in the AgreementAliasGroupName parameter

e.g.:
         
         <AcadiaAdapter\etc\acadia.properties.cfg
         
           #config
         
           AgreementAliasGroupName=Acadia
         

  3. In the Collateral Management Windows Service configuration file in the MessagingAgreementGroupAliasName key.

e.g:
         
         <CollateralManagementinstall>\AlgoCollateralWinService\Algo.Collateral.Services.WindowsServiceHost.exe.config
         
         <add key="MessagingAgreementGroupAliasName" value="Acadia"
         




## Acadia Agreement Configuration

**Note:** Organizations in Acadia need to be configured for **Agreed Cancels** in order that they can correctly process certain actions that originate in TLM Collateral Management, specifically, Resetting Agreed Amounts and Recalculations of Fully Agreed Anticipated Demands. Please see your Acadia representative for guidance on how to configure Organizations.

## Messaging Indicator via Workflow

[Messaging Eligible](<messaging_margincalls.md#messaging-eligibility>) is an indicator for agreements that can be used for messaging. 
