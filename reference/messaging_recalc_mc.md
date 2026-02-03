
# Recalculations

## Recalculations for Messaging Margin Calls

This topic outlines how the margin recalculation process affects messaging eligible margin calls that are in the margin call workflows. It is expected that readers for this topic should already be familiar with recalculation behavior in TLM Collateral Management. If not, it is strongly recommended that readers familiarize themselves with that before reading this topic.

## Overview

Part of core TLM Collateral Management functionality is to provide users with the ability to run margin calculations numerous times per business day. Broadly speaking, for margin calls in the [standard margin call workflow](<>) that are in an _eligible for side by side comparison_ re-calculable workflow state, when new margin calculation results are generated for the same agreement / calculation date, the user must make an evaluation whether to use the results from the _latest set_ of Margin Calculations, or to stick with the results from the _original_ Margin Calculations. These differing results are displayed as a side by side comparison for those calls affected. For the purposes of this topic, it is assumed that for affected margin calls, the user has elected to _use the new_ results, and therefore _replace the existing_ margin calls that are in the eligible for side by side comparison state with their recalculated results.

The below table summarizes the re calculable workflow state of margin calls in the _standard margin call_ workflow:

Re-calculable states of Margin Calls in the Standard Margin Call Workflow 

"Re-calculable" state | State | Standard Margin Call Workflow state  
---|---|---  
Unprocessed | Demands | Unsent state  
| Anticipated Demands | Unsent SVA - Anticipated Demands  
Anticipated Demands  
| No Actions | Unsent - SVA No Actions  
No Actions  
Eligible for side by side comparison | Demands | Sent Demands  
Waived - to be Approved  
Waived  
Disputed  
| Anticipated Demands | Sent - SVA Anticipated Demands  
Agreed - Awaiting Collateral Details  
Disputes  
| No Actions | Sent- SVA No Actions  
  
Disputes  
Non-Re-calculable | Demands | Confirmed to be Approved  
Confirmed - Sent to Settlements  
| Anticipated Demands | Confirmed to be Approved  
Confirmed - Sent to Settlements  
  
For Margin Calls in [Grouped Margin Call](<>) workflow, there is not a side by side comparison. Instead if a margin call is in an eligible for replacement state, the new margin calculation results _replace the original ones in entirety_.

The below table summarizes the re-calculable workflow state of margin calls in the _grouped margin call_ workflow:

Re-calculable states of Margin Calls in the Grouped Margin Call Workflow 

"Re-calculable" state | Grouped Margin Call Workflow State  
---|---  
Unprocessed | Unsent Calls  
Eligible for replacement | Sent Calls  
  
Agreed - Awaiting Collateral Details  
  
Agreed - No Action  
  
Waived to be Approved  
  
Waived  
  
Disputed  
Non-Re-calculable | Confirmed - to be Approved  
  
Confirmed - Sent to Settlements  
  
## Recalculation Behavior where original call is a Demand

When a Demand margin call is replaced as the result of a recalculation, i.e.:

  * The Demand was in the _Standard_ margin call workflow in a _eligible for side by side comparison_ re-calculable state and the user selects Use New Result from the side by side comparison.
  * Or the Demand was in the _Grouped_ margin call workflow in a _eligible for replacement_ re-calculable state.



the following behavior occurs:

  1. TLM Collateral Management publishes a message that the Demand margin call has been cancelled.
  2. The TLM Collateral Management Messaging Adapter in turn, listens for messages, and sends a Cancel Margin Call message via Acadia to the Counterparty.
  3. The recalculated margin call result is placed into its corresponding margin call workflow state. The state it is placed into depends on whether the Agreement is part of a [Combined Business Lines Agreement Group](<reference_related_data.md#agreement-group>), or if it is not, according to its margin call type:

     1. The replacement call will be placed in the **Unsent Calls** state in the **Grouped Margin Call** workflow if the Agreement is a member of a Combined Business Lines Agreement Group.
     2. If the Agreement is not in a member of a Combined Business Lines Agreement Group, then the replacement call is placed into the standard margin workflow state according to its call type, and whether the Principal is the sole valuation agent.

Margin Call Workflow States that Replacement Calls placed into.

Replacement Call Type | Principal SVA ? | Margin Call State  
---|---|---  
Demand (Standard) | Yes or No | Sent-Awaiting Collateral Details  
Demand (Group) | Yes or No | Unsent Calls  
Antic Demand | Yes | Unsent - SVA Anticipated Demands  
Antic Demand | No | Anticipated Demands  
No Action | Yes | Unsent - SVA No Action  
No Action | No | No Action  
  4. Bear in mind that the margin calls are eligible to be matched in the following workflow states:

Workflow States where margin calls eligible for messaging matching.

Standard / Grouped Workflow | Call Type | Workflow State  
---|---|---  
Standard | Demand | Sent Demands  
Standard | Anticipated Demand | Sent - SVA Anticipated Demands  
Standard | Anticipated Demand | Anticipated Demands  
Standard | No Actions | Sent - SVA No Actions  
Standard | No Actions | No Actions  
Grouped | All | Sent - Awaiting Call Details  
  5. This means that the recalculated call will be sent out if it is a Demand in the Standard Margin Call Workflow and will need to be sent out for any call type in the Grouped Margin Call Workflow.




## Recalculation Behavior where original call is an Anticipated Demand

When an Anticipated Demand margin call is replaced as the result of a recalculation, i.e.:

  * The Anticipated Demand was in the _Standard_ margin call workflow in a _eligible for side by side comparison_ re-calculable state and the user selects **Use New Result** from the side by side comparison.
  * Or, the Anticipated Demand was in the _Grouped_ margin call workflow in a _eligible for replacement_ re-calculable state.



the following behavior occurs:

  1. TLM Collateral Management publishes a message that the Anticipated Demand margin call has been cancelled.
  2. The TLM Collateral Management Messaging Adapter in turn, listens for messages, and does the following:
     1. If the Anticipated Demand was _fully agreed_ , a **Cancel Agreed** message is via Acadia to the Counterparty.
     2. If the Anticipated Demand was _partially agreed_ , the adapter sends a **Cancel Dispute** message via Acadia to the Counterparty.
  3. The recalculated margin call result is placed into its corresponding margin call workflow state. (_See step 3_) of "_Recalculation behavior when original call is a Demand" for a summary of this_
  4. In Acadia, the margin call is updated to a **received** state.
  5. When the TLM Collateral Management Messaging Adapter re-polls Acadia it will pull down the call.
  6. TLM Collateral Management will attempt to match the re polled call details.
  7. Bear in mind that margin calls in TLM Collateral Management are eligible to be matched in the following workflow states:

Workflow States where margin calls eligible for messaging matching

Standard / Grouped Workflow | Call Type | Workflow State  
---|---|---  
Standard | Demand | Sent Demands  
Standard | Anticipated Demand | Sent - SVA Anticipated Demands  
Standard | Anticipated Demand | Anticipated Demands  
Standard | No Actions | Sent - SVA No Actions  
Standard | No Actions | No Actions  
Grouped | All | Sent - Awaiting Call Details  
  8. This means that should the recalculated margin call be a No Action or Anticipated Demand in the Standard Workflow, then the system will attempt to match it to the re-polled call details. However, should the recalculated result be a Demand in the standard workflow or any call type in the Grouped Margin Call Workflow, it needs to be transitioned to the applicable Sent State in order to be eligible to be matched. If it is in the Unsent state when the Acadia call is re-polled, then the call will end up unmatched.




## Recalculation Behavior where original call is a No Action

When a No Action margin call is replaced as the result of a recalculation, i.e.:

  * The No Action was in the Standard margin call work flow in a eligible for side by side comparison re calculable state and the user selects Use New Result from the side by side comparison.
  * Or, the No Action was in the Grouped margin call work flow in a eligible for replacement re-calculable state.



the following behavior occurs:

  1. TLM Collateral Management publishes a message that the No Action margin call has been cancelled.
  2. The TLM Collateral Management Messaging Adapter in turn, listens for messages, sends a **Cancel Dispute** message via Acadia to the Counterparty.
  3. The recalculated margin call result is placed into its corresponding margin call workflow state. _See step 3) of "Recalculation behavior when original call is a Demand" for a summary of this)_
  4. In Acadia, the margin call is updated to a **received** state.
  5. When the TLM Collateral Management Messaging Adapter re-polls Acadia it will pull down the call.
  6. TLM Collateral Management View will attempt to match the re-polled call details.
  7. Bear in mind that margin calls in TLM Collateral Management are eligible to be matched in the following workflow states:

Workflow States where margin calls eligible for messaging matching

Standard / Grouped Workflow | Call Type | Workflow State  
---|---|---  
Standard | Demand | Sent Demands  
Standard | Anticipated Demand | Sent - SVA Anticipated Demands  
Standard | Anticipated Demand | Anticipated Demands  
Standard | No Actions | Sent - SVA No Actions  
Standard | No Actions | No Actions  
Grouped | All | Sent - Awaiting Call Details  
  8. This means that the should the recalculated margin call be a No Action or Anticipated Demand in the Standard Work flow, then the system will attempt to match it to the re-polled call details. However, should the recalculated be a Demand in the Standard Work flow, or any call type in the Grouped Margin Call Workflow, it will need to be transitioned to the applicable Sent state in order to be eligible to be matched. If it is in the Unsent State when the Acadia call is re-polled, then the call will end up unmatched.



