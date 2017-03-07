---
title: "Remove Log Shipping (SQL Server) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-high-availability"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "log shipping [SQL Server], removing"
  - "removing log shipping"
  - "deleting log shipping"
ms.assetid: 859373db-c744-4a4b-8479-45163f61e8cb
caps.latest.revision: 18
ms.author: "mikeray"
manager: "jhubbard"
---
# Remove Log Shipping (SQL Server)
  This topic describes how to remove log shipping in [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)].  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Security](#Security)  
  
-   **To remove log shipping, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
-   [Related Tasks](#RelatedTasks)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 The log-shipping stored procedures require membership in the **sysadmin** fixed server role.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To remove log shipping  
  
1.  Connect to the instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] that is currently the log shipping primary server and expand that instance.  
  
2.  Expand **Databases**, right-click the log shipping primary database, and then click **Properties**.  
  
3.  Under **Select a page**, click **Transaction Log Shipping**.  
  
4.  Clear the **Enable this as a primary database in a log shipping configuration** check box.  
  
5.  Click **OK** to remove log shipping from this primary database.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To Remove Log Shipping  
  
1.  On the log shipping primary server, execute [sp_delete_log_shipping_primary_secondary](../../relational-databases/reference/system-stored-procedures/sp-delete-log-shipping-primary-secondary-transact-sql.md) to delete the information about the secondary database from the primary server.  
  
2.  On the log shipping secondary server, execute [sp_delete_log_shipping_secondary_database](../../relational-databases/reference/system-stored-procedures/sp-delete-log-shipping-secondary-database-transact-sql.md) to delete the secondary database.  
  
    > [!NOTE]  
    >  If there are no other secondary databases with the same secondary ID, **sp_delete_log_shipping_secondary_primary** is invoked from **sp_delete_log_shipping_secondary_database** and deletes the entry for the secondary ID and the copy and restore jobs.  
  
3.  On the log shipping primary server, execute **sp_delete_log_shipping_primary_database** to delete information about the log shipping configuration from the primary server. This also deletes the backup job.  
  
4.  On the log shipping primary server, disable the backup job. For more information, see [Disable or Enable a Job](../Topic/Disable%20or%20Enable%20a%20Job.md).  
  
5.  On the log shipping secondary server, disable the copy and restore jobs.  
  
6.  Optionally, if you are no longer using the log shipping secondary database, you can delete it from the secondary server.  
  
##  <a name="RelatedTasks"></a> Related Tasks  
  
-   [Upgrading Log Shipping to SQL Server 2016 &#40;Transact-SQL&#41;](../../database-engine/log-shipping/upgrading-log-shipping-to-sql-server-2016-transact-sql.md)  
  
-   [Configure Log Shipping &#40;SQL Server&#41;](../../database-engine/log-shipping/configure-log-shipping-sql-server.md)  
  
-   [Add a Secondary Database to a Log Shipping Configuration &#40;SQL Server&#41;](../../database-engine/log-shipping/add-a-secondary-database-to-a-log-shipping-configuration-sql-server.md)  
  
-   [Remove a Secondary Database from a Log Shipping Configuration &#40;SQL Server&#41;](../../database-engine/log-shipping/remove-a-secondary-database-from-a-log-shipping-configuration-sql-server.md)  
  
-   [Monitor Log Shipping &#40;Transact-SQL&#41;](../../database-engine/log-shipping/monitor-log-shipping-transact-sql.md)  
  
-   [Fail Over to a Log Shipping Secondary &#40;SQL Server&#41;](../../database-engine/log-shipping/fail-over-to-a-log-shipping-secondary-sql-server.md)  
  
-   [Disable or Enable a Job](../Topic/Disable%20or%20Enable%20a%20Job.md)  
  
## See Also  
 [About Log Shipping &#40;SQL Server&#41;](../../database-engine/log-shipping/about-log-shipping-sql-server.md)   
 [Log Shipping Tables and Stored Procedures](../../database-engine/log-shipping/log-shipping-tables-and-stored-procedures.md)  
  
  