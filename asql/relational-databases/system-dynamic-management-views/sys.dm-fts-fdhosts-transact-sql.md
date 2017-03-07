---
title: "sys.dm_fts_fdhosts (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "dm_fts_fdhosts"
  - "dm_fts_fdhosts_TSQL"
  - "sys.dm_fts_fdhosts"
  - "sys.dm_fts_fdhosts_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_fts_fdhosts dynamic management view"
  - "troubleshooting [SQL Server], full-text search"
ms.assetid: d42a6334-4362-4361-83da-f8324fe55ec7
caps.latest.revision: 13
ms.author: "douglasl"
manager: "jhubbard"
---
# sys.dm_fts_fdhosts (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns information on the current activity of the filter daemon host or hosts on the server instance.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**fdhost_id**|**int**|ID of the filter daemon host.|  
|**fdhost_name**|**nvarchar(120)**|Name of filter daemon host.|  
|**fdhost_process_id**|**int**|Windows process ID of the filter daemon host.|  
|**fdhost_type**|**nvarchar(120)**|Type of document being processed by the filter daemon host, one of:<br /><br /> Single thread<br /><br /> Multi-thread<br /><br /> Huge document|  
|**max_thread**|**int**|Maximum number of threads in the filter daemon host.|  
|**batch_count**|**int**|Number of batches that are being processed in the filter daemon host.|  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## Examples  
 The following example returns the name of the filter daemon host and the maximum number of threads in it. It also monitors how many batches are currently being processed in the filter daemon. This information can be used to diagnose performance.  
  
```  
SELECT fdhost_name, batch_count, max_thread FROM sys.dm_fts_fdhosts;  
GO  
```  
  
## See Also  
 [Full-Text Search and Semantic Search Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/199dbd5a-29f6-4ef0-8e65-86e32c0aaa3a.md)   
 [Full-Text Search](../../relational-databases/search/full-text-search.md)  
  
  