---
title: "MSReportServer_ConfigurationSetting Methods | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
apiname: 
  - "MSReportServer_ConfigurationSetting Methods"
apilocation: 
  - "reportingservices.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "WMI provider [Reporting Services], MSReportServer_ConfigurationSetting class"
  - "MSReportServer_ConfigurationSetting class"
ms.assetid: a08c2476-5b8e-4792-94da-1360fe231c6e
caps.latest.revision: 45
ms.author: "asaxton"
manager: "erikre"
---
# MSReportServer_ConfigurationSetting Methods
  The MSReportServer_ConfigurationSetting class of the Report Server WMI Provider provides the following public methods.  
  
## Public Methods  
  
|||  
|-|-|  
|[BackupEncryptionKey](../Topic/BackupEncryptionKey%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Backs up the encryption key for the instance. The encryption key is stored encrypted with a password.|  
|[CreateSSLCertificateBinding Method &#40;WMI MSReportServer_ConfigurationSetting&#41;](../Topic/CreateSSLCertificateBinding%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Creates an SSL Certificate binding.|  
|[DeleteEncryptedInformation](../Topic/DeleteEncryptedInformation%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Deletes the encrypted information from the report server database.|  
|[DeleteEncryptionKey](../Topic/DeleteEncryptionKey%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Deletes the encryption keys from the report server database.|  
|[GenerateDatabaseCreationScript](../Topic/GenerateDatabaseCreationScript%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Generates an SQL script that can be used to create the report server database.|  
|[GenerateDatabaseRightsScript](../Topic/GenerateDatabaseRightsScript%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Generates an SQL script that can be used to grant a user permissions to the report server database.|  
|[GenerateDatabaseUpgradeScript](../Topic/GenerateDatabaseUpgradeScript%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Generates an SQL script that can be used to upgrade a report server database.|  
|[GetAdminSiteUrl Method &#40;WMI&#41;](../Topic/GetAdminSiteUrl%20Method%20\(WMI\).md)|Gets the absolute URL to the Central Administration Web site.|  
|[GetDatabaseVersionDisplayName](../Topic/GetDatabaseVersionDisplayName%20Method%20\(WMI\).md)|Gets the display name for a given report server database version string.|  
|[InitializeReportServer](../Topic/InitializeReportServer%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Initializes the specified report server instance.|  
|[ListInstalledSharePointVersions Method &#40;WMI&#41;](../Topic/ListInstalledSharePointVersions%20Method%20\(WMI\).md)|Returns a set of tokens that represent the versions of Microsoft [!INCLUDE[winSPServ](../../relational-databases/tables/includes/winspserv-md.md)] [!INCLUDE[offSPServ](../../reporting-services/includes/offspserv-md.md)], [!INCLUDE[SPF2010](../../reporting-services/report-data/includes/spf2010-md.md)], or [!INCLUDE[SPS2010](../../database-engine/install/windows/includes/sps2010-md.md)] that are installed on the same computer as the report server.|  
|[ListIPAddresses Method &#40;WMI MSReportServer_ConfigurationSetting&#41;](../Topic/ListIPAddresses%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Lists IP addresses for the computer.|  
|[ListReportServersInDatabase](../Topic/ListReportServersInDatabase%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Returns a list of report server installations that are present in the report server database, regardless of whether those installations have access to secure information.|  
|[ListReservedURLs Method &#40;WMI MSReportServer_ConfigurationSetting&#41;](../Topic/ListReservedURLs%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Lists URLs reserved for all applications on the report server.|  
|[ListSSLCertificateBindings Method &#40;WMI MSReportServer_ConfigurationSetting&#41;](../Topic/ListSSLCertificateBindings%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Lists SSL certificate bindings that exist in HTTP.SYS and those expected from RSReportServer.config.|  
|[ListSSLCertificates Method &#40;WMI MSReportServer_ConfigurationSetting&#41;](../Topic/ListSSLCertificates%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Lists installed SSL certificates on the computer.|  
|[ReencryptSecureInformation](../Topic/ReencryptSecureInformation%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Generates a new encryption key and re-encrypts all secure information in the report server database using this new key.|  
|[RemoveSSLCertificateBindings Method &#40;WMI MSReportServer_ConfigurationSetting&#41;](../Topic/RemoveSSLCertificateBindings%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Remove an SSL Certificate binding.|  
|[RemoveUnattendedExecutionAccount](../Topic/RemoveUnattendedExecutionAccount%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Deletes the unattended execution account entry from the report server configuration.|  
|[RemoveURL Method &#40;WMI MSReportServer_ConfigurationSetting&#41;](../Topic/RemoveURL%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Removes a URL reserved for the report server.|  
|[ReserveURL Method &#40;WMI MSReportServer_ConfigurationSetting&#41;](../Topic/ReserveURL%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Adds a URL reservation for a given application.|  
|[RestoreEncryptionKey](../Topic/RestoreEncryptionKey%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Reapplies the specified encryption key to the report server database.|  
|[SetDatabaseConnection](../Topic/SetDatabaseConnection%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Sets the report server database connection to a particular report server database.|  
|[SetDatabaseLogonTimeout](../Topic/SetDatabaseLogonTimeout%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Specifies the default time-out value for report server database logon attempts.|  
|[SetDatabaseQueryTimeout](../Topic/SetDatabaseQueryTimeout%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Specifies the default time-out value for report server database queries.|  
|[SetEmailConfiguration](../Topic/SetEmailConfiguration%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Configures the e-mail delivery extension used by the report server to send e-mail.|  
|[SetSecureConnectionLevel](../Topic/SetSecureConnectionLevel%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Sets the secure connection level of the report server.|  
|[SetServiceState](../Topic/SetServiceState%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Turns the Report Server service on and off.|  
|[SetUnattendedExecutionAccount](../Topic/SetUnattendedExecutionAccount%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Specifies the account used to run reports unattended.|  
|[SetVirtualDirectory Method &#40;WMI MSReportServer_ConfigurationSetting&#41;](../Topic/SetVirtualDirectory%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Sets the virtual directory for an application.|  
|[SetWindowsServiceIdentity](../Topic/SetWindowsServiceIdentity%20Method%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Makes the Report Server service run as the specified Windows user, and grants this account sufficient file system permissions to allow the report server to operate.|  
  
## See Also  
 [MSReportServer_ConfigurationSetting Class](../../reporting-services/wmi-provider-library-reference/msreportserver-configurationsetting-class.md)  
  
  