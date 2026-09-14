<#
    .SYNOPSIS
        Bulk imports users from CSV into Active Directory.

    .DESCRIPTION
        One-time script for mass user provisioning from a CSV file. Maps CSV columns
        to AD attributes, handles password generation, OU placement, group assignment,
        validation, and generates a detailed import report with error handling for
        duplicates and conflicts.

    .VERSION
        0.1.0

    .AUTHOR
        Sinthwo
#>
