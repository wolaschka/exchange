# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/high_value_movement.html

# High Value Movement

## Configure High Value Movement Approval Evaluation to a Business Line

The system can be configured so that it evaluates whether the market value of a movement exceeds a pre-determined tolerance amount. If it does, then the movement is subject to additional approvals. This topic outlines how to configure which business lines this evaluation occurs in.

**Overview**

The system will check whether the market value of collateral movements equals or exceed a defined Tolerance Amount ("high value") amount. Should this check occur and collateral movements that have a movement type of:

  * Manual
  * Margin Call
  * Substitution



meet or exceed this tolerance, then a Second level of approval will be required to progress the movement(s) to an In Transit settlement state.

**Configuration** It is recognized that it may not be desirable to undertake this high value evaluation on the above movement types in all business lines.

That is, this high value payment amount evaluation (and therefore the enforcement of the Second level of approval if it is breached) can be turned on or off for OTC, Client Clearing, Repo and Security Lending business lines.

The enabling/disabling of this high value evaluation resides outside of the system in 4 specific keys in a configuration file.

Although strictly outside of the confines of this user help guide, they are recorded here for completeness.

The keys are:
    
    
    <add key="AdditionalMovementApprovalRequiredForOTC" value="false"/>
    <add key="AdditionalMovementApprovalRequiredForRepo" value="true"/>
    <add key="AdditionalMovementApprovalRequiredForSecLending" value="true"/>
    <add key="AdditionalMovementApprovalRequiredForClientClearing" value="false"/>
    

By default, the values are set to false, meaning the system will not evaluate whether movements will be evaluated to see if they meet or breach a high value tolerance amount. Setting a value to true will enable this evaluation for that business line, but only in a combination with the Payment Tolerance configuration on [Managing Location](<reference_related_data.md#managing-location>).

Please see the System Administrator for more information.

## Understanding High Value Movement Approval Controls

**Overview**

When configured, the system will evaluate whether the market value of collateral movements equals or exceeds a predefined tolerance amount then a Second level of approval will be required to progress the movement to an In Transit settlement state.

**Scope of Functionality**

In order for a collateral movement to be eligible for High Value Movement additional approval, the following must be true:

  1. Additional Approvals have been enabled on the [Business Line](<high_value_movement.md#configure-high-value-movement-approval-evaluation-to-a-business-line>) of the Agreement which the movement is booked on.
  2. The Principal Managing Location of the Agreement has a defined [Payment Tolerance Amount](<reference_related_data.md#managing-location>).
  3. The collateral movement _type_ is of one of the following:
     1. Margin Call
     2. Manual
     3. Substitution
  4. For Margin Call and Substitution Movement types, workflow Approvals have not been disabled.
  5. For Manual Movement types, movement approval has not been disabled.



For the purposes of this topic, collateral movements that meet the criteria are known as "In Scope High Value Movements".

**Application of Functionality**

In simple terms, when a collateral movement is being approved, the system interrogates the movement(s) based on the above criteria to see if it qualifies as an In Scope High Value Movement.

  * If it does, then the collateral movement _remains_ in a To Be Approved status until an additional separately permissioned user approves the movement.
  * If the movement does not qualify as a High Value Movement, it is approved, and therefore updated to an In Transit state.



Three separate users are therefore required for the creation and full approval of a High Value Movement.

**Functionality Example**

For this example, the following three users are involved:

**Analyst** \- This user has movement creation permissions only.

**Team Leader** \- This user has the ability to approve / reject movements, but not the ability to approve / reject high value movements.

**Manager** \- This user has the ability to approve / reject High Value movements.

Example Steps | Description of Steps  
---|---  
1 | The Analyst books the collateral movement, and submits it for approval.  
2 | The Collateral Movement is set with the following attributes:  
  
\- Status: **To Be Approved**.  
\- Required Approval Level: **First**.  
3 | The Team Leader reviews the movements and clicks on the button to approve the movement.  
4 | The System interrogates the Movement(s) to see if they qualifies as a High Value Movements. Specifically:  
  
a. The Business Line of the Agreement is checked to see that it is enabled for High Value Movement additional approvals.  
b. The Principal Managing Location of the Agreement is checked to see that it has a defined Payment Tolerance Amount.  
c. The system evaluates the Total Market Value of the Collateral Movement in Agmt Ccy to determine whether they equal or exceed the Payment Tolerance Amount converted into the Agreement Currency.  
  
If a) - c) are **all** True, then the Collateral Movement is deemed a High Value Movement, requiring additional approvals, and is set with the following attributes:  
\- Status: _remains_ as **To Be Approved**.  
\- Required Approval Level: _updates_ to **Second**  
  
If **any** of a) - c) are false, then the movements are not deemed a High Value Movements, are approved and updated to a Status of In Transit.  
**Collateral movements which have a Required Approval Level of Second can only be approved/rejected by users whom meet all of the following criteria** :  
\- They have the approve/reject High Value movement permission entitlement.  
\- They did not submit the movement for approval.  
\- They did not first level approve the movement.  
5 | In the above example, Manager meets the criteria to approve the High Value Movement. Upon the approval, the movement is updated to an In Transit Status.
