
# 

## ISDA Unsecured with Additional Margin

In this example, the Net Exposure is in the Principal's favor in the amount of $7,847,493.66.

The net of all Additional Margins applied at trade or agreement level is a further $250,000.00 in the Principal's favor.

The sum of these two figures is then compared to the Threshold. The Threshold displayed in the report is the one applied in the calculation which is the Counterparty's Threshold of $5,000,000.00.

The result of the calculation is that the Counterparty owes the Principal collateral equal to $3,097,493.66

This requirement is then compared to any existing Collateral Held position. In this case, there is currently $2,000,000.00 collateral held so the new requirement is $1,097,493.66.

This figure is then compared to the MTA and rounded to determine the amount of collateral which needs to be moved. In this case a Deliver to Prin of $1,100,000.00

![example_isda_unsecure_add_margin.jpg](Images/example_isda_unsecure_add_margin.jpg)

## ISDA Secured with Additional Margin

This example uses the same data as the previous example.

The difference in calculation is with regards to the way that the Threshold is applied.

Once the Threshold has been breached, collateral must be posted to cover the full requirement of $8,097,493.66.

This figure is compared to the existing collateral held and subject to the MTA and Rounding Amount as before.

![example_isda_secure_add_margin.jpg](Images/example_isda_secure_add_margin.jpg)

## ISDA Unsecured with Non Netted Lock Up Margin and Auto Allocate

In this example, the Lock Up Margin is being used which cannot be netted. The Lock Up requirement is covered, regardless of any Exposure, Threshold, MTA or Rounding Amount.

The Lock Up requirement is $250,000.00 which the Counterparty must post to the Principal. The collateral being held is $2,000,000.00.

The collateral is first auto allocated to cover the Lock Up Margin. In this example, the collateral covers the Lock Up therefore there is no new Lock Up Margin Deliver requirement.

As the Collateral Allocation Method is defined as "Auto Allocate", any collateral in excess of the Lock Up requirement is automatically allocated to variation requirements.

The surplus collateral, in this case $1,750,000.00, is carried forward and applied to the rest of the calculation as standard.

![example_isda_unsecured_nonnetted_autoallocate.jpg](Images/example_isda_unsecured_nonnetted_autoallocate.jpg)

If sufficient collateral is not held to cover the Lock Up Margin the deliver requirement to cover this is shown at the top of the report, as shown in the example below.

The remainder of the calculation continues as standard with the final Demand Call Amount being the total of the Lock Up and variation delivery amounts.

![example_isda_unsecured_nonnetted_autoallocate_2.jpg](Images/example_isda_unsecured_nonnetted_autoallocate_2.jpg)

## ISDA Unsecured with Non Netted Lock Up Margin with Segregate LockUp and Variation Allocation

When an OTC Agreement is defined with a Collateral Allocation type of Segregate Lock Up and Variation, the margin requirements for Lock Up and Variation are treated separately, with collateral explicitly defined in terms of which requirement it will be allocated toward.

As the two requirements are segregated, a margin call is always generated for both the Lock Up and Variation requirements. Depending on the inputs, it maybe that both requirements generate margin calls of the same type, or they can be of differing types.

Like the previous example, the Lock Up requirement is $250,000.00 which the Counterparty must post to the Principal.

The Principal is holding $2,000,000.00 collateral. However, this collateral has explicitly been defined as being allocated only toward the lock up requirement. (This is done by defining Margin Type on Collateral Movements and positions.)

This Lock up collateral cannot be used against variation requirements and the excess therefore generates a return for $1,750,000 Lock Up Margin to the Counterparty.

Despite the Lock up surplus, none of this is allocated toward the rest of the margin calculation.

Therefore a demand margin call for delivery of $2,850,000.00 variation margin to the Principal is generated.

In summary, the requirement has generated the following margin calls:

  * An Antic Demand for return of $1,750,000 Lock Up Margin Collateral to the Counterparty

  * A Demand for $2,850,000 variation margin collateral due to the Principal.




**Demand**

![example_isda_unsecured_nonnetted_segregate.jpg](Images/example_isda_unsecured_nonnetted_segregate.jpg)

**Antic Demand**

![example_isda_unsecured_nonnetted_segregate_2.jpg](Images/example_isda_unsecured_nonnetted_segregate_2.jpg)

As collateral is no longer "pooled" but kept in separate lock up and variation buckets, there can be scenarios where there is insufficient collateral held to meet each requirement. That is, there is insufficient lock up collateral and insufficient variation collateral.

This will result in two separate margin demands on the same margin call.

In this example, there are two margin requirements on the same margin call.

  * A variation margin demand of $1,850,000, based on MTM exposure of $7,847,493.66 after the threshold and variation collateral held position of $1,000,000 are taken into account.

Despite there being a lock up margin demand of $150,000 none of the $1,000,000 collateral held position is allocated to lock up as the collateral is explicitly defined as variation.




![example_isda_unsecured_nonnetted_segregate_4.jpg](Images/example_isda_unsecured_nonnetted_segregate_4.jpg)

  * A Lock Up Margin requirement of $150,000.



![example_isda_unsecured_nonnetted_segregate_3.jpg](Images/example_isda_unsecured_nonnetted_segregate_3.jpg)

The field Margin Type in the grid denotes whether the Margin Call has arisen from a Variation or Lock Up requirement.

If either Margin Calculation results in a zero requirement for either of the Lock Up or Variation, a No Action Margin call is generated for that requirement.

## ISDA Unsecured with Netted Lock Up Margin

Netted Lock Up Margin is applied in the standard calculation after the Threshold.

This method is sometimes used to ensure that Lock Up Margin is taken even if the amount is below the Threshold but the requirement to then be netted with any exposure requirement and subject to the MTA and Rounding Amount.

![example_isda_unsecured_netted_lockup_margin.jpg](Images/example_isda_unsecured_netted_lockup_margin.jpg)

## Repo Standard

In the Repo Standard calculation, it is not expected that there will be Collateral Held and Collateral Posted positions at the same time. The usual process would be to return collateral held before posting out new collateral.

If collateral is held and posted at the same time separate margin calculation results are displayed in the Margin Calls grid.

In the example below the exposure is $7,847,493.66 in the Principal's favor. There is an existing Collateral Held position of $9,847,493.66 so in fact the Principal could return $2,000,000 to the Counterparty.

At the same time, there happens to be a Collateral Posted position of $2,000,000. As there is no exposure in the Counterparty's favor, the Principal can make a Demand to have this $2,000,000 returned to them.

In the grid, a Demand and an Anticipated Demand for these two events will exist.

![example_repo_standard_demand_antic_grid.jpg](Images/example_repo_standard_demand_antic_grid.jpg)

The details displayed in the read-only report are the same for each of the events with the corresponding final requirement highlighted to correspond with the row selected in the grid (in this case a Demand Call Amount of $2,000,000).

![example_repo_standard.jpg](Images/example_repo_standard.jpg)

## Repo Net

This example uses the same data as the previous Repo Standard example and highlights the key difference between the two calculations.

In the Repo Net calculation, Collateral Held and Posted positions are netted together before being compared to the Net Exposure.

In this example the collateral positions exactly offset the Net Exposure resulting in a No Action requirement.

The read-only report still shows the Return to Prin and Return to Cpty suggested movements resulting from the Repo Standard calculation. This information is included as a way for the user to identify the movements which should take place if they wanted to clean up the collateral balances in order to ensure that collateral is only posted in one direction at any time.

![example_repo_net_no_action.jpg](Images/example_repo_net_no_action.jpg)

<!--### ISDA Unsecured with Lock Up Only Calculation

When an OTC Agreement is defined with a Lock Up Only Calculation type, a single margin requirement will be generated for collateral margin type Lock Up.

The Lock Up margin requirement of $995,000.00 is due to the Principal with an unsecured Threshold of $500,000.00. The Threshold is applied to the Lock Up margin requirement generating a net Lock Up requirement of $495,000.00.

The rounding amount is defined in increments of $10,000.00 with a rounding method of Up. The result is a Demand Lock Up requirement of $500,000.00.

![]()

**Note:** The Minimum Transfer Amount defined is less than the final margin requirement, generating the full requirement amount on the margin call. If the final margin requirement calculated to be $50,000 or below, the margin requirement created would have been zero, i.e. No Action. See No Action section for details.

![]()

### ISDA Security with Lock Up Only Calculation

As with the previous ISDA Unsecured with Lock Up Only Calculation example, the ISDA Security with Lock Up Only Calculation will also generate a single margin requirement for collateral margin type Lock Up.

The Lock Up requirement of $995,000.00 is due to the Counterparty with a secured Threshold. Anticipated Demand requirement will be generated but the Threshold will not be applied to the margin requirement. Once the Threshold has been breached, collateral is required to be posted for the full requirement.

After applying the Rounding Amount and Method as described in previous example, a Lock Up margin call of $1,000,000 is generated.

![]()

### No Action

If the result is No Action because it is not a valid Valuation Date for the agreement, the calculation results will still be displayed in the report but the final line will display No Action.

![]()

If the result is No Action because the margin calculation failed due to missing FX Rates, the report will not show any calculations.

![]()
