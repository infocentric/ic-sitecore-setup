. "$PSScriptRoot\00-variables.ps1"

$params = @{
    Path = "$SifScriptsRoot\sitecore-solr-rebuild.json"
    SolrUrl = $SolrUrl
    SolrRoot = $SolrRoot
    SolrService = $SolrService
    CorePrefix = $Prefix
}

Install-SitecoreConfiguration @params