$PSVersionTable
Get-Module -Name Microsoft.Online.SharePoint.Powershell -ListAvailable | select name, version
Install-Module -Name Microsoft.Online.SharePoint.PowerShell -Scope CurrentUser -Force
Import-Module -Name SPOService
Connect-SPOService -url nbsctcuk-admin.sharepoint.com

# Lists all modules installed on the system
Get-Module -ListAvailable |
    Select-Object Name, Version, Path |
    Sort-Object Name
get-module -ListAvailable | Where-object {$_.Name -like '*SPO*'}

Import-Module -Name Microsoft.Online.SharePoint.PowerShell


Connect-SPOService -Url https://nbsctcuk-admin.sharepoint.com

Get-SPOTenant -CoreOrganizationSharingLinkMaxExpirationInDays

Set-SPOSite -I -OverrideTenantOrganizationSharingLinkExpirationPolicy $true

Set-SPOTenant -CoreOrganizationSharingLinkMaxExpirationInDaysv\

Get-SPOTenant| Export-AzDataLakeStoreChildItemProperties

Get-SPOTenant | Select-Object CoreOrganizationSharingLinkMaxExpirationInDays, OneDriveOrganizationSharingLinkMaxExpirationInDays, CoreOrganizationSharingLinkRecommendedExpirationInDays, OneDriveOrganizationSharingLinkRecommendedExpirationInDays


Get-SPOTenant | ft Export-Csv C:\Temp\SharingLinksExport\CTC.csv


Set-SPOTenant -CoreOrganizationSharingLinkMaxExpirationInDays 720
Set-SPOTenant -OneDriveOrganizationSharingLinkMaxExpirationInDays 365

Set-SPOTenant -CoreOrganizationSharingLinkRecommendedExpirationInDays 365
Set-SPOTenant -OneDriveOrganizationSharingLinkRecommendedExpirationInDays 180
Get-SPOTenant | Select-Object CoreOrganizationSharingLinkMaxExpirationInDays, OneDriveOrganizationSharingLinkMaxExpirationInDays, CoreOrganizationSharingLinkRecommendedExpirationInDays, OneDriveOrganizationSh
Disconnect-SPOService