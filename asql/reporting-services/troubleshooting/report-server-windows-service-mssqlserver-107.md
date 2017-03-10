---
title: "Report Server Windows Service (MSSQLServer) 107 | Microsoft Docs"
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
helpviewer_keywords: 
  - "MSSQLServer 107 error"
ms.assetid: 52b5704b-27f9-400a-a821-d8fa0786afe4
caps.latest.revision: 20
ms.author: "asaxton"
manager: "erikre"
---
# Report Server Windows Service (MSSQLServer) 107
    
## Details  
  
|||  
|-|-|  
|Product Name|[!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]|  
|Event ID|107|  
|Event Source|Report Server Windows Service|  
|Component|[!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)]|  
|Message Text|Report Server Windows Service (MSSQLSERVER) cannot connect to the report server database.|  
  
## Explanation  
 The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Report Server service cannot connect to the report server database. This error occurs during a service restart if a connection to the report server database cannot be established. Conditions under which this error occurs include the following:  
  
-   [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] service is not running when the Report Server service starts.  
  
-   The connection to the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] service fails because remote connections or the TCP/IP protocol is not enabled.  
  
-   The report server database is not configured correctly.  
  
-   The service account is not configured correctly, or the account no longer has permissions on the report server database. This can occur if you do not use the [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration tool to set up the account or the report server database.  
  
## User Action  
 Start the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] service if it is not running and check that remote connections are enabled for TCP/IP protocol.  
  
 Use the [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration tool to configure the report server database and service account.  
  
## Internal-Only  
  
## See Also  
 [Configure the Report Server Service Account &#40;SSRS Configuration Manager&#41;](../../reporting-services/install/windows/configure-the-report-server-service-account-ssrs-configuration-manager.md)   
 [Reporting Services Configuration Manager &#40;Native Mode&#41;](../../reporting-services/install/windows/reporting-services-configuration-manager-native-mode.md)   
 [Start and Stop the Report Server Service](../../reporting-services/report-server/start-and-stop-the-report-server-service.md)  
  
  