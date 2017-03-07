---
title: "FAQ for Stretch Database | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
ms.assetid: 340d18f0-2634-45f5-be9e-5212096cce62
caps.latest.revision: 10
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# FAQ for Stretch Database
  This topic answers frequently asked questions for Stretch Database in [!INCLUDE[ssSQL15](../a9notintoc/includes/sssql15-md.md)].  
  
## Frequently asked questions  
 **Does Stretch Database work with \<SQL Server feature name>?**  
 -   For a list of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] features that make a table ineligible for Stretch, see [Requirements and limitations for Stretch Database](../a9retired/requirements-and-limitations-for-stretch-database.md).  
  
-   Optionally, download SQL Server 2016 Upgrade Advisor and run the Stretch Database Advisor to identify databases and tables that are candidates for Stretch Database. For more info, see [Identify databases and tables for Stretch Database by running Stretch Database Advisor](../sql-server/install/81bd93d8-eef8-4572-88d7-5c37ab5ac2bf.md).  
  
 **Can I target another local SQL Server instance for Stretch Database?**  
 No. Stretch Database does not support another local [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] instance as the remote endpoint.  
  
 **Can I target an Azure SQL Database server that's not V12?**  
 No. Stretch Database supports only V12 SQL Database servers.  
  
 **I can no longer create an Azure SQL Database server on my subscription.**  
 You may have reached the maximum number of servers per subscription.  
  
 For more info about the maximum number of servers, see [Azure Subscription and Service Limits, Quotas, and Constraints](http://azure.microsoft.com/documentation/articles/azure-subscription-service-limits/). For info about how to request an increase in the number of servers that you can create, see [Understanding Azure Limits and Increases](http://azure.microsoft.com/blog/2014/06/04/azure-limits-quotas-increase-requests/).  
  
 **What is the service tier and performance level of my Stretch Database?**  
 By default, the wizard creates a SQL Database server with the Standard service tier and the S3 performance level.  
  
 For more info about SQL Database service tiers and performance levels, see [Azure SQL Database Service Tiers and Performance Levels](https://msdn.microsoft.com/library/azure/dn741336.aspx). For info about how to change the service tier and performance level, see [Changing Database Service Tiers and Performance Levels](https://msdn.microsoft.com/en-us/library/azure/dn369872.aspx).  
  
 **Can I enable Stretch for a database larger than \<size>?**  
 The size of the remote portion of a database with enabled for Stretch is limited only by the Azure SQL Database service tier. By default, the wizard creates a SQL Database server with the Standard service tier and the S3 performance level. To increase the size allowed for the remote database, increase the service tier.  
  
 For more info about SQL Database service tiers and performance levels, see [Azure SQL Database Service Tiers and Performance Levels](https://msdn.microsoft.com/library/azure/dn741336.aspx). For info about how to change the service tier and performance level, see [Changing Database Service Tiers and Performance Levels](https://msdn.microsoft.com/en-us/library/azure/dn369872.aspx).  
  
 **The wizard won't let me continue.**  
 You may have to enable Stretch Database on the local server instance. For more info, see [Configure a server for Stretch](../a9retired/configure-a-server-for-stretch.md).  
  
 **The Azure firewall is blocking connections from my local server.**  
 You may have to add a rule in the Azure firewall settings of the SQL Database server. For more info, see [How to: Configure Firewall Settings (Azure SQL Database)](https://msdn.microsoft.com/library/azure/jj553530.aspx).  
  
 **Can I disable Stretch and move migrated data back to a local table?**  
 Yes. For more info, see [Disable Stretch Database and bring back remote data](../sql-server/install/disable-stretch-database-and-bring-back-remote-data.md).  
  
> [!NOTE]  
>  Moving the remote data from SQL Database back to the local server incurs Azure data transfer costs.  
  
 **Queries that include my Stretch-enabled table are slow.**  
 Queries that include Stretch-enabled tables are expected to perform more slowly than they did before the tables were enabled for Stretch. If query performance degrades significantly, review the following possible problems.  
  
-   Is your Azure SQL Database server in a different geographical region than your local server? Configure your SQL Database server to be in the same geographical region as your local server to reduce network latency.  
  
-   The service tier or the performance level of your Azure SQL Database server may not be sufficient to process your queries quickly. For more info about SQL Database service tiers and performance levels, see [Azure SQL Database Service Tiers and Performance Levels](https://msdn.microsoft.com/library/azure/dn741336.aspx). For info about how to change the service tier and performance level, see [Changing Database Service Tiers and Performance Levels](https://msdn.microsoft.com/en-us/library/azure/dn369872.aspx).  
  
-   Your network conditions may have degraded. Contact your network administrator for info about recent issues or outages.  
  
 **Rows from my Stretch-enabled table are not being migrated to Azure. What’s the problem?**  
 There are several problems that can affect migration. Check the following things.  
  
-   Check network connectivity for the SQL Server computer.  
  
-   Check that Azure Firewall is not blocking your local server from connecting to the remote endpoint. To configure Azure Firewall rules, see [How to: Configure Firewall Settings (Azure SQL Database)](https://msdn.microsoft.com/en-us/library/azure/jj553530.aspx).  
  
-   Check the dynamic management view **sys.dm_db_rda_migration_status** for the status of the latest batch. If an error has occurred, check the error_number, error_state, and error_severity values for the batch.  
  
    -   For more info about the view, see [sys.dm_db_rda_migration_status &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/stretch-database-sys.dm-db-rda-migration-status.md).  
  
    -   For more info about the content of a SQL Server error message, see [sys.messages &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/messages-for-errors-catalog-views-sys.messages.md).  
  
## See Also  
 [Requirements and limitations for Stretch Database](../a9retired/requirements-and-limitations-for-stretch-database.md)  
  
  