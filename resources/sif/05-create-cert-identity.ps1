. "$PSScriptRoot\00-variables.ps1"

$params = @{
    Path = "$SifScriptsRoot\createcert.json"
    CertificateName = $IdentitySSLCertName
    CertPath = $CertPath
    RootCertFileName = $IdentitySSLRootCert
    ExportPassword = $CertPassword
}

Install-SitecoreConfiguration @params