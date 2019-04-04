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
  Run D:\resources\sif\00-install-sif.ps1 (confirm with 'Yes' if it asks you something)
  Module will be installed to default location: C:\Program Files\WindowsPowerShell\Modules\SitecoreInstallFramework
* Adjust parameters in D:/resources/sif/00-variables.ps1

## Distributed
We will install the following distributed servers for sitecore.

### Solr 
* Follow the steps in "Setup the base"
* Install IIS (will be done by Sitecore prerequisite script)
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
* Run D:\resources\sif\01-xconnect-solr.ps1
* Run D:\resources\sif\01-sitecore-solr.ps1
* OR Run D:\resources\sif\01-sitecore-solr-rebuild.ps1
* Add a inbound rule for the port 8984 on the firewall

### Database
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
* Follow the steps in "Setup the base"
* Install IIS
* Copy the certificates created in step "Solr" to D:\resources\certificates
* Add the root certificate to the Trusted Root Certificate Authorities (How to: https://success.outsystems.com/Support/Enterprise_Customers/Installation/Install_a_trusted_root_CA__or_self-signed_certificate)
* Run D:\resources\sif\02-create-cert-ssl.ps1
* Run D:\resources\sif\02-create-cert-xconnect.ps1
* Run D:\resources\sif\02-xconnect.ps1
