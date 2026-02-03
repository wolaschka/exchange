# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/messaging_IA_IM_MC.html

# Understanding Independent Amount & Initial Margin

## Overview

Independent Amount (IA) and Regulatory Initial Margin (IM) fields can be imported to an OTC and OTC Lock Up Only agreements and then included on a margin call for communication and verification purposes. While these fields are included on the margin call grid and are included on the margin call sent message to Acadia, they are informational and do not impact the margin calculation. These figures may be used by a user for reference when verifying a margin call that include IA and IM exposures.

## Import Process

IM IA Exposure values can be imported into the OTC and OTC Lock Up Only agreements for communication and verification purposes. These values are stored on the database for informational purposes and can be viewed in the margin call workflow. These value do not impact the overall margin call calculation, but are populated on the margin call sent message to Acadia to substantiate the margin call. A user would use these figures to identify what the underlying IM and IA details were intended for the overall margin calculation on agreements that utilize the Greater Of, Allocated and Distinct methods for IM and IA.

Once imported to an agreement, when a margin calculation is run, any IA and IM figures will be included on the margin call. When a margin calc has been run, any imported IA and IM figures will be displayed on the margin call. The following fields have been added to the margin call workflow grids to view the IA and IM figures. The timestamp is for when IM/IA was last imported on the agreement, when the margin calc was run.

  * Independent Amount
  * Independent Amount Due To
  * Reg Initial Margin
  * Reg Initial Margin Due To
  * IM/IA Timestamp UTC



**Note:**

  * The IM/IA Timestamp UTC on the margin call grid will show the timestamp of when the IM and IA fields were imported.
  * The IM and IA fields are visible from the margin call workflow grid and will not be in the lower level detail pane.
  * The IM and IA fields can be extracted to the reporting database.
  * The IM and IA fields will not be on the emailed margin call notices, margin call notices viewed in the application and margin call details in the lower level details pane.
  * The IM and IA fields will be included in the published margin call sent message that is then transformed and sent to Acadia by the Margin Call Adapter for creating margin calls, expected calls and notifications.



**What additional information is published to Acadia?**

TLM Collateral Management sends IA and IM information to Acadia when the figures are present a margin call in order to aid counterparties when reconciling. When a margin call message is sent, the TLM Margin Call Adaptor will population the initial exposure and IM exposure figures based on the Margin Approach set on the grouped agreement in Acadia.

When Margin Approach in AcadiSoft is set to:

  * Greater Of - For OTC and OTC Lock Up only agreements, IA will replace the initial exposure and IM will be populated as the SIMM IM Exposure).
  * Allocated / Distinct - For OTC agreements, IA will replace the initial exposure and IM will be populated as the SIMM IM Exposure). For OTC Lock Up Only agreements, initial exposure will not be sent and IM will be populated as the SIMM IM Exposure).
  * Where the Margin Approach is not present, IA will replace the initial exposure and IM will be populated as the SIMM IM Exposure).



**Note:** As of this version, the TLM Margin Call Adaptor is utilizing the Initial Margin Type and Margin Approach defined on a Regulatory CSA with call references for Initial margin types under a Group agreement in Acadia. Please consult Acadia's documentation for further set up of Group agreements.

The following margin call actions send IA and IM information:

  * Send Call(s) publishes full details of the margin calls. Applies to Unsent Demands, Unsent – SVA Anticipated Demands, Unsent – SVA No Actions.
  * Send Grouped Call(s) publishes full details of the margin calls. Applies to Unsent Calls.
  * ReSend Call(s) publishes full details of the margin calls. Applies to Sent Demands, Sent – SVA Anticipated Demands, Sent – SVA No Actions.


