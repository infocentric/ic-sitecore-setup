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
    SqlCollectionPassword = $SqlDBPassword
    SqlProcessingPoolsPassword = $SqlDBPassword
    SqlMarketingAutomationPassword = $SqlDBPassword
    SqlReferenceDataPassword = $SqlDBPassword
    SqlMessagingPassword = $SqlDBPassword
    SqlProcessingEnginePassword = $SqlDBPassword
    SqlReportingPassword = $SqlDBPassword
    SqlServer = $SqlServerIp
    HostMappingName = $XconnectDnsName
    DnsName = $XconnectDnsName
    InstallDir = $WebsPath
}
Install-SitecoreConfiguration @params