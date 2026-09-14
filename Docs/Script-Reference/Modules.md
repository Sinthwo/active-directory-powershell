# Modules Reference

Documentation for all files under `Modules/`.

## Module Files

### ActiveDirectory-Toolkit.psd1
**Path:** `Modules/ActiveDirectory-Toolkit.psd1`
**Synopsis:** Module manifest for the Active Directory Toolkit
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Defines the metadata, version, required modules, and exported members for the ActiveDirectory-Toolkit PowerShell module.

### ActiveDirectory-Toolkit.psm1
**Path:** `Modules/ActiveDirectory-Toolkit.psm1`
**Synopsis:** Module loader for the Active Directory Toolkit
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Dot-sources all Public and Private function scripts, exports only the Public functions, and loads required assemblies.

## Private Helper Functions

Location: `Modules/Private/`

### Write-ADLog.ps1
**Path:** `Modules/Private/Write-ADLog.ps1`
**Synopsis:** Writes timestamped log entries for AD operations
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Internal function that writes structured log entries with severity levels (Info, Warning, Error) to a specified log file and optionally to the console. Used by all other functions for consistent logging.

### Test-ADConnection.ps1
**Path:** `Modules/Private/Test-ADConnection.ps1`
**Synopsis:** Tests connectivity to an Active Directory domain controller
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Internal function that validates network connectivity and AD web service availability before any operation. Returns a boolean indicating whether the target DC is reachable and responsive.

### Get-ADConfig.ps1
**Path:** `Modules/Private/Get-ADConfig.ps1`
**Synopsis:** Retrieves configuration settings from the Config directory
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Internal function that loads and merges configuration from JSON/XML templates in the Config directory, applying defaults where values are missing. Used to centralize configuration across all scripts.

### Confirm-ADModule.ps1
**Path:** `Modules/Private/Confirm-ADModule.ps1`
**Synopsis:** Verifies that required PowerShell modules are installed and importable
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Internal function that checks for the presence of required modules (ActiveDirectory, DHCPServer, GroupPolicy, etc.) and attempts to import them. Throws a terminating error if a critical module is missing.

## Format Definitions

### ActiveDirectory-Toolkit.Format.ps1xml
**Path:** `Modules/Formats/ActiveDirectory-Toolkit.Format.ps1xml`
**Synopsis:** Custom format definitions for AD Toolkit output objects
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Defines custom table, list, and wide view formats for objects returned by the module's public functions, improving readability of reports and status outputs.

## Public Module Functions

Location: `Modules/Public/`

### New-ADForestDeployment.ps1
**Path:** `Modules/Public/New-ADForestDeployment.ps1`
**Synopsis:** Deploys a new Active Directory forest using a configuration template
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Wrapper function that promotes a server to a new AD forest root domain. Reads forest configuration from the Config/Templates directory, validates prerequisites, installs AD DS roles, and performs the forest promotion.

### Add-ADDomainController.ps1
**Path:** `Modules/Public/Add-ADDomainController.ps1`
**Synopsis:** Adds a new domain controller to an existing domain
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Installs and promotes a new domain controller in an existing AD domain. Supports both additional DC and read-only DC (RODC) modes, validates replication health post-promotion, and configures DNS delegation.

### Set-ADDNSConfiguration.ps1
**Path:** `Modules/Public/Set-ADDNSConfiguration.ps1`
**Synopsis:** Configures DNS zones and records for Active Directory
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Creates or modifies AD-integrated DNS zones, forwarders, conditional forwarders, and aging/scavenging settings. Supports both forward and reverse lookup zones with configurable replication scope.

### Set-ADDHCPConfiguration.ps1
**Path:** `Modules/Public/Set-ADDHCPConfiguration.ps1`
**Synopsis:** Configures DHCP server settings for AD environments
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Installs and configures the DHCP server role, creates scopes, sets up failover relationships, configures DNS dynamic update credentials, and authorizes the DHCP server in Active Directory.

### New-ADGPODeployment.ps1
**Path:** `Modules/Public/New-ADGPODeployment.ps1`
**Synopsis:** Deploys Group Policy Objects from templates
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Creates and links GPOs from pre-defined templates in the Config directory. Supports security baselines, workstation/server policies, and custom GPO imports via backup/restore format.

### New-ADSiteConfiguration.ps1
**Path:** `Modules/Public/New-ADSiteConfiguration.ps1`
**Synopsis:** Creates and configures AD Sites and subnets
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Creates new AD Sites, assigns subnets, configures site links with cost and replication intervals, and manages site-to-subnet associations for optimal replication topology.

### New-ADUserAccount.ps1
**Path:** `Modules/Public/New-ADUserAccount.ps1`
**Synopsis:** Creates new Active Directory user accounts
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Creates one or more AD user accounts from a template or parameter set. Supports bulk creation via CSV, automatic password generation, OU placement, group membership assignment, and Exchange mailbox provisioning.

### Set-ADUserAccount.ps1
**Path:** `Modules/Public/Set-ADUserAccount.ps1`
**Synopsis:** Modifies existing Active Directory user accounts
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Updates properties on one or more AD user accounts including department, title, manager, phone numbers, and custom attributes. Supports pipeline input and bulk operations via CSV.

### Remove-ADUserAccount.ps1
**Path:** `Modules/Public/Remove-ADUserAccount.ps1`
**Synopsis:** Removes or disables Active Directory user accounts
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Safely removes AD user accounts with optional soft-delete (disable + move to a quarantine OU). Supports filtering by OU, group membership, or custom LDAP query. Includes confirmation prompts and audit logging.

### New-ADGroupManagement.ps1
**Path:** `Modules/Public/New-ADGroupManagement.ps1`
**Synopsis:** Creates and manages Active Directory security and distribution groups
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Creates new AD groups with specified scope (Domain Local, Global, Universal) and type (Security, Distribution). Supports nested group creation, contact-based distribution groups, and dynamic group rules.

### Set-ADGroupMembership.ps1
**Path:** `Modules/Public/Set-ADGroupMembership.ps1`
**Synopsis:** Modifies membership of Active Directory groups
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Adds or removes users, computers, and other groups from AD groups. Supports bulk membership changes via CSV, differential sync (add-only/remove-only modes), and nested group resolution.

### New-ADComputerAccount.ps1
**Path:** `Modules/Public/New-ADComputerAccount.ps1`
**Synopsis:** Creates computer accounts in Active Directory
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Pre-stages or creates AD computer accounts with optional OU placement, descriptions, and managed-by attributes. Supports bulk creation via CSV and automatic naming conventions.

### Set-ADPermission.ps1
**Path:** `Modules/Public/Set-ADPermission.ps1`
**Synopsis:** Manages ACL permissions on AD objects
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Grants, revokes, or audits ACE entries on AD objects including OUs, users, groups, and GPOs. Supports inheritance control, delegated administration patterns, and permission reporting.

### Get-ADGPOReport.ps1
**Path:** `Modules/Public/Get-ADGPOReport.ps1`
**Synopsis:** Generates reports on Group Policy Object status and results
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Produces HTML or CSV reports showing GPO links, enforcement status, disabled state, RSoP (Resultant Set of Policy) for users and computers, and unlinked GPO detection.

### Get-ADMonitoringStatus.ps1
**Path:** `Modules/Public/Get-ADMonitoringStatus.ps1`
**Synopsis:** Returns the health and status of AD services
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Checks the status of critical AD services including replication, DNS, time sync, DC diagnostic tests (dcdiag), FSMO role holders, and FLS/RTL state. Returns a structured status object.

### Invoke-ADBackup.ps1
**Path:** `Modules/Public/Invoke-ADBackup.ps1`
**Synopsis:** Performs Active Directory backup operations
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Backs up AD configuration including System State, GPOs, DNS zones, DHCP configurations, and OU structure. Supports scheduled backups, retention policies, and export to XML/JSON for disaster recovery.

### New-ADReport.ps1
**Path:** `Modules/Public/New-ADReport.ps1`
**Synopsis:** Generates comprehensive Active Directory reports
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Produces detailed HTML/CSV/JSON reports covering user accounts, group memberships, computer inventory, password policies, organizational unit structure, and dormant account analysis.