---
title: "sys.dm_broker_activated_tasks (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.dm_broker_activated_tasks"
  - "sys.dm_broker_activated_tasks_TSQL"
  - "dm_broker_activated_tasks"
  - "dm_broker_activated_tasks_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_broker_activated_tasks dynamic management view"
ms.assetid: 17e6f87f-8f56-489d-9aed-216afc8ef310
caps.latest.revision: 22
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_broker_activated_tasks (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns a row for each stored procedure activated by Service Broker.  
 

|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**spid**|**int**|ID of the session of the activated stored procedure. NULLABLE.|  
|**database_id**|**smallint**|ID of the database in which the queue is defined. NULLABLE.|  
|**queue_id**|**int**|ID of the object of the queue for which the stored procedure was activated. NULLABLE.|  
|**procedure_name**|**nvarchar(650)**|Name of the activated stored procedure. NULLABLE.|  
|**execute_as**|**int**|ID of the user that the stored procedure runs as. NULLABLE.|  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## Physical Joins  
 ![Joins for sys.dm_broker_activated_tasks](../../relational-databases/system-dynamic-management-views/media/join-dm-broker-activated-tasks-1.gif "Joins for sys.dm_broker_activated_tasks")  
  
## Relationship Cardinalities  
  
|From|To|Relationship|  
|----------|--------|------------------|  
|dm_broker_activated_tasks.spid|dm_exec_sessions.session_id|One-to-one|  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Service Broker Related Dynamic Management Views &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/service-broker-related-dynamic-management-views-transact-sql.md)  
  
  