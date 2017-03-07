---
title: "sys.dm_geo_replication_link_status (Azure SQL Database) | Microsoft Docs"
ms.custom: 
  - "MSDN content"
  - "MSDN - SQL DB"
ms.date: "2016-10-13"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.service: "sql-database"
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "dm_geo_replication_link_status"
  - "dm_geo_replication_link_status_TSQL"
  - "sys.dm_geo_replication_link_status"
  - "sys.dm_geo_replication_link_status_TSQL"
helpviewer_keywords: 
  - "dm_geo_replication_link_status dynamic management view"
  - "sys.dm_geo_replication_link_status dynamic management view"
ms.assetid: d763d679-470a-4c21-86ab-dfe98d37e9fd
caps.latest.revision: 15
ms.author: "carlrab"
manager: "jhubbard"
---
# sys.dm_geo_replication_link_status (Azure SQL Database)
[!INCLUDE[tsql-appliesto-xxxxxx-asdb-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-xxxxxx-asdb-xxxx-xxx-md.md)]

  Contains a row for each replication link between primary and secondary databases in a geo-replication partnership. This includes both primary and secondary databases. If more than one continuous replication link exists for a given primary database, this table contains a row for each of the relationships. The view is created in all databases, including the logical master. However, querying this view in the logical master returns an empty set.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|link_guid|**uniqueidentifier**|Unique ID of the replication link.|  
|partner_server|**sysname**|Name of the logical server containing the linked database.|  
|partner_database|**sysname**|Name of the linked database on the linked logical server.|  
|last_replication|**datetimeoffset**|The timestamp of the last transaction’s acknowledgement by the secondary based on the primary database clock. This value is available on the primary database only.|  
|replication_lag_sec|**int**|Time difference in seconds between the last_replication value and the timestamp of that transaction’s commit on the primary based on the primary database clock.  This value is available on the primary database only.|  
|replication_state|**tinyint**|The state of geo-replication for this database, one of:.<br /><br /> 1 = Seeding. The geo-replication target is being seeded but the two databases are not yet synchronized. Until seeding completes, you cannot connect to the secondary database. Removing secondary database from the primary will cancel the seeding operation.<br /><br /> 2 = Catch-up. The secondary database is  in a transactionally consistent state and is being constantly  synchronized with the primary database.<br /><br /> 4 = Suspended. This is not an active continuous-copy relationship. This state usually indicates that the bandwidth available for the interlink is insufficient for the level of transaction activity on the primary database. However, the continuous-copy relationship is still intact.|  
|replication_state_desc|**nvarchar(256)**|PENDING<br /><br /> SEEDING<br /><br /> CATCH_UP|  
|role|**tinyint**|Geo-replication role, one of:<br /><br /> 0 = Primary. The database_id  refers to the primary database in the geo-replication partnership.<br /><br /> 1 = Secondary.  The database_id  refers to the primary database in the geo-replication partnership.|  
|role_desc|**nvarchar(256)**|PRIMARY<br /><br /> SECONDARY|  
|secondary_type|**tinyint**|The secondary type, one of:<br /><br /> -1 = No. The secondary database is not accessible until failover.<br /><br /> 0 = All.   The secondary database is accessible to any client connection.|  
|secondary_type _desc|**nvarchar(256)**|No<br /><br /> All|  
  
> [!NOTE]  
>  If the replication relationship is terminated by removing the secondary database (section 4.2), the row for that database in the **sys.dm_geo_replication_link_status** view disappears.  
  
## Permissions  
 Any account with view_database_state permission can query **sys.dm_geo_replication_link_status**.  
  
## Example  
 Show replication lags and last replication time of my secondary databases.  
  
```  
SELECT   
     link_guid  
   , partner_server  
   , last_replication  
   , replication_lag_sec   
FROM sys.dm_geo_replication_link_status;  
```  
  
## See Also  
 [ALTER DATABASE &#40;Azure SQL Database&#41;](../../../t-sql/statements/alter-database-azure-sql-database.md)   
 [sys.geo_replication_links &#40;Azure SQL Database&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.geo-replication-links-azure-sql-database.md)   
 [sys.dm_operation_status &#40;Azure SQL Database&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-operation-status-azure-sql-database.md)  
  
  