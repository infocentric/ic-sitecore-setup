. "$PSScriptRoot\..\sif\00-variables.ps1"

# Standards
# Only change when you know what you are doing 
$SqlServer = $SqlServerIp

$SqlDatabaseCore = "$($Prefix)_core"
$SqlDatabaseCoreUser = "coreuser"
$SqlDatabaseCorePwd = $SqlDBPassword
$SqlDatabaseMaster = "$($Prefix)_master"
$SqlDatabaseMasterUser = "masteruser"
$SqlDatabaseMasterPwd = $SqlDBPassword
$SqlDatabaseWeb = "$($Prefix)_web"
$SqlDatabaseWebUser = "webuser"
$SqlDatabaseWebPwd = $SqlDBPassword
$InstallLocation = Join-Path "$WebsPath" "$PublishingServiceSiteName"
$PublishingHostExecutable = Join-Path "$InstallLocation" "Sitecore.Framework.Publishing.Host"

# Installation 

# Set Connectionstrings
Write-Host "--- Set Connectionsstrings ---" -ForegroundColor green
$dbConnectionsString = "Data Source=$SqlServer;Initial Catalog=$SqlDatabaseCore;User ID=$SqlDatabaseCoreUser;Password=$SqlDatabaseCorePwd"
$command = "$PublishingHostExecutable configuration setconnectionstring core '$dbConnectionsString'"
Invoke-Expression $command

$dbConnectionsString = "Data Source=$SqlServer;Initial Catalog=$SqlDatabaseMaster;User ID=$SqlDatabaseMasterUser;Password=$SqlDatabaseMasterPwd"
$command = "$PublishingHostExecutable configuration setconnectionstring master '$dbConnectionsString'"
Invoke-Expression $command

$dbConnectionsString = "Data Source=$SqlServer;Initial Catalog=$SqlDatabaseWeb;User ID=$SqlDatabaseWebUser;Password=$SqlDatabaseWebPwd"
$command = "$PublishingHostExecutable configuration setconnectionstring web '$dbConnectionsString'"
Invoke-Expression $command

# Upgrade schema
Write-Host "--- Upgrade schema ---" -ForegroundColor green
$command = "$PublishingHostExecutable schema upgrade --force"
Invoke-Expression $command

# Install IIS
Write-Host "--- Install into IIS Host ---" -ForegroundColor green
$command = "$PublishingHostExecutable iis install --sitename '$PublishingServiceDnsName' --hosts --force"
Invoke-Expression $command

Write-Host ""
Write-Host "--- Verify (manual actions) ---" -ForegroundColor yellow
Write-Host "Please verify your installation:" 
Write-Host "`t- http://$PublishingServiceDnsName/api/publishing/operations/status --> this must indicate '{""status"":0}'"
Write-Host "`t- Check errors in '$InstallLocation\logs'"
Write-Host ""
Write-Host "Remember: The project must invest additional work to integrate the Publishing Sitecore Module and reference to this service"
Write-Host "`t- Only after this has been done, the final checks if this service can be used from within Sitecore can be done."




