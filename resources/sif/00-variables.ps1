# Customer specific variables
# Adjust for each project
$Prefix = "swica"
$SqlServerIp = "172.20.115.14"
$SqlServerIp = "localhost"

$SqlAdminUser ="sa"
$SqlAdminPassword = "*n#Vk7Kg"
$SqlDBPassword = "X#P3CtpN"
$CertPassword = "icr"
$CmDnsName = "int9-author-sulzer.infocentric.ch"
$SolrDnsName = "dev-solr-swica-master.infocentric.ch"
$XconnectDnsName = "dev-xconnect-swica.infocentric.ch"
$IdentityServerDnsName = "dev-identity-swica.infocentric.ch"
$IdentityServerClientSecret = "g6h9XvEuODyQ4B0p04KpmRW6rYnh9B5EBQydWZ1ETOh4p7z7aHmHFVTNU7nlc3EJgvAJAQMjLmJupzue3RhqSOgpme7NZSUCk9p2"

$PublishingServiceDnsName = "publishing-swica.infocentric.ch"
$CertName = "infocentric.ch.pfx"
# workaraound $CertName for 2.Xconnect: 
# $CertName = $XconnectDnsName
$SitecoreAdminPassword = "Infocentric123"

# Standards
# Only change when you know what you are doing 
$SifScriptsRoot = "D:\resources\sif\lib"
$SifScriptsRoot = "c:\Sources\IC\ic-sitecore-setup\resources\sif\lib"
$WebsPath="D:\webs\"
$WebsPath="C:\web\swica\"

$SitecoreSiteName = "$Prefix.sc"
$XConnectCollectionService = "$Prefix.xconnect"
$PublishingServiceSiteName = "$Prefix.publishing"
$IdentityServerSiteName = "$Prefix.identity"
$IdentityServerPasswordRecoveryUrl = "https://$CmDnsName"
$IdentityServerAllowedCorsOrigins = "https://$CmDnsName"

$CertPath = "D:\resources\certificates"
$CertPath = "c:\Sources\IC\ic-sitecore-setup\resources\certificates"
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