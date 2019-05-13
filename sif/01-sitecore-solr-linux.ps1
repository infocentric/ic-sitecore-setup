. "$PSScriptRoot\00-variables.ps1"

$params = @{
    Path = "$SifScriptsRoot\sitecore-solr-linux.json"
    SolrUrl = $SolrUrl
    SolrRoot = $SolrRoot
    SolrService = $SolrService
    CorePrefix = $Prefix
    SolrCoreConfigPath = $SolrCoreConfigPath
}

Install-SitecoreConfiguration @params