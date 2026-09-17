# Deployment Reference

Documentation for all scripts under `Deployment/`.

## New-Forest

### Deploy-NewADForest.ps1
**Path:** `Deployment/New-Forest/Deploy-NewADForest.ps1`
**Synopsis:** End-to-end script to deploy a brand new Active Directory forest
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Standalone deployment script that installs Windows AD DS role, configures DNS prerequisites, creates a new forest and root domain, sets forest/domain functional levels, and configures initial AD structure (OUs, users, GPOs). Designed to be run on a freshly provisioned Windows Server.

## Domain-Controllers

### Deploy-ADDomainController.ps1
**Path:** `Deployment/Domain-Controllers/Deploy-ADDomainController.ps1`
**Synopsis:** Deploys additional domain controllers to an existing domain
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Standalone script that promotes a server to a domain controller in an existing domain. Handles prerequisite checks, AD DS installation, DNS configuration, site assignment, and post-promotion replication verification. Supports both writable and read-only DC modes.

## DNS

### Configure-ADDNS.ps1
**Path:** `Deployment/DNS/Configure-ADDNS.ps1`
**Synopsis:** Configures DNS infrastructure for an Active Directory environment
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Standalone script that configures DNS forwarders, creates forward and reverse lookup zones, sets up conditional forwarders, configures scavenging and aging settings, and validates DNS replication across domain controllers.

## DHCP

### Configure-ADDHCP.ps1
**Path:** `Deployment/DHCP/Configure-ADDHCP.ps1`
**Synopsis:** Configures DHCP server infrastructure for an Active Directory environment
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Standalone script that installs the DHCP server role, creates IP scopes and address pools, configures reservations and exclusions options, sets up failover relationships, and authorizes the DHCP server in AD.

## GPO

### Deploy-ADGPO.ps1
**Path:** `Deployment/GPO/Deploy-ADGPO.ps1`
**Synopsis:** Deploys and links Group Policy Objects during initial AD setup
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Standalone script that imports GPO backups from templates, links them to appropriate OUs and containers, sets enforcement and order, and verifies policy application. Includes security baselines and default workstation/server differentiation.

## Sites

### Configure-ADSites.ps1
**Path:** `Deployment/Sites/Configure-ADSites.ps1`
**Synopsis:** Configures AD Sites, subnets, and site links for multi-site environments
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Standalone script that creates AD Sites, assigns IP subnets, creates site links with cost/bandwidth/replication intervals, configures site assignment for subnets, and verifies inter-site replication topology.
