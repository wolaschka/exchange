
# Understanding Agreement Scopes and Agreement Responsibility Groups

Agreement Scope and Agreement Responsibility Group filtering are widely used throughout the system. It is essential that users, and in particular super-users and system administrators understand not only conceptually how they are composed and applied, but how they interact with each other.

## Agreement Scope

An Agreement Scope is a set of criteria that defines what agreements a user can see within the system. (Currently, Agreement Scope definition is based on Principal Entity criteria only.)

The rationale of Agreement Scope is to segregate Agreements and Agreement Related Data into those that a user can see (Agreements that fall within their Agreement Scope), and those that a user can't see (Agreements that fall outside the user's Agreement Scope).

A user can only be associated to a single Agreement Scope at a time, and the association is defined on the [user reference data object](<reference_related_data.md#agreement-scope>).

If a user is not associated to an Agreement Scope they will not see any data in the following system areas:

  * [Agreements](<agreements.md>)
  * [Margin Workflow](<margin_calls_overview.md>)
  * [Interest Workflow](<interest.md>)
  * [Substitution Workflow](<substitutions.md>)
  * [Movements](<movements.md>)
  * [Exposure Trades](<agreements.md#view-exposure-trades>)
  * [Collateral Positions](<positions.md>)
  * [Inventory Management](<shortpositions.md>)
  * [Approvals Workflow](<approvals.md#actions>)
  * [Audit Records that refer to Agreement Names.](<audit.md>)
  * Error Messages that refer to Agreement Names.



In other words, Agreement Scope is applied to the above areas when returning data.

## Agreement Responsibility Groups

Agreement Responsibility Groups are used to assign to users **_responsibility_** for particular Agreements. They provide a mechanism to filter down Agreements from those a user can see (via their [Agreement Scope](<#agreement-scope>)) to those that they have responsibility for, and therefore should focus their work on.

Unlike [Agreement Scope](<#agreement-scope>), Agreement Responsibility Groups are composed of several criteria, and a user can be associated to several Agreement Responsibility Groups.

**Note:** It is important to bear in mind that in the system, an Agreement can be defined in one of 5 business lines. However, only three of these (OTC, Repo, Securities Lending) are available as criteria when defining Agreement Responsibility. If Central Clearing and/or Client Clearing Agreements needs to be included in Agreement Responsibility, then use criteria other than Business Line when defining it.

Failure to do so will exclude those Agreements from system areas such as [Substitution](<substitutions.md>) that use responsibility filtering.

Agreement Responsibility Groups are applied to data returned in the following screens:

  * [Standard Margin Calls and Workflow screens](<margin_calls_overview.md>)
  * [Standard Interest Workflow](<interest.md>)
  * [Substitutions](<substitutions.md>)
  * [Movements](<movements.md>)



In the case of Margin Call Workflow and Interest Workflow, it is possible for a user to filter the items that appear to a specific Agreement Responsibility that they are assigned to, or to have the items appear according to the superset of all their Agreement Responsibilities.

However, it is essential to bear in mind that any Agreements and Agreement related data that a user can see via their membership of Agreement Responsibility groups is also subject to Agreement Scope filtering.

In order for a user to see an Agreement in the above areas of the system, they must:

  1. Be allowed to see that Agreement via Agreement Scope.
  2. Be associated to one or more Agreement Responsibility Groups that encompass the Agreement.



As Agreement Responsibility Groups are not defined for, or limited to, a specific user, it means that a user can be assigned to an Agreement Responsibility Group that covers Agreements that their Agreement Scope does not permit them to see.

In such situations, the user can only see those Agreements from their Agreement Responsibility group that are permissible according to their Agreement Scope.

## Agreement Scope and Responsibility Areas Applied

The below table summarizes various areas in the system where Agreement Scope and Agreement Responsibility Groups are applied:

Module | Module Sub-Section | Agreement Scope Applied ? | Agreement Responsibility Groups applied ? | Agreement Groups Applied ?  
---|---|---|---|---  
Margin Calls | _Demands Tab_ | Yes | Yes(4) | No  
| _Antic Demands Tab_ | Yes | Yes(4) | No  
| _No Actions Tab_ | Yes | Yes(4) | No  
| _Grouped Calls Tab_ | Yes | No | Yes  
| _Central Workflow Tab_ | Yes | No | Yes  
| _All Tab_ | Yes | No | No  
Interest | _Distributions Tab_ | Yes | Yes(4) | No  
| _Roll-Ins Tab_ | Yes | Yes(4) | No  
| _All Payments Tab_ | Yes | Yes | No  
| _Grouped Tab_ | Yes | No | Yes  
| _Open Accruals Tab_ | Yes | Yes | No  
Substitutions | _Search Tab_ | Yes | Yes | Yes  
| _Workflow Tab_ | Yes | Yes | Yes  
Inventory Management | _View Short Positions_ | Yes | No | No  
| _View Upcoming Coupons_ | Yes | No | No  
| _View Upcoming Maturities_ | Yes | No | No  
| _Viewing Assets available for allocation to Antic Demands_ | Yes | No | No  
| _Viewing Assets available for allocation to Substitutions_ | Yes | No | No  
Approvals | _Approvals Workflow_ | Yes | No | No  
Movements | _View Movements_ | Yes | No | No  
| _Create Movements_ | Yes | No | No  
Agreements | _View Agreements_ | Yes | No | No  
Reports | _Eligibility & Concentration Breaches_ | No | No | No  
| _Eligibility & Concentration Movement Control_ | No | No | No  
| _Agreement Rules Change History_ | No | No | No  
| _Unassigned OTC Trades_ | No | No | No  
| _Unassigned Repo Trades_ | No | No | No  
| _Top 50 Agreement Exposure Differences in System CCY_ | No | No | No  
| *Top 50 Trade Count Differences By Agreement | No | No | No  
| _Top 50 Trade Count Differences By Book_ | No | No | No  
Entities | _Entities_ | No | No | No  
| _Error messages when deleting Entity Branches_ | Yes (1) | No | No  
Reference Data | _Reference Data_ | Yes(2) | No | No  
Instruments | _Instruments_ | No | No | No  
Buckets and Groups | _Viewing Buckets and Groups_ | No | No | No  
| _Error messages when deleting buckets and groups_ | Yes (1) | No | No  
Task Status | _Task Status_ | No | No | No  
Task Configurations | _Task Configurations_ | No | No | No  
Audit | _View Audit Reports_ | Yes (3) | No | No  
Global Concentration Limits | _Global Concentration Limits_ | No | No | No  
  
  1. When a user attempts to delete [branches from an Entity](<entities_general.md#branches>), [Collateral buckets](<buckets.md>) or [Collateral Groups](<collateral_groups.md>) that are being used by Agreements, a warning message will notify the user of which Agreements are using those objects. This warning message is subject to Agreement Scope.

This means that the warning could be raised due to Agreements which are outside of the user's Agreement scope - in which case the text in the warning will state so.

  2. Reference Data is not subject to any Agreement Scope or Agreement Responsibility Group Filtering. However, there is one exception and that is the Agreement Responsibility Group Reference Data items themselves. When defining an Agreement Responsibility Group, one of the defining criteria is the inclusion or exclusion of specific Agreements. It is here that Agreement Scope is applied, and the user creating/editing/viewing the Agreement Responsibility group will only see in the include and exclude boxes Agreements that they are permitted to see via their Agreement Scope. Please note that a user viewing an Agreement Responsibility group may not see all the specific Agreements which are included/excluded on that group.

Similarly it is recommended that the Super User who creates / administers Agreement Responsibility Groups has sufficient Agreement Scope coverage to be able to include/exclude the range of Agreements they need.

  3. The following Audit Reports are subject to Agreement Scope - Agreements; Rating Eligibility Rule; Contacts; Agreement Responsibility Groups.

  4. _The items can be filtered according to an individual agreement responsibility that the user is assigned to, or by all agreement responsibilities that the user is assigned to._ See [Understanding Workflow Filtering](<margin_calls_overview.md#search-criteria>)



## Understanding Agreement Responsibility Group Email Addresses

The system provides the flexibility to enter an email address on an Agreement Responsibility Group.

When any of the following notices are sent from within the application:-

  * [Margin Call Notices](<margin_calls_statements.md#margin-call-notice>)
  * [Substitution Notices](<substitutions_workflow_actions.md#send-substitution-statement>)
  * Exposure Trade Reports
  * [Exposure Statements](<margin_calls_statements.md#exposure-statement>)
  * [Interest Statements](<interest_workflow_actions.md#view-statement>)
  * [Collateral Position Statements](<margin_calls_statements.md#position-statement>)



they are sent via email to the contact(s) defined for those notices on the Agreement, and a copy is cc'd to the user whom initiated the notice being sent. The cc is sent to the email address for the user that is defined in their user object.

The system attempts to determine the email address that should be used as the sending address for the email notices by looking at the email addresses that are recorded on the Agreement Responsibility Groups.

The following logic is used to determine which addresses to use as the sent from address:

  1. The Agreement on which the notice was generated is identified.
  2. The user who initiated sending the notice is determined.
  3. The Agreement Responsibility Groups that cover the Agreement from step1). are identified.
  4. Those Agreement Responsibility groups from step 3) that the user is not a member of are discarded.
  5. From the remaining Agreement Responsibility groups, the system selects the alphabetically first email address recorded in the email address field.
  6. This email address is used as the sent from address on the email that is sent to the client with the notice(s).
  7. The email address from the Agreement Responsibility Group selected in step 5) is also cc'd on the email message.
  8. If no email address exists on the Agreement Responsibility Groups from step 5) , then the system will use the email address that was entered as part of the application server installation as the default sending address. (See your system administrator for guidance on this.)
  9. The user who initiated sending the notice will also be cc'd on the email message, using the email address that exists on their user object.



**Note:** Should there be more than one [contact](<contactinfo.md#contact-information>) on the agreement, and those contacts are set up differently for the margin notice (for example, one contact gets an exposure statement and margin notice, and one gets just the margin notice) then the sending user (step 9) who is cc'd will receive a cc per each notice type sent.

This can mean the sending user is cc'd several times on a single margin call.

It is therefore recommended that any user assigned to an Agreement Responsibility Group has access to the email addresses that are recorded on the group.
