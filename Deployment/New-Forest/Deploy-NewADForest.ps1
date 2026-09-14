<#
    .SYNOPSIS
        End-to-end script to deploy a brand new Active Directory forest.

    .DESCRIPTION
        Standalone deployment script that installs Windows AD DS role, configures DNS
        prerequisites, creates a new forest and root domain, sets forest/domain
        functional levels, and configures initial AD structure (OUs, users, GPOs).
        Designed to be run on a freshly provisioned Windows Server.

    .VERSION
        0.1.0

    .AUTHOR
        Sinthwo
#>
