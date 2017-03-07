---
title: "Change Credentials Wizard (Configuration Manager) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
f1_keywords: 
  - "SQL13.rsconfigtool.changecredentialswizard.F1"
helpviewer_keywords: 
  - "Change Credentials Wizard"
  - "report server database, reconfigure"
ms.assetid: 9eb4060a-9c3e-41e0-8767-3cfaebc45de7
caps.latest.revision: 8
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Change Credentials Wizard (Configuration Manager)
  The [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Configuration Manager provides the Change Credentials Wizard to guide you through the steps of reconfiguring the account that the report server uses to connect to the report server database. When you change credentials, the Configuration Manager will update all permissions and database login information on the database server for the report server database that is actively used by the report server.  
  
 To start the wizard, click **Change Credentials** on the Database page in the [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Configuration Manager. For instructions on how to start the [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Configuration Manager, see [Reporting Services Configuration Manager &#40;Native Mode&#41;](../reporting-services/install/windows/reporting-services-configuration-manager-native-mode.md).  
  
 [!INCLUDE[applies](../a9retired/includes/applies-md.md)] [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Native mode.  
  
## Options  
 **Database Server**  
 Specifies the name of the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssDE](../a9notintoc/includes/ssde-md.md)] instance that runs the report server database.  
  
 To connect to the [!INCLUDE[ssDE](../a9notintoc/includes/ssde-md.md)] instance, you must use credentials that have permission to log on to the server and update database information. The [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Configuration Manager uses your current Windows credentials, but if you do not have a login or database permissions, you can specify a [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] database login.  
  
 You cannot specify different Windows credentials. If you want to connect as a different Windows user, login as that user and then start the [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Configuration Manager.  
  
 **Credentials**  
 Specifies the account by which the report server connects to the report server database. Valid values include the service account of the Report Server Web service, a [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] database login defined on the [!INCLUDE[ssDE](../a9notintoc/includes/ssde-md.md)] instance you are using to host the report server, or a Windows account. If you are using a Windows account, you can specify a local account (*\<computername>\\<username\>*) if the report server and the database are on the same computer, or a domain user account (*\<domain>\\<username\>*) if they are on different computers in the same domain.  
  
 The report server will create a database login and assign database permissions for the account you specify.  
  
 The report server does not create the account itself. The account you specify must already exist and it must be valid for your deployment configuration. Specifically, if the database is on a remote computer and you want to use a Windows account, you must specify an account that has log on permissions on that computer.  
  
 If the computer is in a different or non-trusted domain, consider using a [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] database login. For more information about choosing an account, see [Configure a Report Server Database Connection  &#40;SSRS Configuration Manager&#41;](../reporting-services/install/windows/configure-a-report-server-database-connection-ssrs-configuration-manager.md).  
  
 **Summary**  
 Verify the settings before the wizard runs.  
  
 **Progress and Finish**  
 Monitor the progress of each task.  
  
## See Also  
 [Database  - Reporting Services Native mode &#40;Configuration Manager&#41;](../a9retired/database-reporting-services-native-mode-configuration-manager.md)   
 [Change Database Wizard &#40;Configuration Manager&#41;](../a9retired/change-database-wizard-configuration-manager.md)   
 [Create a Native Mode Report Server Database  &#40;SSRS Configuration Manager&#41;](../reporting-services/install/windows/ssrs-report-server-create-a-native-mode-report-server-database.md)   
 [Reporting Services Configuration Manager Help Topics](../a9retired/reporting-services-configuration-manager-help-topics.md)   
 [Configure a Report Server Database Connection  &#40;SSRS Configuration Manager&#41;](../reporting-services/install/windows/configure-a-report-server-database-connection-ssrs-configuration-manager.md)  
  
  