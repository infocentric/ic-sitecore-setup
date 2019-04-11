. "$PSScriptRoot\00-variables.ps1"

$params = @{
	Path = "$SifScriptsRoot\sitecore-XP1-cd.json"
	Package = "$SifScriptsRoot\Sitecore 9.1.0 rev. 001564 (OnPrem)_cd.scwdp.zip"
	LicenseFile = "$SifScriptsRoot\license.xml"
    SqlDbPrefix = $Prefix
    SolrCorePrefix = $Prefix
    XConnectCert = $XconnectCertName
    SiteName = $CdDnsName
    SqlSecurityPassword = $SqlDBPassword
    SqlWebPassword = $SqlDBPassword
    SqlFormsPassword = $SqlDBPassword
    SqlExmMasterPassword = $SqlDBPassword
    SqlMessagingPassword = $SqlDBPassword
    SqlServer = $SqlServerIp
    SolrUrl = $SolrUrl
    XConnectCollectionService = $XconnectUrl
    XConnectReferenceDataService = $XconnectUrl
    MarketingAutomationOperationsService = $XconnectUrl
    MarketingAutomationReportingService = $XconnectUrl
    HostMappingName = $CdDnsName
    DnsName = $CdDnsName
    InstallDir = $WebsPath
}

Install-SitecoreConfiguration @params