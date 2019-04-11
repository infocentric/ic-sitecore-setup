. "$PSScriptRoot\00-variables.ps1"

$params = @{
	Path = "$SifScriptsRoot\sitecore-XP0.json"
	Package = "$SifScriptsRoot\Sitecore 9.1.0 rev. 001564 (OnPrem)_single.scwdp.zip"
	LicenseFile = "$SifScriptsRoot\license.xml"
    SqlDbPrefix = $Prefix
    SolrCorePrefix = $Prefix
    XConnectCert = $XconnectCertName
    SiteName = $CmDnsName
    SitecoreAdminPassword = $SitecoreAdminPassword
    SqlAdminUser = $SqlAdminUser
    SqlAdminPassword = $SqlAdminPassword
    SqlCorePassword = $SqlDBPassword
    SqlSecurityPassword = $SqlDBPassword
    SqlMasterPassword = $SqlDBPassword
    SqlWebPassword = $SqlDBPassword
    SqlReportingPassword = $SqlDBPassword
    SqlProcessingPoolsPassword = $SqlDBPassword
    SqlProcessingTasksPassword = $SqlDBPassword
    SqlReferenceDataPassword = $SqlDBPassword
    SqlMarketingAutomationPassword = $SqlDBPassword
    SqlFormsPassword = $SqlDBPassword
    SqlExmMasterPassword = $SqlDBPassword
    SqlMessagingPassword = $SqlDBPassword
    SqlServer = $SqlServerIp
    SolrUrl = $SolrUrl
    XConnectCollectionService = $XconnectUrl
    XConnectReferenceDataService = $XconnectUrl
    MarketingAutomationOperationsService = $XconnectUrl
    MarketingAutomationReportingService = $XconnectUrl
    CortexReportingService = $XconnectUrl
    HostMappingName = $CmDnsName
    DnsName = $CmDnsName
    InstallDir = $WebsPath
}

Install-SitecoreConfiguration @params