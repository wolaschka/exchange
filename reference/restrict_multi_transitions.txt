# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/restrict_multi_transitions.html

# Restricting Multiple Transitions in Workflow States

By default, it is possible to advance multiple margin calculation results in each Workflow state.

However, certain actions can be limited to be individually advanced. For example, when Waiving Margin Calls, specific waive reason can be recorded for each item.

In order to configure the system to be limited to advancing individual actions, refer to the system administrator.

If the system has been configured in this way, an error message will appear if multiple items are transitioned.

An example message may say "You may not Waive multiple calls at once. Please only select one call and then click on Waive".

The text within the dialog box will be specific to the type of action that has been applied.
