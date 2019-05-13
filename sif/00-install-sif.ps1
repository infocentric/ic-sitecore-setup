Register-PSRepository -Name SitecoreGallery -SourceLocation https://sitecore.myget.org/F/sc-powershell/api/v2
Install-Module -Name SitecoreInstallFramework -Repository SitecoreGallery -RequiredVersion 2.0.0
Update-Module SitecoreInstallFramework