<#
    .SYNOPSIS
        Permanently removes AD user accounts.

    .DESCRIPTION
        Script for deleting AD user accounts after optional verification steps.
        Supports pre-deletion audit (checking dependencies, group memberships,
        resource ownership), soft-delete via disabled state, and hard-delete with
        confirmation.

    .VERSION
        0.1.0

    .AUTHOR
        Sinthwo
#>
