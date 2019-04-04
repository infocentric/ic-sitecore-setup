. "$PSScriptRoot\00-variables.ps1"

keytool -importkeystore -srckeystore "$CertPath\$SolrCertName.pfx" -srcstoretype "pkcs12" -srcalias "$SolrCertName" -srcstorepass "$CertPassword" -destkeystore "$CertPath\$SolrCertName.jks" -deststoretype "jks" -deststorepass "$CertPassword" -destalias "$SolrCertName"