# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/marginterms_seclending.html

# Securities Lending Margin Terms

The Margin Terms screen for a [Securities Lending Agreement](<agreements_define.md#securities-lending>) is divided into two sections, **Agreement Parameters** and **Internal Parameters** , allowing any terms to be stored that have been documented but to indicate where these have been overridden by internal policy or market practice.

(When importing Margin Terms a "Margin Term Type" is used to indicate which party the terms apply to. For Securities Lending Agreements, the Margin Term Type is either Agreement or Internal.)

The parameters which can be defined are as follows:

Field | Description  
---|---  
Currency | The Currency for the Margin Parameters (MTA; Rounding amount;) for the relevant party under the agreement.  
  
This will default to the same currency as the Agreement Currency on the General Tab. However, this can be defined in any currency.  
  
If defined in a currency other than agreement currency, the margin parameters will be converted into agreement currency using the latest [FX rates](<instruments_debt.md#prices>).  
  
The following rules are applied:  
  
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
Return Rounding Method | The rounding method which should apply to deliveries of collateral under this agreement.  
  
The options are:  
Up  
Down  
Closer  
  
The default value Down
