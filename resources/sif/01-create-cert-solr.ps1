. "$PSScriptRoot\00-variables.ps1"

$params = @{
    Path = "$SifScriptsRoot\createcert.json"
    CertificateName = $SolrCertName
    CertPath = $CertPath
    RootCertFileName = $SolrRootCert
    ExportPassword = $CertPassword
}

Install-SitecoreConfiguration @params -Verbose