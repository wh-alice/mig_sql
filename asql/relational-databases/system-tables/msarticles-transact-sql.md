---
title: "MSarticles (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
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
  - "MSarticles"
  - "MSarticles_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSarticles system table"
ms.assetid: 1acd79a5-b3e2-4161-9592-7acc2a41ba38
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSarticles (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSarticles** table contains one row for each article being replicated by a Publisher. This table is stored in the distribution database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**publisher_id**|**smallint**|The ID of the Publisher.|  
|**publisher_db**|**sysname**|The name of the Publisher database.|  
|**publication_id**|**int**|The ID of the publication.|  
|**article**|**sysname**|The name of the article.|  
|**article_id**|**int**|The ID of the article.|  
|**destination_object**|**sysname**|The name of the table created at the Subscriber.|  
|**source_owner**|**sysname**|The name of the schema of the source table at the Publisher.|  
|**source_object**|**sysname**|The name of the source object from which to add the article.|  
|**description**|**nvarchar(255)**|The description of the article.|  
|**destination_owner**|**sysname**|The name of the schema of the table created at the Subscriber.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../relational-databases/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../relational-databases/system-views/replication-views-transact-sql.md)  
  
  