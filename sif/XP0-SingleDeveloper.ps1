# The Prefix that will be used on SOLR, Website and Database instances.
$Prefix = "ADD_PREFIX_HERE"
# The Password for the Sitecore Admin User. This will be regenerated if left on the default.
$SitecoreAdminPassword = "ADD_PASSWORD_FOR_GENERATED_SITECORE_ADMIN_USER"
# The root folder with the license file and WDP files.
$SCInstallRoot = "D:\resources\sif\lib"
# The name for the XConnect service.
$XConnectSiteName = "$prefix.xconnect"
# The Sitecore site instance name.
$SitecoreSiteName = "$prefix.sc"
# Identity Server site name
$IdentityServerSiteName = "$prefix.identityserver"
# The Path to the license file
$LicenseFile = "$SCInstallRoot\license.xml"
# The URL of the Solr Server
$SolrUrl = "https://localhost:8984/solr"
# The Folder that Solr has been installed to.
$SolrRoot = "D:\solr"
# The Name of the Solr Service.
$SolrService = "solr"
# The DNS name or IP of the SQL Instance.
$SqlServer = "127.0.0.1"
# A SQL user with sysadmin privileges.
$SqlAdminUser = "ADD_SQL_ADMIN_USER_HERE"
# The password for $SQLAdminUser.
$SqlAdminPassword = "ADD_SQL_ADMIN_PASSWORD"
# The path to the XConnect Package to Deploy.
$XConnectPackage = (Get-ChildItem "$SCInstallRoot\Sitecore 9.1.0 rev. * (OnPrem)_xp0xconnect.scwdp.zip").FullName
# The path to the Sitecore Package to Deploy.
$SitecorePackage = (Get-ChildItem "$SCInstallRoot\Sitecore 9.1.0 rev. * (OnPrem)_single.scwdp.zip").FullName
# The path to the Identity Server Package to Deploy.
$IdentityServerPackage = (Get-ChildItem "$SCInstallRoot\Sitecore.IdentityServer 2.0.0 rev. * (OnPrem)_identityserver.scwdp.zip").FullName
# The Identity Server password recovery URL, this should be the URL of the CM Instance
$PasswordRecoveryUrl = "http://$SitecoreSiteName"
# The URL of the Identity Server
$SitecoreIdentityAuthority = "https://$IdentityServerSiteName"
# The URL of the XconnectService
$XConnectCollectionService = "https://$XConnectSiteName"
# The random string key used for establishing connection with IdentityService. This will be regenerated if left on the default.
$ClientSecret = "ADD_IDENTITY_SECRET"
# Pipe-separated list of instances (URIs) that are allowed to login via Sitecore Identity.
$AllowedCorsOrigins = "http://$SitecoreSiteName"


# Install XP0 via combined partials file.
$singleDeveloperParams = @{
    Path = "$SCInstallRoot\XP0-SingleDeveloper.json"
    SqlServer = $SqlServer
    SqlAdminUser = $SqlAdminUser
    SqlAdminPassword = $SqlAdminPassword
    SitecoreAdminPassword = $SitecoreAdminPassword
    SolrUrl = $SolrUrl
    SolrRoot = $SolrRoot
    SolrService = $SolrService
    Prefix = $Prefix
    XConnectCertificateName = $XConnectSiteName
    IdentityServerCertificateName = $IdentityServerSiteName
    IdentityServerSiteName = $IdentityServerSiteName
    LicenseFile = $LicenseFile
    XConnectPackage = $XConnectPackage
    SitecorePackage = $SitecorePackage
    IdentityServerPackage = $IdentityServerPackage
    XConnectSiteName = $XConnectSiteName
    SitecoreSitename = $SitecoreSiteName
    PasswordRecoveryUrl = $PasswordRecoveryUrl
    SitecoreIdentityAuthority = $SitecoreIdentityAuthority
    XConnectCollectionService = $XConnectCollectionService
    ClientSecret = $ClientSecret
    AllowedCorsOrigins = $AllowedCorsOrigins
    InstallDir = "D:\webs\"
}

Push-Location $SCInstallRoot

Install-SitecoreConfiguration @singleDeveloperParams *>&1 | Tee-Object XP0-SingleDeveloper.log

# Uncomment the below line and comment out the above if you want to remove the XP0 SingleDeveloper Config
#Uninstall-SitecoreConfiguration @singleDeveloperParams *>&1 | Tee-Object XP0-SingleDeveloper-Uninstall.log

Pop-Location
