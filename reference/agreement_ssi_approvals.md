
# Approvals Process for SSI's on an Agreement

## Approvals Process

When Approvals is [enabled](<system_configuration.md#database-approvals>), and a [SSI record on an Agreement](<agreements_settleinstr.md#settlement-instructions>) is altered, that is, it is either:

  * [Added](<agreements_settleinstr.md#adding-an-ssi>)
  * [Made agreement specific](<agreements_settleinstr.md#how-to-make-an-entity-ssi-agreement-specific>)
  * [Amended](<agreements_settleinstr.md#settlement-instructions>)
  * [Set as Default](<agreements_settleinstr.md#setting-an-ssi-default>) or [Default setting removed](<agreements_settleinstr.md#removing-an-ssi-default>)



the record is locked as soon as the **Save** button is clicked.

The warning icon appears in the Action column for each SSI item and those records are now Pending Approval.

These locked records cannot be deleted.

**Note:** The Agreement itself is not locked as part of this process, only the affected SSI record is locked.

For each agreement SSI record that has been added, or been made agreement specific from an entity SSI, a separate "Insert" row is displayed per record in the Approval screen under the Pending Approval type.

Similarly, for each agreement SSI record that has been amended, a separate "Update" row is displayed per record.

In either case, the records in the Approval screen under the Pending Approval Type must be approved or rejected individually.

Once a record has been approved or rejected, it's corresponding row in the Settlement Instructions grid is no longer locked and is free to be edited or deleted.
