# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/messaging_understanding_substitution.html

# Understanding Substitution Messaging

## Overview

With TLM® Collateral Management version 5.16 & 5.17, substitution messages can now be sent to Acadia and updates to those messages will be used to transition substitutions in the workflow.

## What information is sent to Acadia?

When the user sends or resends a substitution in TLM Collateral Management, the Substitution Adapter will send a request to create a substitution proposal or full request in Acadia based upon the published message, including:

  * Agreement
  * Currency
  * Posting Party
  * Collateral Margin Type
  * Recall details
  * Replacement details
  * Settlement Date



## What updates are actioned in TLM Collateral Management?

The Substitution Adapter will poll Acadia for updates to substitutions sent from TLM Collateral Management or received from your counterparty. TLM Collateral Management will make updates and transition for the following:

  * Substitution Proposals and Full Requests
  * Acceptances and Rejections with comments
  * Addition of replacement details to accepted proposals
  * Substitution and recall proposal amendments
  * Substitution and recall proposal cancellations



## What updates are actioned from Acadia?

The Acadia Integration Adapter handles the following business states from Acadia:

  * Proposed
  * Received 
  * Proposal Accepted
  * Proposal Rejected
  * Proposal Cancelled
  * Accepted
  * Rejected
  * Cancelled



Any other Acadia business states are not considered by the Acadia Integration Adapter, at this time. Users may need to update recall propsal and substitution events in TLM Collateral Management and Acadia to realign the business states to continue automated processing.

## Substitution Matching Criteria

Proposal and Substitution messages received from Acadia are created in TLM Collateral Management using the following criteria:

  * Agreement Short Name
  * Agreement/Base Ccy
  * Position (Held/Posted)
  * Instrument Identifier 
  * Instrument Identfier Type
  * Instrument Ccy
  * Collateral Margin Type
  * Available Notional



Proposal and Substitution events will be created provided an event does not already exist in the following. Events in these states are in progress and have not been fully approved.

Workflow Queue |  | Workflow State  
---|---|---  
Pending |  | Pending, Pending Rejected  
Proposed |  | Proposed, Proposal Rejected  
In Progress |  | Proposal Accepted, Rejected Internally, Rejected by Counterparty  
Approvals |  | To Be Approved - Unsent, To Be Approved - Substitution  
  
**Possible Substitution Error Types**

  * Substitution Already Exists - An event is in progress for the same agreement and collateral margin type.
  * Item Could Not Be Found - The event could not be found or the agreement could not be found.
  * Invalid Operation - The event was not in an eligible state to process the transition.
  * Invalid Movement - The movement could not be created (position and notional may not be sufficient or movement validation error).
  * Instrument Not Found - A matching instrument type, identifier or currency could not be found.



Published errors can be seen in the TLM Collateral Management Messaging Intervention Tool web plug in.
