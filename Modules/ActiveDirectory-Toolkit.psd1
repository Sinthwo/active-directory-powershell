<#
    .SYNOPSIS
        Module manifest for the Active Directory Toolkit

    .DESCRIPTION
        Defines the metadata, version, required modules, and exported members for
        the ActiveDirectory-Toolkit PowerShell module.

    .VERSION
        0.1.0

    .AUTHOR
        Sinthwo
#>

@{

    RootModule           = 'ActiveDirectory-Toolkit.psm1'

    ModuleVersion        = '0.1.0'

    GUID                 = 'a4b5c6d7-e8f9-4a1b-9c2d-3e4f5a6b7c8d'

    Author               = 'Sinthwo'

    Copyright            = '(c) Sinthwo. All rights reserved.'

    Description          = 'Toolkit for automating the deployment, configuration, and management of Windows Active Directory domains.'

    PowerShellVersion    = '5.1'

    CompatiblePSEditions = @('Desktop')

    RequiredModules      = @(
        @{ ModuleName = 'ActiveDirectory'; ModuleVersion = '1.0.0.0' },
        @{ ModuleName = 'DNSServer';       ModuleVersion = '1.0.0.0' }
    )

    FunctionsToExport    = @(
        'New-ADForestDeployment',
        'Add-ADDomainController',
        'Set-ADDNSConfiguration',
        'Set-ADDHCPConfiguration',
        'New-ADGPODeployment',
        'New-ADSiteConfiguration',
        'New-ADUserAccount',
        'Set-ADUserAccount',
        'Remove-ADUserAccount',
        'New-ADGroupManagement',
        'Set-ADGroupMembership',
        'New-ADComputerAccount',
        'Set-ADPermission',
        'Get-ADGPOReport',
        'Get-ADMonitoringStatus',
        'Invoke-ADBackup',
        'New-ADReport'
    )

    CmdletsToExport      = @()

    VariablesToExport    = @()

    AliasesToExport      = @()

    FormatsToProcess     = @('Formats\ActiveDirectory-Toolkit.Format.ps1xml')

    PrivateData          = @{
        PSData = @{
            Tags         = @('ActiveDirectory', 'AD', 'Deployment', 'Management', 'Automation')
            ProjectUri   = 'https://github.com/Sinthwo/active-directory-powershell'
            ReleaseNotes = 'Initial release of the Active Directory Toolkit.'
        }
    }
}