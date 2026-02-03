
# Repo Margin Terms

In the Repo market it is commonplace for Agreements to be signed without clearly defined margin terms.

In this case, one might agree operational parameters with their credit department and their counterparty.

**Example:**

Even though a Minimum Transfer Amount is not documented in the legal agreement, one may agree not to transfer collateral unless the requirement is greater than USD 500,000. The Margin Terms screen for a Repo Agreement is therefore divided into two sections, **Agreement Parameters** and **Internal Parameters** , allowing to store any terms that have been documented but to indicate where these have been overridden by internal policy or market practice.

When [importing Margin Terms](<import_margin_terms.md>), a "Margin Term Type" is used to indicate which party the terms apply to. 

The Margin Term Type for [Repo Agreements](<agreements_define.md#repo>) is either _Agreement_ or _Internal_.

Field | Description  
---|---  
Currency | The Currency for the Margin Parameters (MTA; Rounding amount;) for the relevant party under the agreement.  
  
This will default to the same currency as the Agreement Currency on the General Tab. However, this can be defined in any currency.  
  
If defined in a currency other than agreement currency, the margin parameters will be converted into agreement currency using the latest FX rates. The following rules are applied:  
  
The margin parameters are converted to agreement currency equivalents prior to the margin calculation.  
  
Any decimal places that exist after the conversion are ignored, e.g. 1,000,025.256 is treated as 1,000,025 in the Margin Calculation.  
  
**Note:** The currency selected here applies to the following margin parameters:  
\- Minimum Transfer Amount  
\- Rounding Amount  
Minimum Transfer Amount | The Minimum Transfer Amount, if any, which should be used in the margin calculation for this agreement. This amount must be entered as a positive number and with no decimal places.  
  
The default value is zero.  
Rounding Amount | The rounding increment, if any, which should be used in the margin calculation for this agreement. This amount must be entered as a positive number and with no decimal places.  
  
The default value is zero.  
Deliver Rounding Method | The rounding method which should apply to deliveries of collateral under this agreement.  
  
The options are:  
Up  
Down  
Closer  
  
The default value is Up.  
  
**Note:** Should calculation type be "Repo Net", then this delivery rounding method is always used.  
Return Rounding Method | The rounding method which should apply to deliveries of collateral under this agreement.  
  
The options are:  
Up  
Down  
Closer  
  
The default value Down.  
  
**Note:** Should calculation type be "Repo Net", then this rounding method is ignored, and the Delivery Rounding Method is used .
