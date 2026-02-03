# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/system_configuration.html

# System Configuration

## Database Approvals

By default, when TLM® Collateral Management is installed, Approvals is disabled for all the areas in the below grid.

Although this is considered to be a system administrator function and thus outside the remit of this user guide, it is useful in terms of background knowledge to know how Approvals functionality is enabled or disabled for the below areas and what its implications are.

To enable or disable the following areas, the System Administrator or Database Administration team should set the following values in two of the system configuration files:
    
    
    <install_path>\CollateralServices\web.config 
    <install_path>\CollateralWinService\Algo.Collateral.Services.WindowsServiceHost.exe.config
    

Area | Enable | Disable | Comment  
---|---|---|---  
Agreements | <\add key="AgreementApprovalRequired" value="true"/> | <\add key="AgreementApprovalRequired" value="false"/> | Once enabled, any alterations to Agreements (includes Agreement Margins, Agreement SSI's and Specific Trade Coverage) is subject to approval.  
Contacts | <\add key="ContactApprovalRequired" value="true"/> | <\add key="ContactApprovalRequired" value="false"/> | When value is set to true, the changes populated are not persisted automatically to the database when a Contact is newly created, edited, added, removed, or deleted from an Agreements.  
Entities | <\add key="EntityApprovalRequired" value="true"/> | <\add key="EntityApprovalRequired" value="false"/> |   
Indexes | <\add key="IndexApprovalRequired" value="true"/> | <\add key="IndexApprovalRequired" value="false"/> |   
Instrument Prices | <\add key="InstrumentPriceApprovalRequired" value="true"/> | <\add key="InstrumentPriceApprovalRequired" value="false"/> | This configuration refers to Instrument Prices and not Instruments. Locking an Instrument Price will not cause the Instrument itself to lock.  
Instruments | <\add key="InstrumentApprovalRequired" value="true"/> | <\add key="InstrumentApprovalRequired" value="false"/> |   
  
Any entered values remain in a "pending approval" state until they are approved. Approval can only be performed by a user who has permissions and did not update the values.

It is also possible that the pending approval values can be rejected. If the values are rejected the pending values will not be applied.

When any values in the above grid are in a pending approval state, it is Locked for Approval.

While Locked for Approval, the specific area is in a read only state, and cannot be amended in any way until the pending approval values are either approved, or rejected in the Approvals Workspace.

Once the field is set to false, any values populated are committed to the database as soon as the Instrument form is saved.

## Collateral Movement

It is possible to configure TLM® Collateral Management to treat [Collateral Movements](<movements.md#create-a-manual-movement>) entered via the Movements Screen in two ways. Essentially the application can be configured at a system level so that the above actions require approval or not.

Collateral Movements can be configured to require approval after being entered before they will update to an In Transit state by defining the key value as . Alternatively, it is possible to configure Collateral Movements not to require approval, so that they will be in an In Transit state as soon as they are successfully entered/created.

The configuration is made outside of the application - so please speak to your system administrator for more information, but for reference, it is defined in the following system level configuration key:
    
    
    <add key="IsMovementModuleApprovalRequired" value="True"
    

By setting the value of the key as True Movement Approval Requirement is enabled, and Collateral Movements entered through the Movements screen will be subject to the same approval/rejection process as Collateral Movements entered through the Workflow, and will initially begin in an To Be Approved state.

Collateral Movements that are in an To Be Approved state are not taken into consideration for Margin Calculations.

By contrast, setting the key to False means that Movement Approval Requirement is not enabled, and Collateral Movements entered through the Movements screen will upon saving be updated directly to an In-Transit state.

Any Collateral Movements in an In-Transit state will be taken into consideration for Margin Calculations.

**Note:**

  1. This configuration applies to the creation of movements via the movement screen. It does not apply to cancellations. There is a specific [system configuration setting](<movements_cancellation_required.md>) that governs whether cancellations of collateral movements will be subject to approval.
  2. Currently, all Collateral Movements entered on Margin Calls have to be approved.



## Workflow

By default, when TLM® Collateral Management is installed, the following areas of system functionality have approval functionality turned on (or enabled) by default.

  * [Margin Call Workflow](<margin_calls_overview.md>)
  * [Substitution Workflow](<substitutions.md>)
  * [Interest Payment Workflow](<interest.md>)



Items that are progressed through the workflows require some form of approval before they can be fully completed. The form and method of approval varies depending on the specific workflow, but in general terms approval requires two prerequisites:

  * A different user to the user whom has initiated / progressed the item through to an approval stage.
  * A user with sufficient security privileges - that is, as user with approval privileges.



Although strictly outside of the remit of this user guide, be aware that it is possible to disable the approval process for the above three Workflows.

When TLM Collateral Management is installed, two scripts are created in the installation directory:

**DisableWorkflowApprovals.sql** \- Disables workflow approval for margin calls, substitutions and interest payments.

**EnableWorkflowApprovals.sql** \- Enables workflow approval for margin calls, substitutions and interest payments.

The appropriate script would need to be run against the TLM Collateral Management database to disable, (or re-enable) the workflow approval functionality.

Running scripts against the database is not a user function and would need to be performed by the system or database administrator.

However, as users, be aware of the following considerations/outcomes:

  * Workflow Approvals can only be disabled en masse. That is, it is not possible to disable approval in one workflow but enable it in another. They are all either configured to require approvals or not.
  * There cannot be any items in any of the workflow approval states when the script is run.



There should not be any items in any of the following workflow states:

Workflow Area | Item Type | Workflow State  
---|---|---  
Margin Calls | Demand | Confirmed Approval  
|  | Waived Approval  
| Antic Demand | Confirmed Approval  
Interest Payments | Distributions | Agreed  
| Roll Ins | Agreed  
Substitutions | Substitutions | Agreed  
  
Once the **DisableWorkflowApprovals.sql** script has been run the above workflow states will not longer be available in the application.

By disabling workflow approvals, the transition options from certain states will be updated such that an item can no longer be sent for approval. These changes are summarized as follows:

**Margin Calls**

State | Button | Previous Outcome | New Button | New Outcome  
---|---|---|---|---  
Unsent Demands | [Waive](<margin_calls_waived.md>) | Waived to be Approved | (Unchanged) | Waived  
Sent Demands - Agreed | [_Send for Approval_](<margin_calls_send_for_approval.md>) | Confirmed Approval | Send to Settlements | Confirmed  
Antic Demands - Agreed | [_Send for Approval_](<margin_calls_send_for_approval.md>) | Antic Demands Confirmed Approval | Send to Settlements | Confirmed  
  
**Interest Payments**

State | Button | Previous Outcome | New Button | New Outcome  
---|---|---|---|---  
Distribution Sent to be Agreed | [Distribute](<interest_workflow_actions.md#distribute>) | Distribution-Agreed to be Approved | (unchanged) | Distribution - Approved to be Distributed  
Roll In Sent to be Agreed | [Roll In](<interest_workflow_actions.md#roll-in>) | Roll In-Agreed to be Approved | (Unchanged) | Roll In Approved to be Rolled In  
  
**Substitutions**

State | Button | Previous Outcome | New Button | New Outcome  
---|---|---|---|---  
Pending Substitutions | [_Agree_](<substitutions_workflow_actions.md#agree-to-a-substitution>) | Substitutions-Agreed to be Approved | _Confirm_ | Substitutions-Sent to Settlements  
  
**Manual Movements** \- i.e. collateral movements entered via the Movements module are not affected by these scripts. To modify whether these movements require approval, please see [Configuring Collateral Movement Approval](<#collateral-movement>) to be Required.

Again, this is considered to be a system administrator function and outside of the remit of this user guide. However, in terms of background knowledge. To re-enable workflow approval functionality, your System Administrator or Database Administration team should run the **EnableWorkflowApprovals.sql** script on the TLM Collateral Management database. The approval functions will be re-enabled, and the workflow states and transition buttons pertinent to approvals will be restored.
