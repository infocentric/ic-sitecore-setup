. "$PSScriptRoot\00-variables.ps1"

$params = @{
	Path = "$SifScriptsRoot\Prerequisites.json"
}

Install-SitecoreConfiguration @params