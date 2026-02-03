
# Understanding Short Position Checking on Movements

## Background

TLM® Collateral Management can be configured to check when saving collateral movements that they do not 

  * Create (or increase an existing) short position.
  * Fail to resolve an existing short position.



Specifically when the configuration is enabled, the check is performed on the following collateral movement types

  * Margin Call
  * Manual
  * Margin Call Upload
  * Substitution



when the movement is created / canceled / cancel-replaced and (additionally for movements of type manual only), rejected.

Unless configured otherwise by your system administrator, this short position check is disabled by default.

## Calculating Available Asset Pool Balance

For short position checking purposes the available balance for an instrument in an asset pool for a specified settlement date is calculated.

The available asset pool balance calculation is as follows:

  1. Take the Settlement Date specified on the Collateral Movement.
  2. Locate the imported Asset Pool balance for the Instrument where the effective date is equal to the movement's settlement date
  3. Determine for the asset pool / instrument what the current used (i.e posted) amount is by calculating an @sum per instrument notional/asset pool for the following items:
     1. Posted Collateral Positions
     2. Qualifying State Deliver to Counterparty Movements
     3. Qualifying State Return to Principal Movements.
  4. Subtract the @summed posted amount results from step 3) from the corresponding Asset Pool Instrument balances in step 2)
  5. The Instrument balance for the Asset Pool at the end of this calculation is the Available amount for the settlement date



**Note:** The above calculation can result in a negative amount

**Qualifying Collateral Movements Definition**

For the purposes of calculating available notional, a qualifying state Collateral Movement must meet all the following criteria:

  1. Settlement Date less than or equal to the settlement date of the new movement
  2. Not be in an end Settlement State



Where **End Settlement State** is defined as the following Settlement Statuses for all [Collateral Movement Types](<movements.md#view-movements>)

  * Cancelled
  * Ignored
  * Rejected Replaced
  * Settled



Additionally, for Collateral Movements of type Manual, the settlement status of Rejected is also considered an end state.

## Calculating Available Internal Pool Balance

For short position checking purposes the available internal pool balance (also known as the rehypothecation available amount) is calculated.

The available asset pool balance calculation involves two steps

**Stage One: Calculate the Current Rehypothecatable Pool**

  1. The Principal on the movement is determined.
  2. Agreements for the selected Principal(s) that have held collateral positions are selected. (or Qualifying Collateral Movements - see definition below) are selected.
  3. From the Agreement selection produced in step 2), Instrument Positions / movements for Agreements that have an Available for Rehypothecation value of None are discarded.
  4. Similarly, for the selections from step 2) positions/movements with a margin type of Lock Up are discarded if the Agreement has an Available for Rehypothecation value of Variation Only.
  5. Conversely, from the same selection positions/movements with a margin type of variation are discarded if the Agreement has an Available for Rehypothecation value of Lock Up Only.
  6. From the selection of Agreements in steps 2 any positions/movements with a margin type of variation are discarded if a Tri-Party Custodian for variation collateral is defined. Similarly, from the same agreements selection, should any Agreements have a Tri-Party Custodian for Lock up collateral defined, any collateral positions/movements with a margin type of lock up for those Agreements are discarded.
  7. This leaves a "Internal pool" of collateral for agreements for the Principal(s) selected which have consented that held collateral positions / movements for the instrument are potentially available to be rehypothecated. for the Principal's usage on the settlement date. 



**Stage Two: Adjust the Internal Pool to account for current usage**

In step one, the Internal of rehypothecatable pool was calculated. In this stage, the pool is adjusted to account for what has been used.

Firstly:

  1. Any qualifying state Return to Counterparty Collateral Movements for the Instrument are subtracted from the calculated pool.
  2. Next the current posted notional for the instrument is calculated by @summing the following three groupings:
     1. Posted positions for the Instrument.
     2. _Plus any qualifying state_ **Deliver to Counterparty** Collateral Movements for the Instrument.
     3. _Minus any qualifying state_ **Return to Principal** Collateral Movements for the Instrument.
  3. The resultant **current posted notional** calculated in step 2) is then subtracted from the Internal Pool calculated in Stage One.



The balance left at the end of this calculation is the Instrument's available rehypothecatable position for the Movement's Settlement Date. Note that this can be a **negative** number (which means a short position **exists**).

**Qualifying Collateral Movements Definition:**

A Collateral Movement must meet all of the following criteria to be considered "qualifying" :

  * Settlement Date that is less than or equal to the movement's settlement date
  * Not in an end settlement state.



Where End Settlement State is defined as the following Settlement Statuses for all [Collateral Movement Types](<movements.md#view-movements>)

  * Cancelled
  * Ignored
  * Rejected Replaced
  * Settled



Additionally, for Collateral Movements of type Manual, the settlement status of Rejected is also considered an end state.

## Enable Short Position Checking

Although strictly outside of the remit of this user guide, be aware that it is possible to enable short position checking functionality.

(It is expected that this configuration would be performed by your system administrator)

When TLM Collateral is installed, the following key in the web.config file is set with a value of false:.
    
    
    <add key="TrackShortPositions" value="false"/>
    

This key needs to be set to **true** to enable short position checking:
    
    
    <add key="TrackShortPositions" value="true"/>
    

**Interaction with Principal Entities**

Once enabled, the system will perform short position checking for all the above movement types for Agreements provided the Agreement's Principal Entity has the [**Monitor Short Position**](<entities_general.md#shortpositions>) flag as enabled.

This provides the flexibility to have short position checking enabled for certain Principals. but disabled for others. See summary table below.

## Disabling Short Position Checking

Again, this is considered to be a system administrator function and outside of the remit of this user guide. However, in terms of background knowledge to disable short position checking for all movements (irrespective of how the Principal Entity flag is set), the System Administrator or Database Administration team should set the value in the web.config key back to false: 
    
    
    <add key="TrackShortPositions" value="false"/>
    

## Summary

The below table summarizes the interaction of this web config and the [Principal](<entities_general.md#shortpositions>) settings.

Table 1. 

Web Config and/or Algo.Collateral.Services.MessagingSubscriptionService.exe.config (see Considerations for Messaging Eligible Margin Calls) | Principal Entity Setting | Short Position check performed on movements for the Principal's Agreements?  
---|---|---  
_TrackShortPositions" value="true"_ | ![monitor_short_positions_checked.jpg](Images/monitor_short_positions_checked.jpg) | Yes  
_TrackShortPositions" value="true"_ | ![monitor_short_positions_unchecked.jpg](Images/monitor_short_positions_unchecked.jpg) | No  
_TrackShortPositions" value="false"_ | ![monitor_short_positions_checked.jpg](Images/monitor_short_positions_checked.jpg) | No  
_TrackShortPositions" value="false"_ | ![monitor_short_positions_unchecked.jpg](Images/monitor_short_positions_unchecked.jpg) | No  
  
## Considerations for Messaging Eligible Margin Calls

TLM Collateral Management has the capability to automatically create movements from [messages](<messaging_margincalls.md#margin-call-matching-criteria>) received from Acadia. As part of the movement creation process, it performs short position checking in the same exact manner as described above. 

However, there is a separate configuration setting within the TLM Collateral Management installation that needs to be updated in order to enable the Short Position tracking for [messaging eligible](<messaging_margincalls.md>) margin calls.

(It is expected that this configuration would be performed by the system administrator)

When TLM Collateral is installed, the following key in the Algo.Collateral.Services.MessagingSubscriptionService.exe.config file is set with a value of false:
    
    
    <add key="TrackShortPositions" value="false"/>
    

This key needs to be set to true to enable short position checking:
    
    
    <add key="TrackShortPositions" value="true"/>
    

**Note:** Processing margin calls through Acadia is an automated straight through process. This means when the Short Position checking is enabled, movements will not be created and an exception message will be published to the TLM Collateral Management Messaging Intervention Tool.

## Considerations for Public API

The Public API has the capability to automatically create movements from supplied movement data. As part of the movement creation process, it performs short position checking. This is done based on a combination of settings. See [here](<public_api_movement_upload.md>) for more details.
