---
title: "Report Server Database (SSRS Native Mode) | Microsoft Docs"
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
  - "databases [Reporting Services]"
  - "report servers [Reporting Services], databases"
  - "temporary databases [Reporting Services]"
  - "report server database"
  - "reportservertempdb"
  - "reportserver database"
ms.assetid: 0fc5c033-3fe1-4cea-86c7-66ea5e424d65
caps.latest.revision: 48
ms.author: "asaxton"
manager: "erikre"
---
# Report Server Database (SSRS Native Mode)
  A report server is a stateless server that uses the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] to store metadata and object definitions. A native mode [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] installation uses two databases to separate persistent data storage from temporary storage requirements. The databases are created together and bound by name. By default, the database names are **reportserver** and **reportservertempdb**, respectively.  
  
 A SharePoint mode [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] installation will also create a database for the data alerting feature. The three databases in SharePoint mode are associated with [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] service applications. For more information, see [Manage a Reporting Services SharePoint Service Application](../../reporting-services/report-server/sharepoint/manage-a-reporting-services-sharepoint-service-application.md)  
  
 The databases can run on a local or remote [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] instance. Choosing a local instance is useful if you have sufficient system resources or want to conserve software licenses, but running the databases on a remote computer can improve performance.  
  
 You can port or reuse an existing report server database from previous installation or a different instance with another report server instance. The schema of the report server database must be compatible with the report server instance. If the database is in an older format, you will be prompted to upgrade it to the current format. Newer versions cannot be down graded to an older version. If you have a newer report server database, you cannot use it with an earlier version of a report server instances. For more information about how report server databases are upgraded to newer formats, see [Upgrade a Report Server Database](../../reporting-services/install/windows/upgrade-a-report-server-database.md).  
  
> [!IMPORTANT]  
>  The table structure for the databases is optimized for server operations and should not be modified or tuned. [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] might change the table structure from one release to the next. If you modify or extend the database, you might limit or prevent the capability to perform future upgrades or apply service packs. You might also introduce changes that impair report server operations. For example if you turn on READ_COMMITTED_SNAPSHOT on the ReportServer database, you will break the interactive sorting feature.  
  
 All access to a report server database must be handled through the report server. To access content in a report server database, you can use report server management tools, (such as Report Manager and [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssManStudio](../../advanced-analytics/r-services/includes/ssmanstudio-md.md)]), or programmatic interfaces such as URL access, Report Server Web service, or the Windows Management Instrumentation (WMI) provider.  
  
 The connection to the report server database is usually defined through the [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration Manager. However, it can be defined during setup if you choose to install the default configuration. For more information about the report server connection to the database, see [Configure a Report Server Database Connection  &#40;SSRS Configuration Manager&#41;](../../reporting-services/install/windows/configure-a-report-server-database-connection-ssrs-configuration-manager.md).  
  
## Report Server Database  
 The report server database is a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database that stores the following content:  
  
-   Items managed by a report server (reports and linked reports, shared data sources, report models, folders, resources) and all of the properties and security settings that are associated with those items.  
  
-   Subscription and schedule definitions.  
  
-   Report snapshots (which include query results) and report history.  
  
-   System properties and system-level security settings.  
  
-   Report execution log data.  
  
-   Symmetric keys and encrypted connection and credentials for report data sources.  
  
 Because the report server database stores application state and persistent data, you should create a backup schedule for this database to prevent data loss. For recommendations and instructions on how to back up the database, see [Moving the Report Server Databases to Another Computer &#40;SSRS Native Mode&#41;](../../reporting-services/report-server/moving-the-report-server-databases-to-another-computer-ssrs-native-mode.md).  
  
## Report Server Temporary Database  
 Each report server database uses a related temporary database to store session and execution data, cached reports, and work tables that are generated by the report server. Background server processes will periodically remove older and unused items from the tables in the temporary database.  
  
 [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] does not re-create the temporary database if it is missing, nor does it repair missing or modified tables. Although the temporary database does not contain persistent data, you should back up a copy of the database anyway so that you can avoid having to re-create it as part of a failure recovery operation.  
  
 If you back up the temporary database and subsequently restore it, you should delete the contents. Generally, it is safe to delete the contents of the temporary database at any time. However, you must restart the Report Server Windows service after you delete the contents.  
  
## See Also  
 [Host a Report Server Database in a SQL Server Failover Cluster](../../reporting-services/install/windows/host-a-report-server-database-in-a-sql-server-failover-cluster.md)   
 [Store Encrypted Report Server Data &#40;SSRS Configuration Manager&#41;](../Topic/Store%20Encrypted%20Report%20Server%20Data%20\(SSRS%20Configuration%20Manager\).md)   
 [Reporting Services Report Server](../../reporting-services/report-server/sharepoint/reporting-services-report-server.md)   
 [Administer a Report Server Database &#40;SSRS Native Mode&#41;](../../reporting-services/report-server/administer-a-report-server-database-ssrs-native-mode.md)   
 [Create a Report Server Database  &#40;SSRS Configuration Manager&#41;](../Topic/Create%20a%20Report%20Server%20Database%20%20\(SSRS%20Configuration%20Manager\).md)   
 [Backup and Restore Operations for Reporting Services](../../reporting-services/install/windows/backup-and-restore-operations-for-reporting-services.md)  
  
  