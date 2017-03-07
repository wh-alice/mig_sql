---
title: "sys.dm_hadr_auto_page_repair (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "dm_hadr_auto_page_repair_TSQL"
  - "sys.dm_hadr_auto_page_repair"
  - "sys.dm_hadr_auto_page_repair_TSQL"
  - "dm_hadr_auto_page_repair"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "Availability Groups [SQL Server], monitoring"
  - "automatic page repair"
  - "sys.dm_hadr_auto_page_repair dynamic management view"
ms.assetid: d7840adf-4a1b-41ac-bc94-102c07ad1c79
caps.latest.revision: 8
ms.author: "mikeray"
manager: "jhubbard"
---
# sys.dm_hadr_auto_page_repair (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Returns a row for every automatic page-repair attempt on any availability database on an availability replica that is hosted for any availability group by the server instance. This view contains rows for the latest automatic page-repair attempts on a given primary or secondary database, with a maximum of 100 rows per database. As soon as a database reaches the maximum, the row for its next automatic page-repair attempt replaces one of the existing entries. The following table defines the meaning of the various columns.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../../a9notintoc/includes/sssql11-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**database_id**|**int**|ID of the database to which this row corresponds.|  
|**file_id**|**int**|ID of the file in which the page is located.|  
|**page_id**|**bigint**|ID of the page in the file.|  
|**error_type**|**int**|Type of the error. The values can be:<br /><br /> **-**1 = All hardware [823 errors](../Topic/MSSQLSERVER_823.md)<br /><br /> 1 = [824 errors](../Topic/MSSQLSERVER_824.md) other than a bad checksum or a torn page (such as a bad page ID)<br /><br /> 2 = Bad checksum<br /><br /> 3 = Torn page|  
|**page_status**|**int**|The status of the page-repair attempt:<br /><br /> 2 = Queued for request from partner.<br /><br /> 3 = Request sent to partner.<br /><br /> 4 = Queued for automatic page repair (response received from partner).<br /><br /> 5 = Automatic page repair succeeded and the page should be usable.<br /><br /> 6 = Irreparable. This indicates that an error occurred during page-repair attempt, for example, because the page is also corrupted on the partner, the partner is disconnected, or a network problem occurred. This state is not terminal; if corruption is encountered again on the page, the page will be requested again from the partner.|  
|**modification_time**|**datetime**|Time of last change to the page status.|  
  
## Security  
  
### Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## See Also  
 [Automatic Page Repair &#40;Availability Groups: Database Mirroring&#41;](../../../sql-server/failover-clusters/automatic-page-repair-availability-groups-database-mirroring.md)   
 [suspect_pages &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/suspect-pages-transact-sql.md)   
 [Manage the suspect_pages Table &#40;SQL Server&#41;](../../../relational-databases/backup-restore/manage-the-suspect-pages-table-sql-server.md)  
  
  