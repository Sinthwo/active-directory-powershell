<#
    .SYNOPSIS
        Disables AD user accounts with optional quarantine workflow.

    .DESCRIPTION
        Script that disables user accounts, moves them to a quarantine OU, removes
        group memberships, sets a description with disable date, and optionally
        notifies managers. Supports filtering by criteria and scheduled disabling.

    .VERSION
        0.1.0

    .AUTHOR
        Sinthwo
#>
