---
title: "Change Tracking Cleanup | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 2a49248f-93c5-4e74-bfb0-73899ed49d9a
caps.latest.revision: 2
ms.author: "amitban"
---
# Change Tracking Cleanup
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]


Change Tracking cleanup is associated with three different tables:
- **SYSCOMMITTABLE** - Change tracking information for all tables enabled for Change Tracking in a database in this in-memory rowstore.
- **SYSCOMMITTAB** - This is an internal table present in every database which is enabled for Change Tracking. 
- **SIDE TABLES** - Every table which is enabled for Change Tracking has an internal on-disk table called a side table associated with it. The naming convention for this table is *change_tracking_\<#>*.

There are two types of cleanup possible with Change Tracking:
- **Automatic Cleanup**
- **Manual Cleanup**

### Automatic Cleanup
Change Tracking cleanup is invoked automatically every 30 minutes. The default retention period is 2 days. Every time the automatic cleanup thread wakes up, it scans all the user databases on the SQL Server instance to identify the change tracking enabled databases. Based on the retention period setting of the database, each side table is purged of its expired records. The automatic cleanup removes rows from the on-disk tables based on the retention period defined for the database.

The in-memory rowstore (syscommittable) is flushed every checkpoint to the on-disk table (syscommittab). Rows from the syscommittab table are removed during every checkpoint. 

### Manual Cleanup
In SQL Server 2014 Service Pack 2 and above, a new stored procedure called **sp_flush_CT_internal_table_on_demand** was added which accepts a table name as parameter and will attempt to cleanup records from the corresponding change tracking internal table. [KB3173157](https://support.microsoft.com/en-us/kb/3173157) has more details about this enhancement.
  
More details about a sample script which can perform manual cleaup for all the Change Tracking tables in a database is available [here](https://blogs.msdn.microsoft.com/sql_server_team/change-tracking-cleanup-part-1/).

## See Also  
 [Enable and Disable Change Tracking &#40;SQL Server&#41;](../relational-databases/track-changes/enable-and-disable-change-tracking-sql-server.md)   
 [Work with Change Tracking &#40;SQL Server&#41;](../relational-databases/track-changes/work-with-change-tracking-sql-server.md)   
 [Manage Change Tracking &#40;SQL Server&#41;](../relational-databases/track-changes/manage-change-tracking-sql-server.md)   
 [Track Data Changes &#40;SQL Server&#41;](../relational-databases/track-changes/track-data-changes-sql-server.md)  
  
  