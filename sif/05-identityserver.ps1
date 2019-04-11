. "$PSScriptRoot\00-variables.ps1"

$params = @{
	Path = "$SifScriptsRoot\IdentityServer.json"
	Package = "$SifScriptsRoot\Sitecore.IdentityServer 2.0.0 rev. 00157 (OnPrem)_identityserver.scwdp.zip"
	LicenseFile = "$SifScriptsRoot\license.xml"
    SqlDbPrefix = $Prefix
    SitecoreIdentityCert = $IdentitySSLCertName
    SiteName = $IdentityServerDnsName
    SqlCorePassword = $SqlDBPassword
    SqlServer = $SqlServerIp
    PasswordRecoveryUrl = $IdentityServerPasswordRecoveryUrl
    AllowedCorsOrigins = $IdentityServerAllowedCorsOrigins
    ClientSecret = $IdentityServerClientSecret
    InstallDir = $WebsPath
}

$params.Path

Install-SitecoreConfiguration @params