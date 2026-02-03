
# Settlement Dates

## Settlement Date Defaults

In numerous areas in the system, when a collateral movement is saved/created, the settlement date value is defaulted. This default date is derived from **Settlement Offsets** which have been defined.

**Settlement Offset Hierarchy**

Settlement Offsets can be defined at three levels:

  * System
  * Agreement
  * Standard Settlement Instructions (SSI's) on Entities and Agreements



It is worth remarking also, that the three definition layers also differ in the levels of specificity for defining offsets. At a system configuration level, settlement offset can be defined to apply at an Instrument Class level, e.g Cash / Debt / Equity / Letter of Credit. Agreement level settings, as the name suggests apply to Instrument Class (Debt and Cash) for a specific Agreement. Settlement offsets defined on SSI records offer the highest level of definition granularity. As they are part of the SSI definition, they share the criteria by which the SSI is applicable to particular collateral movements:

  * The Party - Counterparty/Principal.
  * The Business Line of the Agreement.
  * The Margin type of the movement (Lock Up, Variation).
  * For Cash movements, whether to apply to Interest Distribution or Margin call movements.
  * The Movement Type and Direction of the Movement - whether Deliver To / Deliver From / Return To / Return From.
  * The Instrument Types / Specific Instruments on the movement.



Bearing in mind the above hierarchy, the system defaults the settlement date for a collateral movement using the following logic:

  1. If the collateral movement has SSI records applied, settlement offset value defined on the receiving party's SSI record is used. See  [Understanding SSI hierarchy](<agreements_settleinstr.md#understanding-ssi-heirarchy>) and derivation for more information on how SSI's are applied to collateral movements, and identifying sending/receiving party on collateral movements.
  2. If there is no SSI record for receiving party selected on the movement, the system will use the settlement offset defined on the agreement. The date will then be adjusted based on the holiday calendar on the agreement, if defined.
  3. If there are no applicable settlement offsets defined on the Agreement, the system will look to use offsets defined at the system configuration level.
  4. If no applicable offsets can be found at the system configuration level, settlement date will be set as T+1, where T is defined as the current business day for the Agreement's Principal Managing Location, and +1 is the number of business day's offset. Business Days are defined for movements purposes, as Monday to Friday.



**Note**

The Default Settlement date will be adjusted based on the agreement holiday calendar.

**Application**

Values selected in above derivation used in calculating the default settlement date will be for collateral movements created in the following system areas:

  * Collateral Movements entered via the Margin call workflow.
  * Manual Collateral Movements entered via the Movements Module.
  * Collateral Movements created via Substitutions.
  * Collateral Movements automatically created from Asset Allocation functionality.



## System Level Default Settlement Date Offsets

Settlement Date offsets can be set at three levels:

  * System Default Level - Values defined here will apply to collateral movements for **all** Agreements
  * Specific Agreement Level - Values defined here apply only to collateral movements for that specific Agreement
  * Standard Settlement Instruction Level - Values define at this level will apply to collateral movements that **employ that specific SSI**



For the above definitions, Collateral Movements means the following:

  * Collateral Movements entered via the Margin call workflow.
  * Manual Collateral Movements entered via the Movements Module.
  * Collateral Movements created via Substitutions.
  * Collateral Movements automatically created from Asset Allocation functionality.



**Note:** The settlement date for Interest payment movements (whether a distribution or roll in) is not subject to any settlement date offset adjustment.

**System Default Level**

TLM Collateral defaults the Settlement Date for Collateral Movements entered on Agreements via the application as per the following table.

Instrument Class of Instrument | Default Offset  
---|---  
Cash | T +1  
Debt | T +1  
Equities | T +1  
Letters of Credit | T +5  
  
T is defined as the current business day for the Agreement's Principal Managing Location, and +1 is the number of business day's offset. Business Days are defined for movements purposes, as Monday to Friday. Although strictly outset of the remit of the user help guide, it is possible to change the default offset, for example to T+2.

Offsets can only be set using positive numbers. It is not possible to have settlement dates default to a past date. Additionally, offsets can be set per Class of Instrument. That is, they can be set independently for:

  * Equity Instruments.
  * Debt Instruments.
  * Cash Instruments.
  * Letter of Credit Instruments



Offsets defined here will apply to all collateral movements (except interest payment movements) for that class of instrument for all agreements. The default offset values are held in a configuration file outside the system. Contact a System Administrator for more information.

**Specific Agreement Level**

Any offset defined at the Collateral Agreement level will override the system level default for the agreement in question. See [How to Define Agreement Specific Settlement Offset Values for Cash and Debt Movements](<basiceligibility.md#cashoffset>) for more details.

**Standard Settlement Instruction Level**

When a collateral movement uses an SSI, the offsets defined on the SSI will override any Agreement or System Level offset. SSI's can be defined on Agreements and Entities.

This is the most granular level of offset definition. See [Understanding Settlement Date Defaults](<#settlement-date-defaults>) for more information.
