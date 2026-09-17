<#
    .SYNOPSIS
        Deploys and links Group Policy Objects during initial AD setup.

    .DESCRIPTION
        Standalone script that imports GPO backups from templates, links them to
        appropriate OUs and containers, sets enforcement and order, and verifies
        policy application. Includes security baselines and default
        workstation/server differentiation.

    .VERSION
        0.1.0

    .AUTHOR
        Sinthwo
#>
