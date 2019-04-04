. "$PSScriptRoot\00-variables.ps1"

$params = @{
	Path = "$SifScriptsRoot\sitecore-XP0.json"
	Package = "$SifScriptsRoot\--"
	LicenseFile = "$SifScriptsRoot\license.xml"
    SqlDbPrefix = $Prefix
    SolrCorePrefix = $Prefix
    XConnectCert = $CertName
    SiteName = $CmDnsName
    SitecoreAdminPassword = $SitecoreAdminPassword
    SqlAdminUser = $SqlAdminUser
    SqlAdminPassword = $SqlAdminPassword
    SqlCoreUser = $SqlAdminUser
    SqlCorePassword = $SqlAdminPassword
    SqlSecurityUser = $SqlAdminUser
    SqlSecurityPassword = $SqlAdminPassword
    SqlMasterUser = $SqlAdminUser
    SqlMasterPassword = $SqlAdminPassword
    SqlWebUser = $SqlAdminUser
    SqlWebPassword = $SqlAdminPassword
    SqlReportingUser = $SqlAdminUser
    SqlReportingPassword = $SqlAdminPassword
    SqlProcessingPoolsUser = $SqlAdminUser
    SqlProcessingPoolsPassword = $SqlAdminPassword
    SqlProcessingTasksUser = $SqlAdminUser
    SqlProcessingTasksPassword = $SqlAdminPassword
    SqlReferenceDataUser = $SqlAdminUser
    SqlReferenceDataPassword = $SqlAdminPassword
    SqlMarketingAutomationUser = $SqlAdminUser
    SqlMarketingAutomationPassword = $SqlAdminPassword
    SqlFormsUser = $SqlAdminUser
    SqlFormsPassword = $SqlAdminPassword
    SqlExmMasterUser = $SqlAdminUser
    SqlExmMasterPassword = $SqlAdminPassword
    SqlMessagingUser = $SqlAdminUser
    SqlMessagingPassword = $SqlAdminPassword
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