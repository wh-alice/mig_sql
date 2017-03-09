---
title: "MSpeer_originatorid_history (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
f1_keywords: 
  - "MSpeer_originatorid_history_TSQL"
  - "MSpeer_originatorid_history"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSpeer_originatorid_history"
ms.assetid: c1f53d0f-4080-43ff-be38-2b10395c68c9
caps.latest.revision: 11
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSpeer_originatorid_history (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains one row for each originator ID that has been defined in the topology. This includes IDs for nodes that are no longer active. The table is used when you are configuring a new node for conflict detection to ensure that the originator ID specified has not already been used. This table is stored in the publication database. For more information about conflict detection, see [Conflict Detection in Peer-to-Peer Replication](../../../relational-databases/replication/transactional/peer-to-peer-conflict-detection-in-peer-to-peer-replication.md).  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|originator_publication|**sysname**|Publication for which the originator ID was specified.|  
|originator_id|**int**|Number that identifies each node in the topology for the purposes of conflict detection|  
|originator_node|**sysname**|Server instance for which the originator ID was specified.|  
|originator_db|**sysname**|Publication database for which the originator ID was specified.|  
|originator_db_version|**int**|Identifies the version number of the originating database.|  
|originator_version|**int**|Identifies the version number of the Publisher.|  
|inserted_date|**datetime**|Date and time that the row for the originator ID was inserted into this table.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/replication-views-transact-sql.md)  
  
  