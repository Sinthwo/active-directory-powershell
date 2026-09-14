<#
    .SYNOPSIS
        Removes or disables Active Directory user accounts.

    .DESCRIPTION
        Safely removes AD user accounts with optional soft-delete (disable + move
        to a quarantine OU). Supports filtering by OU, group membership, or custom
        LDAP query. Includes confirmation prompts and audit logging.

    .VERSION
        0.1.0

    .AUTHOR
        Sinthwo
#>
