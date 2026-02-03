# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/anticipated_demand_examples.html

# Anticipated Demand Examples

## Principal Agrees in Full to a Margin Call

In this scenario, the Principal has calculated that it can be called (An Anticipated Demand) for USD 25,000,000 for the Demo Data Analysis Agreement, and moreover is called by the Counterparty for this amount.

Processing steps are:

  1. To view the details of the call, select the magnifying class of the margin call. This will bring you to the details pane.
  2. Select the **Agree** button in the top right portion of the screen.

![antic_demand_example1.jpg](Images/antic_demand_example1.jpg)

  3. This will bring up a window where the Cpty Call Type and the amount can be adjusted. Ensure that the **Cpty Call Type** drop-down field remains set as _Anticipated Demand_. (By default, this field's drop-down value is set per the current call type)

![antic_demand_example2.jpg](Images/antic_demand_example2.jpg)

  4. Enter the amount that the Counterparty has called for in **Cpty Call Amount** field and then tab out of the field. The **Agreed Amount** field will automatically be populated with the same value as entered in the _Cpty Call Amount_ field.

**Note:** As the _Cpty Call Amount_ entered is identical to the Principal Call Amount, should there be an [agreed tolerance](<agreements_define.md#agreetolerance>) amount defined on the agreement, it is not employed. See [Examples of Agree Tolerance Method Usage](<example_agree_tolerance_method.md>) for a details of how STD applies.

  5. Click the **Agree** button that will becoming enabled once the _Agreed Amount_ has a value.




**Note:**

  1. The _Cpty Call Amount_ field must be populated and you must tab out of the field to populate the _Agreed Amount_ field. 
  2. The **Agree** button is disabled until _Cpty Call Amount_ and _Agreed Amount_ fields have a value. 
  3. The agreed amount entered is not taken into consideration as collateral values until the next business day.
  4. Agree tolerances are not applied when Counterparty Call Amount is equal to the Principal Call Amount. 



## Principal Agrees partially to a Margin Call

In this scenario, the Principal has calculated that it can be called (An Anticipated Demand) for USD 25,000,000 for the Demo Data Analysis Agreement. However, the Counterparty is requesting margin of USD 50,000,000.

Processing steps are:

  1. To view the details of the call, select the magnifying class of the margin call. This will bring you to the details pane.
  2. Select the **Agree** button in the top right portion of the screen.

![antic_demand_example3.jpg](Images/antic_demand_example3.jpg)

  3. This will bring up a window where the Cpty Call Type and the amount can be adjusted. Ensure that the **Cpty Call Type** drop-down field remains set as _Anticipated Demand_. (By default, this field's drop-down value is set per the current call type)

  4. Enter the amount that the Counterparty has called for in _Cpty Call Amount_ field. In this example, it will be 50,000,000.
  5. When you click out of the field the system checks whether Agree tolerance has been defined on the Agreement. If it has not been defined, then the system evaluates the difference between the Principal Call Amount and the Counterparty Call Amount. Should the difference be within the defined Agreed tolerance, then the method that is defined on the agreement will be applied to the Agreed Amount. See [Examples of Agree Tolerance Method Usage](<example_agree_tolerance_method.md>) for more details. Should the difference be outside the Agree tolerance, no adjustment is made, and the Agreed Amount is populated.
  6. The Agreed Amount field will populate with the lower of the Cpty Call Amount or the Prin Call Amount. In this example, it will be USD 25,000,000.

**Note:** If for some reason (for example you knew an exposure value was incorrect) you wish to override this calculated agreed amount you can over-type the agreed amount. The system will never calculate an agreed amount which is greater than the Prin Call Amount.

  7. Click the **Agree** button.

  8. An evaluation now occurs to see if a partial dispute should be created. Should the difference between the _Cpty Call Amount_ and the _Agreed Amount_ be greater than the dispute tolerance, then a partial dispute item for the difference is created.
  9. Simultaneously, the **Dispute Information** form appears, and the user is required to enter some information to categorize and explain the dispute. (Although the above step is required by default, the system can be configured by your System Administrator so that it is disabled)
  10. The **Partially disputed** antic demand margin call and advanced to the Antic Demands Workflow - Disputes state. The Antic Demand which has been partially agreed is advanced to the Antic Demands Workflow - Agreed state.



**Note:**

  1. The _Cpty Call Amount_ field must be populated and you must tab out of the field to populate the _Agreed Amount_ field.
  2. The **Agree** button is disabled until _Cpty Call Amount_ and _Agreed Amount_ fields have a value.
  3. The agreed amount entered is not taken into consideration as collateral values until the next business day.
  4. Agreed amounts entered are not taken into consideration as collateral values until the next business day.
  5. As the _Cpty Call Amount is > _Principal Call Amount _the system evaluates whether the difference falls within the[Agree tolerance](<agreements_define.md#agreetolerance>) on the Agreement and if so will incorporate the selected methodology when calculating the _Agreed Amount*.


