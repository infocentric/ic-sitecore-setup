. "$PSScriptRoot\00-variables.ps1"

$params = @{
    Path = "$SifScriptsRoot\createcert.json"
    CertificateName = $XconnectSSLCertName
    CertPath = $CertPath
    RootCertFileName = $XconnectSSLRootCert
    ExportPassword = $CertPassword
}

Install-SitecoreConfiguration @params