. "$PSScriptRoot\00-variables.ps1"

$params = @{
    Path = "$SifScriptsRoot\createcert.json"
    CertificateName = $XconnectCertName
    CertPath = $CertPath
    RootCertFileName = $XconnectRootCert
    ExportPassword = $CertPassword
}

Install-SitecoreConfiguration @params