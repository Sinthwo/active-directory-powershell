<#
    .SYNOPSIS
        Integration tests for AD deployment scripts.

    .DESCRIPTION
        Pester test suite that validates deployment scripts against a test lab
        environment. Verifies forest creation, DC promotion, DNS configuration, GPO
        deployment, and site setup produce expected outcomes in a sandboxed environment.

    .VERSION
        0.1.0

    .AUTHOR
        Sinthwo
#>
