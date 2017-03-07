---
title: "sys.dm_database_copy_links (Azure SQL Database) | Microsoft Docs"
ms.custom: 
  - "MSDN content"
  - "MSDN - SQL DB"
ms.date: "2015-11-09"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.service: "sql-database"
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "Azure SQL Database"
f1_keywords: 
  - "sys.database_copy_links"
ms.assetid: 3c8e1b28-c32c-491a-9ebe-7eeeaa21ee7d
caps.latest.revision: 6
ms.author: "carlrab"
manager: "jhubbard"
robots: noindex,nofollow
---
# sys.dm_database_copy_links (Azure SQL Database)
  Returns information about the database copy.  
  
|Column Name|Data Type|Description|  
|-----------------|---------------|-----------------|  
|**database_id**|**int**|The ID of the current database in the `sys.databases` view.|  
|**start_date**|**datetimeoffset**|The UTC time at a regional [!INCLUDE[ssSDS](../a9retired/includes/sssds-md.md)] datacenter when the database copying was initiated.|  
|**copy_guid**|**uniqueidentifier**|Unique ID of the replication link.|  
|**partner_server**|**sysname**|Name of the logical server containing the linked database.|  
|**partner_database**|**sysname**|Name of the linked database on the linked logical server.|  
|**copy_state**|**tinyint**|The state of replication for this database, one of:<br /><br /> 0 = Pending. Creation of the active secondary database is scheduled but the necessary preparation steps are not yet completed.<br /><br /> 1 = Seeding. The replication target is being seeded but the two databases are not yet synchronized. Until seeding completes, you cannot connect to the secondary database. Removing secondary database from the primary will cancel the seeding operation.|  
|**replication_state_desc**|**nvarchar(256)**|Description of replication_state, one of:<br /><br /> PENDING<br /><br /> SEEDING|  
|**role**|**tinyint**|The replication role, one of:<br /><br /> 0 = Source. The database_id refers to the primary database in the replication relationship.<br /><br /> 1 = Target.  The database_id refers to the primary database in the replication relationship.|  
|**role_desc**|**nvarchar(256)**|The replication role, one of:<br /><br /> SOURCE<br /><br /> TARGET|  
|**replication_state_desc**|**nvarchar(256)**|Description of replication_state, one of:<br /><br /> PENDING<br /><br /> SEEDING<br /><br /> CATCH_UP<br /><br /> TERMINATED|  
  
## Permissions  
 This view is only available in the **master** database to the server-level principal login.  
  
## Remarks  
 You can use the **sys.dm_database_copy_links** view in the **master** database of the source or target [!INCLUDE[ssSDS](../a9retired/includes/sssds-md.md)] server. When the database copy completes successfully and the new database becomes ONLINE, the row in the **sys.dm_database_copy_links** view is removed automatically.  
  
  