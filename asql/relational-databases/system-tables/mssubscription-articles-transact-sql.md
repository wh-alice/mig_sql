---
title: "MSsubscription_articles (Transact-SQL) | Microsoft Docs"
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
  - "MSsubscription_articles"
  - "MSsubscription_articles_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSsubscription_articles system table"
ms.assetid: dbc1737f-261e-4017-b9cd-703b9fc4ac78
caps.latest.revision: 26
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSsubscription_articles (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSsubscription_articles** table contains information regarding the articles in a queued subscription. This table is populated only for the replication types of queued updating and immediate updating with queued updating as a failover.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**agent_id**|**int**|The ID of the agent that services this article|  
|**artid**|**int**|The article ID from the **sysarticles** table.|  
|**article**|**sysname**|The name of the article from the **sysarticles** table.|  
|**dest_table**|**sysname**|The name of the destination table from the **sysarticles** table.|  
|**owner**|**sysname**|The owner of the subscription.|  
|**cft_table**|**sysname**|The name of the conflict table for this article, for queued updating replication type.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../relational-databases/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../relational-databases/system-views/replication-views-transact-sql.md)  
  
  