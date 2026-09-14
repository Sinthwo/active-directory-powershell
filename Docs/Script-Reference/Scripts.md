# Scripts Reference

Documentation for all scripts under `Scripts/`.

## Maintenance

Location: `Scripts/Maintenance/`

### Invoke-ADPasswordReset.ps1
**Path:** `Scripts/Maintenance/Invoke-ADPasswordReset.ps1`
**Synopsis:** Automates password reset operations for AD accounts
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Script that resets passwords for one or more AD accounts based on filters or CSV input. Supports generated temporary passwords, forced change at next logon, notification emails, and audit logging of all reset operations.

### Invoke-ADAccountCleanup.ps1
**Path:** `Scripts/Maintenance/Invoke-ADAccountCleanup.ps1`
**Synopsis:** Cleans up stale, disabled, and orphaned AD accounts
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Script that identifies and processes stale accounts based on last logon timestamp, disabled account age, orphaned computer accounts, and empty group cleanup. Supports dry-run mode, reporting, and configurable age thresholds.

### Invoke-ADDNSCleanup.ps1
**Path:** `Scripts/Maintenance/Invoke-ADDNSCleanup.ps1`
**Synopsis:** Performs DNS record cleanup and scavenging maintenance
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Script that triggers DNS scavenging, removes stale PTR/A records, validates reverse lookup zones, and reports on DNS health. Supports scheduling and configurable aging thresholds for stale record removal.

## One-off

Location: `Scripts/One-off/`

### Invoke-ADMassUserImport.ps1
**Path:** `Scripts/One-off/Invoke-ADMassUserImport.ps1`
**Synopsis:** Bulk imports users from CSV into Active Directory
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** One-time script for mass user provisioning from a CSV file. Maps CSV columns to AD attributes, handles password generation, OU placement, group assignment, validation, and generates a detailed import report with error handling for duplicates and conflicts.

### Invoke-ADForestRecovery.ps1
**Path:** `Scripts/One-off/Invoke-ADForestRecovery.ps1`
**Synopsis:** Assists with Active Directory forest recovery procedures
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Guided recovery script for AD forest disaster scenarios. Walks through metadata cleanup, seizing FSMO roles, rebuilding DNS zones, restoring from backup, and validating recovery steps. Designed for controlled disaster recovery execution.