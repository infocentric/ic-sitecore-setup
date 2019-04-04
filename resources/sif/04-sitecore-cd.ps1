. "$PSScriptRoot\00-variables.ps1"

$params = @{
	Path = "$SifScriptsRoot\xconnect-xp0.json"
	Package = "$SifScriptsRoot\Sitecore 9.1.0 rev. 001564 (OnPrem)_xp0xconnect.scwdp.zip"
	LicenseFile = "$SifScriptsRoot\license.xml"
    SiteName = $XconnectDnsName
    SSLCert = $CertName
    XConnectCert = $CertName
    SolrCorePrefix = $Prefix
    SolrUrl = $SolrUrl
    SqlDbPrefix = $Prefix
    SqlAdminUser = $SqlAdminUser
    SqlAdminPassword = $SqlAdminPassword
    SqlCollectionUser = $SqlAdminUser
    SqlCollectionPassword = $SqlAdminPassword
    SqlProcessingPoolsUser = $SqlAdminUser
    SqlProcessingPoolsPassword = $SqlAdminPassword
    SqlMarketingAutomationUser = $SqlAdminUser
    SqlMarketingAutomationPassword = $SqlAdminPassword
    SqlReferenceDataUser = $SqlAdminUser
    SqlReferenceDataPassword = $SqlAdminPassword
    SqlMessagingUser = $SqlAdminUser
    SqlMessagingPassword = $SqlAdminPassword
    SqlProcessingEngineUser = $SqlAdminUser
    SqlProcessingEnginePassword = $SqlAdminPassword
    SqlReportingUser = $SqlAdminUser
    SqlReportingPassword = $SqlAdminPassword
    SqlServer = $SqlServerIp
    HostMappingName = $XconnectDnsName
    DnsName = $XconnectDnsName
    InstallDir = $WebsPath
}
Install-SitecoreConfiguration @params