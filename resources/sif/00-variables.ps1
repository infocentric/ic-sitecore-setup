# Customer specific variables
# Adjust for each project
$Prefix = "sulzer"

$SqlServerIp = "172.20.20.128"
$SqlAdminUser ="sitecore-admin"
$SqlAdminPassword = "Infocentric123"
$SqlDBPassword = "Infocentric123"

$SolrDnsName = "172.20.20.129"
$XconnectDnsName = "172.20.20.130"
$CmDnsName = "int9-author-sulzer.infocentric.ch"
$IdentityServerDnsName = "dev-identity-swica.infocentric.ch"
$IdentityServerClientSecret = "g6h9XvEuODyQ4B0p04KpmRW6rYnh9B5EBQydWZ1ETOh4p7z7aHmHFVTNU7nlc3EJgvAJAQMjLmJupzue3RhqSOgpme7NZSUCk9p2"
$PublishingServiceDnsName = "publishing-swica.infocentric.ch"

$CertName = "infocentric.ch.pfx"
$CertPassword = "icr"
# workaraound $CertName for 2.Xconnect: 
# $CertName = $XconnectDnsName

$SitecoreAdminPassword = "Infocentric123"

# Standards
# Only change when you know what you are doing 
$SifScriptsRoot = "D:\resources\sif\lib"
$SifScriptsRoot = "c:\Sources\IC\ic-sitecore-setup\resources\sif\lib"
$WebsPath="D:\webs\"
$SitecoreSiteName = "$Prefix.sc"
$XConnectCollectionService = "$Prefix.xconnect"
$PublishingServiceSiteName = "$Prefix.publishing"
$IdentityServerSiteName = "$Prefix.identity"
$IdentityServerPasswordRecoveryUrl = "https://$CmDnsName"
$IdentityServerAllowedCorsOrigins = "https://$CmDnsName"

$CertPath = "D:\resources\certificates"
$SolrRootCert = "$SolrDnsName.root"
$SolrCertName = $SolrDnsName
$XconnectSSLRootCert = "$XconnectDnsName.root"
$XconnectSSLCertName = $XconnectDnsName
$XconnectRootCert = "$Prefix.xconnect.root"
$XconnectCertName = "$Prefix.xconnect"
$IdentitySSLRootCert = "$IdentityServerDnsName.root"
$IdentitySSLCertName = $IdentityServerDnsName


$SolrRoot = "D:\solr"
$SolrService = "Solr"
$SolrUrl = "https://" + $SolrDnsName + ":8984/solr"

$XconnectUrl = "https://$XconnectDnsName"