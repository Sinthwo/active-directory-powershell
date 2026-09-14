<#
    .SYNOPSIS
        Cleans up stale, disabled, and orphaned AD accounts.

    .DESCRIPTION
        Script that identifies and processes stale accounts based on last logon
        timestamp, disabled account age, orphaned computer accounts, and empty group
        cleanup. Supports dry-run mode, reporting, and configurable age thresholds.

    .VERSION
        0.1.0

    .AUTHOR
        Sinthwo
#>
