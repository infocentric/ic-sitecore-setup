# Sitecore Installation
This repository provides all the scripts needed to setup sitecore on a DEV, INT or PROD environment.
It offers two options.
* Install everything on one server
* Install the sitecore roles to distributed servers.

## Notes
* All the path recommendations in this guide are recommendatios and can be changed if needed.

## Setup the base
* Clone this git repository to your machine to D:/resources
* Copy the licence into the folder D:\resources\sif\lib
* TODO: Download sif stuff:
* Install SIF Module
** Run D:\resources\sif\00-install-sif.ps1 (confirm with 'Yes' if it asks you something)
** Module will be installed to default location: C:\Program Files\WindowsPowerShell\Modules\SitecoreInstallFramework
* Download WebDeploy Packages from dev.sitecore.net and copy them to D:\resources\libs (if you use other versions, please adapt in all json-files as well)
** XConnect: "Sitecore 9.1.0 rev. 001564 (OnPrem)_xp0xconnect.scwdp.zip"
** Sitecore CM: "Sitecore 9.1.0 rev. 001564 (OnPrem)_single.scwdp.zip"
** Sitecore CD: "Sitecore 9.1.0 rev. 001564 (OnPrem)_cd.scwdp.zip"
** IdentityServer: "Sitecore.IdentityServer 2.0.0 rev. 00157 (OnPrem)_identityserver.scwdp.zip"
** PublishingService: "Sitecore Publishing Service 312 rev 190116x64.zip"
** Single Server: See XConnect, Sitecore CM and IdentityServer above
* Install prerequisites:
** Run D:\resources\sif\00-prerequisites.ps1 (not needed for solr and database servers)
* Adjust parameters in D:/resources/sif/00-variables.ps1

## Single Server (eg. Dev environment)
* Follow the steps in "Setup the base"
* Follow the steps in the "Prerequisites" of "Solr Server" and "Database"
* Adjust parameters in D:\resources\sif\XP0-SingleDeveloper.ps1
* Run D:\resources\sif\XP0-SingleDeveloper.ps1

## Distributed
### Solr Server
#### Prerequisites
* Follow the steps in "Setup the base"
* Install Solr 7.2.1 (https://archive.apache.org/dist/lucene/solr/7.2.1/) at D:/solr
* Install NSSM (https://nssm.cc/download) at C:\Program Files\nssm-2.24
* Install JDK (https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
* Add C:\Program Files\nssm-2.24\win32 to the system PATH variable
* Run D:\resources\sif\01-create-cert-solr.ps1
* Copy the generated certificate for the solr server (ip adress) from D:\resources\certificates to D:\solr\server\etc
* Add the root certificate to the Trusted Root Certificate Authorities (How to: https://success.outsystems.com/Support/Enterprise_Customers/Installation/Install_a_trusted_root_CA__or_self-signed_certificate)
* Adjust D:\solr\bin\solr.in.cmd and adjust the following lines (Type PKCS12 for .pfx):
** REM set SOLR_SSL_KEY_STORE=etc/solr-ssl.keystore.jks
** REM set SOLR_SSL_KEY_STORE_PASSWORD=secret
** REM set SOLR_SSL_KEY_STORE_TYPE=JKS
** REM set SOLR_SSL_TRUST_STORE=etc/solr-ssl.keystore.jks
** REM set SOLR_SSL_TRUST_STORE_PASSWORD=secret
** REM set SOLR_SSL_TRUST_STORE_TYPE=JKS
* Run "nssm install Solr" in a command window. Then enter the following parameters in the window:
** Path: D:\solr\bin\solr.cmd
** Startup directory: D:\solr\bin
** Arguments: start -f -p 8984
* Check that the service exists and start it if needed. Also set it to start "Automatic"
* Check if solr is available at https://localhost:8984/solr/#/
#### Installation
* Run D:\resources\sif\01-xconnect-solr.ps1
* Run D:\resources\sif\01-sitecore-solr.ps1
* OR Run D:\resources\sif\01-sitecore-solr-rebuild.ps1
* Add a inbound rule for the port 8984 on the firewall

### Database
#### Prerequisites
* Install SQL Standard or Developer Editon for DEV Environments (make sure you setup an sa user)
  https://www.microsoft.com/de-ch/sql-server/sql-server-downloads
* Install SSMS
* Enable mixed authentication
* Run the following SQL script:
sp_configure 'contained database authentication', 1; RECONFIGURE
* Create a new admin user for the database (this one you will use later for the scripts)
* Enable network TCP for the sql server (https://www.habaneroconsulting.com/stories/insights/2015/tcpip-is-disabled-by-default-in-microsoft-sql-server-2014)
* Add a inbound rule the port 1433 on the firewall

### XConnect
* needs connection to Solr (Master) Server and SQL
* Follow the steps in "Setup the base"
* Copy the certificates created in step "Solr" to D:\resources\certificates
* Add the root certificate to the Trusted Root Certificate Authorities (How to: https://success.outsystems.com/Support/Enterprise_Customers/Installation/Install_a_trusted_root_CA__or_self-signed_certificate)
* Run D:\resources\sif\02-create-cert-ssl.ps1
* Run D:\resources\sif\02-create-cert-xconnect.ps1
* Run D:\resources\sif\02-xconnect.ps1
* Then replace with wildcard or propper certificate in IIS binding
* Check that the site is up
* Check that all services are up (Troubleshoot: https://sitecore.stackexchange.com/questions/8561/xconnect-the-http-response-was-not-successful-unauthorized)

### Sitecore CM
* Needs connection to Solr (Master) Server and Xconnect and SQL
* Follow the steps in "Setup the base"
* Copy the certificates created in step "Solr" and "Xconnect" to D:\resources\certificates
* Add the root certificates to the Trusted Root Certificate Authorities (How to: https://success.outsystems.com/Support/Enterprise_Customers/Installation/Install_a_trusted_root_CA__or_self-signed_certificate)
* Run D:\resources\sif\03-sitecore-cm.ps1
* Setup proper certifcate and https binding for the site

### Sitecore CD
* Needs connection to Solr (Slave) Server and Xconnect and SQL
* Follow the steps in "Setup the base"
* Copy the certificates created in step "Solr" and "Xconnect" to D:\resources\certificates
* Add the root certificates to the Trusted Root Certificate Authorities (How to: https://success.outsystems.com/Support/Enterprise_Customers/Installation/Install_a_trusted_root_CA__or_self-signed_certificate)
* Run D:\resources\sif\04-sitecore-cd.ps1
* Setup proper certifcate and https binding for the site

### IdentityServer (optional)
* needs connection to core databases (if you changed the connectionsstrings for this db's it needs most probably some adaptions in the scripts for identityserver as well)
* Follow the steps in "Setup the base"
* Run D:\resources\sif\05-create-cert-identity.ps1
* Run D:\resources\sif\05-identityserver.ps1
* Verify
** Open "$IdentityServerDnsName" (from "00-variables.ps1) in your browser
** Sitecore Login Page should appear
** Log in with Sitecore default Credentials
** Sitecore Login Page should appear
** Check "<IdentityServerWebRootDir>\logs" for errors and fix them (AntiforgeryToken errors are expected)
* Set Log Level
** Open "<IdentityServerWebRootDir>\sitecorehost.xml"
** Set "Sitecore\Logging\SeriLog\MinimumLevel\Default" to "Warning" (Possible: Verbose, Debug, Information, Warning, Error, Fatal)
** Restart IIS Application Pool and recall Site in your browser

### Publishing Service (optional)
* needs connection to master, web, and core databases (if you changed the connectionsstrings for this db's it needs most probably some adaptions in the scripts for publishingservice as well)
* Follow the steps in "Setup the base"
* Extract the contents of the 'Sitecore Publishing Service 312 rev 190116x64.zip' to the web-directory of the later publishingservice
** normally this is "$WebsPath\\"$PublishingServiceSiteName"
* Run D:\resources\publishingserver\01-publishingserver.ps1
* Verify
** Open "$PublishingServiceDnsName/api/publishing/operations/status" in your Browser
** Should state "{""status"":0}"
** Check "<PubishingServerWebRootDir>\logs" for errors and fix them