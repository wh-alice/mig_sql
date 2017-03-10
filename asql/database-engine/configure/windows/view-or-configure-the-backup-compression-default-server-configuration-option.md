---
title: "View or Configure the backup compression default Server Configuration Option | Microsoft Docs"
ms.custom: ""
ms.date: "2017-03-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "SQL Server Management Studio [SQL Server], backup compression default option"
  - "backup compression [SQL Server], backup compression default Option"
ms.assetid: 23029395-3e93-4c29-b7d6-e5a47a3526ff
caps.latest.revision: 30
ms.author: "jhubbard"
manager: "jhubbard"
---
# View or Configure the backup compression default Server Configuration Option
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  This topic describes how to view or configure the **backup compression default** server configuration option in [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)]. The **backup compression default** option determines whether the server instance creates compressed backups by default. When [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is installed, the **backup compression default** option is off.  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Limitations and Restrictions](#Restrictions)  
  
     [Recommendations](#Recommendations)  
  
     [Security](#Security)  
  
-   **To view or configure the backup compression default option, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
-   **Follow Up:**  [After you configure the backup compression default option](#FollowUp)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Restrictions"></a> Limitations and Restrictions  
  
-   Backup compression is not available in all editions of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. For more information, see [Features Supported by the Editions of SQL Server 2016](../Topic/Features%20Supported%20by%20the%20Editions%20of%20SQL%20Server%202016.md).  
  
-   By default, compression significantly increases CPU usage, and the additional CPU consumed by the compression process might adversely impact concurrent operations. Therefore, you might want to create low-priority compressed backups in a session whose CPU usage is limited by [Resource Governor](../../../relational-databases/resource-governor/resource-governor.md). For more information, see [Use Resource Governor to Limit CPU Usage by Backup Compression &#40;Transact-SQL&#41;](../../../relational-databases/backup-restore/use-resource-governor-to-limit-cpu-usage-by-backup-compression-transact-sql.md).  
  
###  <a name="Recommendations"></a> Recommendations  
  
-   When you are creating an individual backup, configuring a log shipping configuration, or creating a maintenance plan, you can override the server-level default.  
  
-   Backup compression is supported for both disk backup devices and tape backup devices.  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Execute permissions on **sp_configure** with no parameters or with only the first parameter are granted to all users by default. To execute **sp_configure** with both parameters to change a configuration option or to run the RECONFIGURE statement, a user must be granted the ALTER SETTINGS server-level permission. The ALTER SETTINGS permission is implicitly held by the **sysadmin** and **serveradmin** fixed server roles.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To view or configure the backup compression default option  
  
1.  In Object Explorer, right-click a server and select **Properties**.  
  
2.  Click the **Database settings** node.  
  
3.  Under **Backup and restore**, **Compress backup** shows the current setting of the **backup compression default** option. This setting determines the server-level default for compressing backups, as follows:  
  
    -   If the **Compress backup** box is blank, new backups are uncompressed by default.  
  
    -   If the **Compress backup** box is checked, new backups are compressed by default.  
  
     If you are a member of the **sysadmin** or **serveradmin** fixed server role, you can also change the default setting by clicking the **Compress backup** box.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To view the backup compression default option  
  
1.  Connect to the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. This example queries the [sys.configurations](../../../relational-databases/reference/system-catalog-views/sys.configurations-transact-sql.md) catalog view to determine the value for `backup compression default`. A value of 0 means that backup compression is off, and a value of 1 means that backup compression is enabled.  
  
```tsql  
SELECT value   
FROM sys.configurations   
WHERE name = 'backup compression default' ;  
GO  
```  
  
#### To configure the backup compression default option  
  
1.  Connect to the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. This example shows how to use [sp_configure](../../../relational-databases/reference/system-stored-procedures/sp-configure-transact-sql.md) to configure the server instance to create compressed backups by default.  
  
```tsql  
EXEC sp_configure 'backup compression default', 1 ;  
RECONFIGURE WITH OVERRIDE ;  
GO 
```  
  
 For more information, see [Server Configuration Options &#40;SQL Server&#41;](../../../database-engine/configure/windows/server-configuration-options-sql-server.md).  
  
##  <a name="FollowUp"></a> Follow Up: After you configure the backup compression default option  
 The setting takes effect immediately without restarting the server.  
  
## See Also  
 [BACKUP &#40;Transact-SQL&#41;](../../../t-sql/statements/backup-transact-sql.md)   
 [Server Configuration Options &#40;SQL Server&#41;](../../../database-engine/configure/windows/server-configuration-options-sql-server.md)   
 [RECONFIGURE &#40;Transact-SQL&#41;](../../../t-sql/language-elements/reconfigure-transact-sql.md)   
 [sp_configure &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-configure-transact-sql.md)   
 [Backup Overview &#40;SQL Server&#41;](../../../relational-databases/backup-restore/backup-overview-sql-server.md)  
  
  