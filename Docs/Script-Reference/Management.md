# Management Reference

Documentation for all scripts under `Management/`.

## Users

Location: `Management/Users/`

### New-ADUser.ps1
**Path:** `Management/Users/New-ADUser.ps1`
**Synopsis:** Creates new AD user accounts interactively or in bulk
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Script for creating AD user accounts. Supports single user creation via interactive prompts or parameters, and bulk creation via CSV import. Handles password generation, OU placement, group assignment, and account enablement.

### Set-ADUser.ps1
**Path:** `Management/Users/Set-ADUser.ps1`
**Synopsis:** Modifies properties of existing AD user accounts
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Script for updating user account attributes including contact info, job details, department assignments, manager relationships, and custom attributes. Supports single user modification or bulk updates via CSV.

### Disable-ADUser.ps1
**Path:** `Management/Users/Disable-ADUser.ps1`
**Synopsis:** Disables AD user accounts with optional quarantine workflow
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Script that disables user accounts, moves them to a quarantine OU, removes group memberships, sets a description with disable date, and optionally notifies managers. Supports filtering by criteria and scheduled disabling.

### Remove-ADUser.ps1
**Path:** `Management/Users/Remove-ADUser.ps1`
**Synopsis:** Permanently removes AD user accounts
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Script for deleting AD user accounts after optional verification steps. Supports pre-deletion audit (checking dependencies, group memberships, resource ownership), soft-delete via disabled state, and hard-delete with confirmation.

## Groups

Location: `Management/Groups/`

### New-ADGroup.ps1
**Path:** `Management/Groups/New-ADGroup.ps1`
**Synopsis:** Creates new AD security or distribution groups
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Script for creating AD groups with specified scope and type. Supports nested group creation, naming convention enforcement, initial member assignment, and description/contact information.

### Set-ADGroupMembership.ps1
**Path:** `Management/Groups/Set-ADGroupMembership.ps1`
**Synopsis:** Manages membership of AD groups
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Script for adding and removing members from AD groups. Supports bulk operations via CSV, differential sync modes, nested group resolution, and membership reporting before and after changes.

## Computers

Location: `Management/Computers/`

### New-ADComputer.ps1
**Path:** `Management/Computers/New-ADComputer.ps1`
**Synopsis:** Creates and pre-stages computer accounts in AD
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Script for creating computer accounts with optional pre-staging for domain join. Supports naming conventions, OU placement, managed-by assignment, and description templates.

### Move-ADComputer.ps1
**Path:** `Management/Computers/Move-ADComputer.ps1`
**Synopsis:** Moves computer accounts between OUs
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Script for relocating computer accounts to different organizational units. Supports bulk moves via CSV or filter, validates target OU existence, and updates descriptions with move history.

## Permissions

### Set-ADPermissions.ps1
**Path:** `Management/Permissions/Set-ADPermissions.ps1`
**Synopsis:** Manages delegated permissions on AD objects
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Script for granting, revoking, and auditing permissions on AD objects. Supports OU delegation, role-based access patterns, permission inheritance control, and generates audit reports of current ACL state.

## GPO

Location: `Management/GPO/`

### New-ADGPO.ps1
**Path:** `Management/GPO/New-ADGPO.ps1`
**Synopsis:** Creates and links new Group Policy Objects
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Script for creating GPOs from scratch or from templates, linking them to OUs/domains, configuring enforcement settings, and verifying successful application. Includes security baseline templates.

### Get-ADGPOStatus.ps1
**Path:** `Management/GPO/Get-ADGPOStatus.ps1`
**Synopsis:** Reports on the status and health of Group Policy Objects
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Script that inventories all GPOs, identifies unlinked or disabled GPOs, reports on replication status, and generates RSoP summaries for specified users and computers.

## Monitoring

### Get-ADHealthStatus.ps1
**Path:** `Management/Monitoring/Get-ADHealthStatus.ps1`
**Synopsis:** Monitors and reports on Active Directory health
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Script that runs comprehensive health checks including dcdiag, replication status, DNS resolution, time synchronization, FSMO role verification, and service status. Generates alerts for critical failures.

## Backup

### Backup-ADConfiguration.ps1
**Path:** `Management/Backup/Backup-ADConfiguration.ps1`
**Synopsis:** Backs up Active Directory configurations and metadata
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Script that exports AD configurations including GPO backups, DNS zone files, DHCP configuration, OU structure, and security settings to a structured backup directory. Supports scheduling and retention management.

## Reporting

### New-ADReport.ps1
**Path:** `Management/Reporting/New-ADReport.ps1`
**Synopsis:** Generates comprehensive Active Directory reports
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Script that produces HTML, CSV, or JSON reports covering user inventory, group analysis, computer inventory, password policy compliance, dormant accounts, and organizational structure. Supports scheduled report generation.
