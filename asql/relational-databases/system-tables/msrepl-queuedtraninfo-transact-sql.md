---
title: "MSrepl_queuedtraninfo (Transact-SQL) | Microsoft Docs"
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
  - "MSrepl_queuedtraninfo_TSQL"
  - "MSrepl_queuedtraninfo"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSrepl_queuedtraninfo system table"
ms.assetid: af7a5baf-32ea-475f-b6b9-68c557b4980c
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSrepl_queuedtraninfo (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSreplication_queuedtraninfo** table is used by the replication process to store information about the queued commands issued by all the queued updating subscriptions that are using SQL-based queued updating. This table is stored in the Subscription database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**publisher**|**sysname**|The name of the Publisher.|  
|**publisher_db**|**sysname**|The name of the publication database.|  
|**publication**|**sysname**|The name of the publication.|  
|**tranid**|**sysname**|The transaction ID under which the queued command was executed.|  
|**maxorderkey**|**bigint**|Internal-use only.|  
|**commandcount**|**bigint**|Internal-use only.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../relational-databases/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../relational-databases/system-views/replication-views-transact-sql.md)  
  
  