
# 

## Additional and Lock Up Margins

In addition to taking collateral to cover the mark to market exposure of a transaction, it is common market practice, when trading with some Counterparties, to take some further margin. This extra margin is usually designed to offset potential exposure movements between margin calculation periods and to cover settlement risk between calling for and receiving collateral.

This extra margin is often referred to by a number of different terms including, Independent Amount, Upfront Amount and Initial Margin.

The way in which this extra margin is included in the margin calculation and called for is usually done in one of 2 ways:

  1. Netted with the mtm exposure.
  2. Called for as a separate requirement.



The ISDA Margin Provisions 2001 sought to introduce new terms for these amounts in order to simplify the documentation and it's application in the market. The terms they introduced were:

**Additional Margin** \- Netted with mtm exposure.  
**Lock Up Margin** \- Called as a separate requirement.

This terminology has now been adopted in TLM® Collateral Management.

Additional and Lock Up Margins can currently be applied in the application at trade level or agreement level and also at agreement level based on a parties credit rating

These margins have differing treatments within the margin calculation.

Additional Margins (that is, all trade level or agreement level Additional Margins regardless of which party they are due to) are first netted together to find one "Net Additional Margin" requirement. This Net Additional Margin figure is then summed with the Net Exposure prior to the application of the Threshold. They will therefore be subject to the application of Minimum Transfer Amounts and Rounding Amounts later in the calculation.

Lock Up Margins are traditionally held regardless of the exposure and usually without reference to the MTA and Rounding Amount. This approach is generally seen to offer the best credit risk mitigation as one would call the full amount of Lock Up Margin required even if it is below the MTA. Sometimes, this approach is seen to be problematic from an operational point of view and organizations might make a decision that while they would still require Lock Up Margin if it was below the Threshold they would allow it to be netted with other requirements and then be subject to the MTA and Rounding Amount.

TLM Collateral Management can accommodate either of these approaches with the use of the "Lock Up Calculation Type" at the agreement level.

In order to take the first approach, select the Lock Up Calculation Type, "Not Netted Against Variation". In this case the system will first calculate the total Lock Up Margin due. while it is possible that Lock Up margins could be due to both parties at the same time, this situation is not common. Hence, TLM Collateral currently nets any trade level or agreement Lock Up margins due to the principal against those due to the Counterparty, to come up with one "Non Netted Lock Up Margin" requirement. The term "Non Netted" in this label indicates that the Lock Up Margin is not netted with the exposure (even though the principal and Counterparty requirements have been netted together). Any existing collateral position is then "auto-allocated" against this Lock Up Margin requirement to determine whether a demand for Lock Up Margin is needed. If sufficient collateral is already in place, any surplus is then allocated to the standard calculation for Additional Margin and Exposure.

In order to take the second approach, select the Lock Up Calculation Type "Netted Against Variation". In this case the trade and agreement Lock Up Margins are netted together to find one "Netted Lock Up Margin" requirement. This is applied in the standard calculation after the Threshold. That is, one total requirement for Additional Margin and Exposure (after Threshold) plus Lock Up Margin is compared to the existing collateral position.

**Segregating Collateral Requirements**

Further, for those OTC Agreements that do not net Lock Up margin. That is, those that have a Lock Up Calculation Type of "Not Netted Against Variation" or “Lock Up Only Calculation”, it is possible to further define these Agreements to state whether lock up and variation requirements should be explicitly segregated. This is achieved via the collateral allocation field.

For those Agreements that segregate requirements, the value should be set to Segregate Lock Up and Variation or Lock Up Only. This has a number of consequences, such as splitting the collateral pool and indeed the margin call into totally independent lock up and variation requirements.

See [Working with OTC Agreements that Segregate Lock Up and Variation Margin](<segregate_lockup_varmargin.md>) or [How to Define an OTC Lock Up Only Agreement](<agreements_define.md#otc-lock-up-only>) for more details.

The results of these different calculation types can be seen in the Margin Call Calculation Read-Only Reports.

## Understanding Concentration using Entity Groups

TLM® Collateral Management allows for the monitoring of concentration risk on collateral positions and movements for a group of Issuers using Entity Groups on a per Agreement basis.

The concentration rule will be evaluated on all the Issuers that are a member of the Entity Group(s) selected.

However, it is important to note the following considerations when using Issuer Entity Group:

  1. Issuer entities can be associated to more than one Entity Group.
  2. Overlap across Entity Groups may result in the same Issuer Entity being evaluated more than once depending on how the concentration rule is constructed.
  3. A new operation called Not Only In has been introduced to ensure the correct evaluation of the concentration rule when overlap across Entity Groups occur.
  4. Not Only In operation is only available when using Issuer Entity Group.
  5. [Not In](<agreements_concentrationrules.md#concentration-rule-examples>) operation is no longer available when using Issuer Entity Group.



**Application of Functionality**

In order for the system to evaluate Concentration rules using Issuer Entity Group, the following set up has to be in place: 

  1. Entity Groups created and defined for Concentration.
  2. Entity Groups assigned to Issuer Entities.
  3. Issuers assigned to Debt, Equity or Letter of Credit Instruments.
  4. Concentration Rules have been defined on an Agreement(s).



## Understanding Posting Party on an Agreement

Collateral Agreements executed between Principal and Counterparty specify the parameters for calculating the collateral requirement, and the circumstances where a party is obliged to provide (post) collateral. It is common for most Collateral Agreements to require either party to post collateral to the other depending on the results of the margin calculation. In these scenarios the Collateral Agreements are known as being bilateral, or "Two Way." However, it is also possible for the parties to execute Collateral Agreements that restrict the obligation to post collateral to one party only. This form of Collateral Agreement is known as a Unilateral Agreement, or "One Way." Unilateral Collateral Agreements can be constructed so that the posting of collateral is restricted to either the Principal or the Counterparty.

TLM® Collateral Management supports either of these Unilateral Collateral Agreement forms.

The field Posting Party on the Collateral Agreement General Tab specifies whether the Agreement is Bilateral, or Unilateral for a particular party. By default this field assumes both parties can post collateral, i.e. the Agreement is bilateral.  It is important to understand the implications of this setting, as it determines how the margin calculation task generates margin calls which are valid according to which party needs to post collateral.

It is important to understand how calculations for "unilateral" Agreements are dependent on correct data - namely collateral balances and lock up requirements. Please see note 1) below.

**Posting Party: Principal**

Defining the Posting Party as Principal, restricts the obligation to post collateral to the Principal only. Therefore, the Margin Calculation Task will only ever result in the following Margin call scenarios.

  * A Demand where the result is Return to Principal of posted collateral. 
  * An Antic Demand where the Principal would deliver collateral to the Counterparty. 
  * Should the margin calculation for this form of Agreement produce a Deliver to Principal requirement, this will generate a No Action margin call with a No Action type of "Unilateral Agreement."



**Posting Party: Counterparty**

The converse is true if the Posting Party is defined as Counterparty. This definition restricts the obligation to post collateral to the Counterparty only. The Margin calculation will only ever result in the following Margin call scenarios.

  * A Demand where the result is a Delivery to Principal of Collateral. 
  * An Antic Demand, where the Principal would Return posted collateral to the Counterparty. 
  * Should the margin calculation for this form of Agreement produce a Deliver to Counterparty requirement, this would result in a No Action margin call with a No Action type of "Unilateral Agreement"



**Posting Party: Both**

This is the default value for Posting Party and means that the Agreement is bilateral. Neither Margin call results, nor movement entry directions are restricted. Each party will be required to post collateral according to the margin requirement.

**Note:**

  1. When an Agreement is defined as "unilateral", it is highly recommended that collateral positions, and Lock Up requirements don't exist in favor of the Posting Party.

That is, should the posting party be Principal, there should be no collateral positions with a direction of "Held", nor should there be lock up requirements defined as in favor of the Principal. The converse is true when Posting Party is defined as Counterparty. Such positions and requirements are deemed invalid. For Unilateral Agreements it is assumed that no such invalid positions as defined above exist. There is a remote potential that Margin Calculation results will not be consistent if invalid positions exist.

  2. Posting Party field is audited in the standard way.



