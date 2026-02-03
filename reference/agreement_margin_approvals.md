# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/agreement_margin_approvals.html

# Approvals Process for Agreement Margins

## Approvals Process

When Approvals is [enabled](<system_configuration.md#database-approvals>), and an [additional or lock up margin amount is defined on an OTC Agreement](<agmtmargins_otc.md#OTCAgmtMargins>), the record is locked as soon as the **Save** button is clicked.

The warning icon appears under the Actions column for each item and those records are now Pending Approval. These locked records cannot be deleted.

**Note:**

  1. The Agreement itself is not locked as part of this process. When the user hovers over the warning icon, it will say "Locked for changes".

Each record is displayed as a separate "Insert" row in the Approvals screen under the Pending Approval Type. The records must be approved or rejected individually.

Once a record has been approved or rejected, its corresponding row in the Agreement Margins grid is no longer locked and is free to be deleted.

If a record is deleted from the Agreement Margins grid, this also becomes locked and is identified by a warning icon that will state "Locked for changes" when hovered over the icon.

Each record is displayed as a separate "Delete" row in the Approvals screen under the Pending Approval Type. The records must be approved or rejected individually.

  2. While one or more Agreement margins are locked for approval, any attempts to import additional Agreement Margins for the same agreement will be prevented.



