---
title: "trace_xe_action_map (Transact-SQL) | Microsoft Docs"
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
  - "trace_xe_action_map_TSQL"
  - "trace_xe_action_map"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "extended events [SQL Server], tables"
  - "trace_xe_action_map"
ms.assetid: 208a1413-ce7f-4521-b765-d74723627302
caps.latest.revision: 11
ms.author: "jhubbard"
manager: "jhubbard"
---
# Extended Events Tables - trace_xe_action_map
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Contains one row for each Extended Events action that is mapped to a SQL Trace column ID. This table is stored in the master database, in the sys schema.  
  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|trace_column_id|**smallint**|The ID of the SQL Trace column that is being mapped.|  
|package_name|**nvarchar(60)**|The name of the Extended Events package where the mapped action resides.|  
|xe_action_name|**nvarchar(60)**|The name of the Extended Events action that is mapped to the SQL Trace column.|  
  
## Remarks  
 You can use the following query to identify the Extended Events actions that are equivalent to the SQL Trace columns:  
  
```  
SELECT tc.name AS trace_column, am.package_name, am.xe_action_name  
FROM sys.trace_columns AS tc  
INNER JOIN sys.trace_xe_action_map AS am  
   ON tc.trace_column_id = am.trace_column_id  
```  
  
 SQL Trace columns that do not map to actions are not included in the table.  
  
## See Also  
 [trace_xe_event_map &#40;Transact-SQL&#41;](../Topic/trace_xe_event_map%20\(Transact-SQL\).md)  
  
  