<#
    .SYNOPSIS
        Deploys a new Active Directory forest using a configuration template.

    .DESCRIPTION
        Wrapper function that promotes a server to a new AD forest root domain.
        Reads forest configuration from the Config/Templates directory, validates
        prerequisites, installs AD DS roles, and performs the forest promotion.

    .VERSION
        0.1.0

    .AUTHOR
        Sinthwo
#>
