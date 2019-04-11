# Customer specific variables
# Adjust for each project
$Prefix = "ADD_PREFIX"

$SqlServerIp = "ADD_IP_ADDRESS_HERE"
$SqlAdminUser ="ADD_SQL_ADMIN_USER_HERE"
$SqlAdminPassword = "ADD_SQL_ADMIN_PASSWORD"
$SqlDBPassword = "ADD_DB_PASSWORD_FOR_OTHER_DBS"

$SolrDnsName = "ADD_SOLR_DNS_OR_IP_ADDRESS"
$XconnectDnsName = "ADD_XCONNECT_DNS_OR_IP_ADDRESS"
$CmDnsName = "ADD_CM_DNS_NAME"
$CdDnsName = "ADD_CD_DNS_NAME"
$IdentityServerDnsName = "ADD_IDENTITY_DNS_NAME"
$IdentityServerClientSecret = "ADD_IDENTITY_SECRET"
$PublishingServiceDnsName = "ADD_PUBLISHING_SERVICE_DNS_OR_IP_ADDRESS"

$CertPassword = "ADD_PASSWORD_FOR_GENERATED_CERTIFICATES"
$SitecoreAdminPassword = "ADD_PASSWORD_FOR_GENERATED_SITECORE_ADMIN_USER"

# Standards
# Only change when you know what you are doing 
$SifScriptsRoot = "D:\resources\sif\lib"
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