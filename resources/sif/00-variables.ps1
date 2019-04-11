# Customer specific variables
# Adjust for each project
$Prefix = "swica"
$SqlServerIp = "172.20.115.14"
$SqlAdminUser ="sa"
$SqlAdminPassword = "*n#Vk7Kg"
$SqlDBPassword = "X#P3CtpN"
$CertPassword = "icr"
$CmDnsName = "int9-author-sulzer.infocentric.ch"
$SolrDnsName = "dev-solr-swica-master.infocentric.ch"
$XconnectDnsName = "dev-xconnect-swica.infocentric.ch"
$PublishingServiceDnsName = "publishing-swica.infocentric.ch"
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