---
title: "MSsub_identity_range (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
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
  - "MSsub_identity_range_TSQL"
  - "MSsub_identity_range"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSsub_identity_range system table"
ms.assetid: 26e20d28-14ed-44fc-af3b-4de386de4bb8
caps.latest.revision: 26
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSsub_identity_range (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSsub_identity_range** table provides identity range management support for subscriptions. This table is stored in the subscription databases.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**objid**|**int**|The ID of the table that has the identity column being managed by replication.|  
|**range**|**bigint**|Controls the range size of the consecutive identity values that would be assigned at the Subscriber in an adjustment.|  
|**last_seed**|**bigint**|The lower bound of the current range.|  
|**threshold**|**int**|The percentage value that controls when the Distribution Agent assigns a new identity range. When the percentage of values specified in *threshold* is used, the Distribution Agent creates a new identity range.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../relational-databases/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../relational-databases/system-views/replication-views-transact-sql.md)  
  
  