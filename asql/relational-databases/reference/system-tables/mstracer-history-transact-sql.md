---
title: "MStracer_history (Transact-SQL) | Microsoft Docs"
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
  - "MStracer_history"
  - "MStracer_history_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MStracer_history system table"
ms.assetid: 97237a0c-d574-4b17-8a94-1a8730b31d98
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# MStracer_history (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MStracer_history** table maintains a record of all tracer tokens that have been received at the Subscriber. This table is stored in the distribution database and is used by replication for performance monitoring.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**parent_tracer_id**|**int**|Uniquely identifies a tracer token.|  
|**agent_id**|**int**|Identifies the agent which handled the tracer token record.|  
|**subscriber_commit**|**datetime**|The date and time when the tracer token record was committed at the Subscriber.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/replication-views-transact-sql.md)  
  
  