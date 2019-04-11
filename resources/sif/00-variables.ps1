# Customer specific variables
# Adjust for each project
$Prefix = "sulzer"
$SqlServerIp = "172.20.20.128"
$SqlAdminUser ="sitecore-admin"
$SqlAdminPassword = "Infocentric123"
$SqlDBPassword = "Infocentric123"
$CertPassword = "icr"
$CmDnsName = "int9-author-sulzer.infocentric.ch"
$PublishingServiceDnsName = "publishing-swica.infocentric.ch"
$SolrDnsName = "172.20.20.129"
$XconnectDnsName = "172.20.20.130"
$CertName = "infocentric.ch.pfx"
# workaraound $CertName for 2.Xconnect: 
# $CertName = $XconnectDnsName
$SitecoreAdminPassword = "Infocentric123"

# Standards
# Only change when you know what you are doing 
$SifScriptsRoot = "D:\resources\sif\lib"
$WebsPath="D:\webs\"

$SitecoreSiteName = "$Prefix.sc"
$XConnectCollectionService = "$Prefix.xconnect"
$PublishingServiceSiteName = "$Prefix.publishing"

$CertPath = "D:\resources\certificates"
$SolrRootCert = "$SolrDnsName.root"
$SolrCertName = $SolrDnsName
$XconnectSSLRootCert = "$XconnectDnsName.root"
$XconnectSSLCertName = $XconnectDnsName
$XconnectRootCert = "$Prefix.xconnect.root"
$XconnectCertName = "$Prefix.xconnect"

$SolrRoot = "D:\solr"
$SolrService = "Solr"
$SolrUrl = "https://" + $SolrDnsName + ":8984/solr"

$XconnectUrl = "https://$XconnectDnsName"