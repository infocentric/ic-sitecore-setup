# Customer specific variables
# Adjust for each project
$Prefix = "sulzer"
$SqlServerIp = "172.20.20.128"
$SqlAdminUser ="sitecore-admin"
$SqlAdminPassword = "Infocentric123"
$CertPassword = "icr"
$CmDnsName = "int9-author-sulzer.infocentric.ch"
$SolrDnsName = "int9-solr-sulzer.infocentric.ch"
$XconnectDnsName = "int9-xconnect-sulzer.infocentric.ch"
$CertName = "infocentric.ch.pfx"
$SitecoreAdminPassword = "Infocentric123"

# Standards
# Only change when you know what you are doing 
$SifScriptsRoot = "D:\resources\sif\lib"
$WebsPath="D:\webs\"

$SitecoreSiteName = "$Prefix.sc"
$XConnectCollectionService = "$Prefix.xconnect"

$CertPath = "D:\resources\certificates"
$SolrRootCert = "$SolrDnsName.root"
$SolrCertName = $SolrServerIp
$XconnectSSLRootCert = "$XconnectDnsName.root"
$XconnectSSLCertName = $XconnectDnsName
$XconnectRootCert = "$Prefix.xconnect.root"
$XconnectCertName = "$Prefix.xconnect"

$SolrRoot = "D:\solr"
$SolrService = "solr"
$SolrUrl = "https://" + $SolrDnsName + ":8984/solr"

$XconnectUrl = "https://$XconnectDnsName"