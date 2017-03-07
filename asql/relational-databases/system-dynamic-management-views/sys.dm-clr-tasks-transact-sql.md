---
title: "sys.dm_clr_tasks (Transact-SQL) | Microsoft Docs"
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
  - "sys.dm_clr_tasks"
  - "sys.dm_clr_tasks_TSQL"
  - "dm_clr_tasks"
  - "dm_clr_tasks_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_clr_tasks dynamic management view"
ms.assetid: 462b9061-09fa-4858-9707-03d6cc19c769
caps.latest.revision: 21
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_clr_tasks (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a row for all common language runtime (CLR) tasks that are currently running. A [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] batch that contains a reference to a CLR routine creates a separate task for execution of all the managed code in that batch. Multiple statements in the batch that require managed code execution use the same CLR task. The CLR task is responsible for maintaining objects and state pertaining to managed code execution, as well as the transitions between the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and the common language runtime.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**task_address**|**varbinary(8)**|Address of the CLR task.|  
|**sos_task_address**|**varbinary(8)**|Address of the underlying [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] batch task.|  
|**appdomain_address**|**varbinary(8)**|Address of the application domain in which this task is running.|  
|**state**|**nvarchar(128)**|Current state of the task.|  
|**abort_state**|**nvarchar(128)**|State the abort is currently in (if the task was canceled) There are multiple states involved while aborting tasks.|  
|**type**|**nvarchar(128)**|Task type.|  
|**affinity_count**|**int**|Affinity of the task.|  
|**forced_yield_count**|**int**|Number of times the task was forced to yield.|  
  
## Permissions  
 On [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] requires VIEW SERVER STATE permission on the server.  
  
 On [!INCLUDE[ssSDS](../../analysis-services/multidimensional-models/includes/sssds-md.md)] Premium Tiers requires the VIEW DATABASE STATE permission in the database. On [!INCLUDE[ssSDS](../../analysis-services/multidimensional-models/includes/sssds-md.md)] Standard and Basic Tiers requires the [!INCLUDE[ssSDS](../../analysis-services/multidimensional-models/includes/sssds-md.md)] admin account.  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Common Language Runtime Related Dynamic Management Views &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/common-language-runtime-related-dynamic-management-views-transact-sql.md)  
  
  