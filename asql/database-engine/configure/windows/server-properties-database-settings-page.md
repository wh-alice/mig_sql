---
title: "Server Properties (Database Settings Page) | Microsoft Docs"
ms.custom: ""
ms.date: "03/02/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.swb.serverproperties.databasesettings.f1"
ms.assetid: 1cebdbd3-cbfd-4a02-bba6-a5addf4e3ada
caps.latest.revision: 32
ms.author: "rickbyh"
manager: "jhubbard"
---
# Server Properties - Database Settings Page
  Use this page to view or modify your database settings.  
  
## Options  
 **Default index fill factor**  
 Specifies how full [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] should make each page when it creates a new index using existing data. The fill factor affects performance because [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] must take time to split pages when they fill up.  
  
 The default value is 0; valid values range from 0 through 100. A fill factor of 0 or 100 creates clustered indexes with full data pages and nonclustered indexes with full leaf pages, but it leaves some space within the upper level of the index tree. Fill factor values 0 and 100 are identical in all respects.  
  
 Small fill factor values cause [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] to create indexes with pages that are not full. Each index takes more storage space, but there is more room for subsequent insertions without requiring page splits.  
  
 **Wait indefinitely**  
 Specifies that [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] will never time out while waiting for a new backup tape.  
  
 **Try once**  
 Specifies that [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] will time out if a backup tape is not available when needed.  
  
 **Try for minute(s)**  
 Specifies that [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] will time out if a backup tape is not available within the period specified.  
  
 **Default backup media retention (in days)**  
 Provides a system-wide default for the length of time to retain each backup medium after it has been used for a database or transaction log backup. This option helps protect backups from being overwritten until the specified number of days has elapsed.  
  
 **Compress backup**  
 In [!INCLUDE[ssEnterpriseEd10](../../../analysis-services/data-mining/includes/ssenterpriseed10-md.md)] (or later versions), indicates the current setting of the **backup compression default** option. This option determines the server-level default for compressing backups, as follows:  
  
-   If the **Compress backup** box is blank, new backups are uncompressed by default.  
  
-   If the **Compress backup** box is checked, new backups are compressed by default.  
  
    > [!IMPORTANT]  
    >  By default, compression significantly increases CPU usage, and the additional CPU consumed by the compression process might adversely affect concurrent operations. Therefore, you might want to create low-priority compressed backups in a session whose CPU usage is limited by [Resource Governor](../../../relational-databases/resource-governor/resource-governor.md). For more information, see [Use Resource Governor to Limit CPU Usage by Backup Compression &#40;Transact-SQL&#41;](../../../relational-databases/backup-restore/use-resource-governor-to-limit-cpu-usage-by-backup-compression-transact-sql.md).  
  
 If you are a member of the **sysadmin** or **serveradmin** fixed server role, you can change the setting by clicking the **Compress backup** box.  
  
 For more information, see [View or Configure the backup compression default Server Configuration Option](../../../database-engine/configure/windows/view-or-configure-the-backup-compression-default-server-configuration-option.md) and [Backup Compression &#40;SQL Server&#41;](../../../relational-databases/backup-restore/backup-compression-sql-server.md).  
  
 **Recovery interval (minutes)**  
 Sets the maximum number of minutes per database to recover databases. The default is 0, indicating automatic configuration by [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]. In practice, this means a recovery time of less than one minute and a checkpoint approximately every one minute for active databases. For more information, see [Configure the recovery interval Server Configuration Option](../../../database-engine/configure/windows/configure-the-recovery-interval-server-configuration-option.md).  
  
 **Data**  
 Specifies the default location for data files. Click the browse button to navigate to a new default location. Does not take effect until [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] is restarted.  
  
 **Log**  
 Specifies the default location for log files. Click the browse button to navigate to a new default location. Does not take effect until [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] is restarted.  
  
 **Configured Values**  
 Displays the configured values for the options on this pane. If you change these values, click **Running Values** to see whether the changes have taken effect. If they have not, the instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] must be restated first.  
  
 **Running Values**  
 View the currently running values for the options on this pane. These values are read-only.  
  
## See Also  
 [Server Configuration Options &#40;SQL Server&#41;](../../../database-engine/configure/windows/server-configuration-options-sql-server.md)   
 [Specify Fill Factor for an Index](../../../relational-databases/indexes/specify-fill-factor-for-an-index.md)  
  
  