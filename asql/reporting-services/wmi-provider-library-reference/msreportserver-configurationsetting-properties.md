---
title: "MSReportServer_ConfigurationSetting Properties | Microsoft Docs"
ms.custom: 
  - "force 2/17"
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
  - "MSReportServer_ConfigurationSetting Properties"
apilocation: 
  - "reportingservices.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "WMI provider [Reporting Services], MSReportServer_ConfigurationSetting class"
  - "MSReportServer_ConfigurationSetting class"
ms.assetid: e75fe1e5-197b-4c65-859b-370821cad003
caps.latest.revision: 48
ms.author: "asaxton"
manager: "erikre"
---
# MSReportServer_ConfigurationSetting Properties
  The MSReportServer_ConfigurationSetting class represents the installation and runtime parameters of a report server instance. These settings are stored in the RSReportServer.config configuration file.  
  
## Public Properties  
  
|||  
|-|-|  
|[ConnectionPoolSize](../Topic/ConnectionPoolSize%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Returns the connection pool size used by the report server to communicate with the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] instance that hosts the report server database. Read-only.|  
|[DatabaseLogonAccount](../Topic/DatabaseLogonAccount%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Specifies the logon account used by the report server to connect to the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] instance that hosts the report server database. Read-only.|  
|[DatabaseLogonTimeout](../Topic/DatabaseLogonTimeout%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Specifies the number of seconds to wait before an attempt to log on to the report server database fails. Read-only.|  
|[DatabaseLogonType](../Topic/DatabaseLogonType%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Specifies whether the report server uses a Windows service account, a Windows user account, or a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login to access the report server database. Read-only.|  
|[DatabaseName](../Topic/DatabaseName%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Specifies the name of the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance that hosts the report server database.|  
|[DatabaseQueryTimeout](../Topic/DatabaseQueryTimeout%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Specifies the number of seconds that must elapse before the command fails or times out. The report server is timing the process against the SQL Server catalog, not a data source for the report.|  
|[DatabaseServerName](../Topic/DatabaseServerName%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Specifies the name of the server on which the report server database is installed.|  
|[InstallationID Property](../Topic/InstallationID%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Returns a unique identifier for a specific report server instance.|  
|[InstanceName](../Topic/InstanceName%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Specifies the name of a report server instance on a specific computer.|  
|[IsInitialized](../Topic/IsInitialized%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Indicates whether the report server instance is initialized.  Read-only.|  
|[IsSharePointIntegrated](../Topic/IsSharePointIntegrated%20Property%20\(WMI\).md)|Indicates whether the report server is configured for SharePoint integrated mode.|  
|[IsWebServiceEnabled](../Topic/IsWebServiceEnabled%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Indicates whether the Report Server Web service is enabled. Read-only.|  
|[IsWindowsServiceEnabled](../Topic/IsWindowsServiceEnabled%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Indicates whether the Report Server Windows service is enabled. Read-only.|  
|[MachineAccountIdentity Property &#40;WMI&#41;](../Topic/MachineAccountIdentity%20Property%20\(WMI\).md)|Gets the machine account identity of the computer that the report server is installed on.|  
|[PathName](../Topic/PathName%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Specifies the installation path to a report server instance.|  
|[SecureConnectionLevel](../Topic/SecureConnectionLevel%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Returns the secure connection level specified in the RSReportServer.config file.|  
|[SenderEmailAddress](../Topic/SenderEmailAddress%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Gets the address used to send e-mail from the report server. Read-only.|  
|[SendUsingSMTPServer](../Topic/SendUsingSMTPServer%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Specifies whether the SendUsing property in the e-mail configuration is set to TRUE.|  
|[SMTPServer](../Topic/SMTPServer%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Gets the SMTP server property from the RSReportServer.config file. Read-only.|  
|[UnattendedExecutionAccount](../Topic/UnattendedExecutionAccount%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Specifies the login user account that the report server impersonates when running reports unattended. Read-only.|  
|[Version](../Topic/Version%20Property%20%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Returns the version of the report server.|  
|[VirtualDirectoryReportManager Property &#40;WMI MSReportServer_ConfigurationSetting&#41;](../Topic/VirtualDirectoryReportManager%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Returns the virtual directory for the report manager application|  
|[VirtualDirectoryReportServer Property &#40;WMI MSReportServer_ConfigurationSetting&#41;](../Topic/VirtualDirectoryReportServer%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Returns the Virtual directory for the report server web service application.|  
|[WindowsServiceIdentityActual](../Topic/WindowsServiceIdentityActual%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Returns the identity that the Report Server Windows service is actually running under. Read-only.|  
|[WindowsServiceIdentityConfigured](../Topic/WindowsServiceIdentityConfigured%20Property%20\(WMI%20MSReportServer_ConfigurationSetting\).md)|Returns the identity that the Report Server Windows service was last configured to run under. Read-only.|  
  
## See Also  
 [MSReportServer_ConfigurationSetting Members](../../reporting-services/wmi-provider-library-reference/msreportserver-configurationsetting-members.md)  

  