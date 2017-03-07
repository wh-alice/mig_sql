---
title: "sys.dm_tran_commit_table (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "dm_tran_commit_table"
  - "dm_tran_commit_table_TSQL"
  - "sys.dm_tran_commit_table"
  - "sys.dm_tran_commit_table_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_tran_commit_table dynamic management view"
ms.assetid: 732d23c5-1f6c-4e96-bc85-8f29b520cf0e
caps.latest.revision: 17
ms.author: "rickbyh"
manager: "jhubbard"
---
# Change Tracking - sys.dm_tran_commit_table
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Displays one row for each transaction that is committed for a table that is tracked by [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] change tracking. The sys.dm_tran_commit_table management view, which is provided for supportability purposes and exposes the transaction-related information that change tracking stores in the sys.syscommittab system table. The sys.syscommittab table provides an efficient persistent mapping from a database-specific transaction ID to the transaction's commit log sequence number (LSN) and commit timestamp. The data that is stored in the sys.syscommittab table and exposed in this management view is subject to cleanup according to the retention period specified when change tracking was configured.  
  
> [!NOTE]  
>  To call this from [!INCLUDE[ssSDWfull](../../../a9notintoc/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_tran_commit_table**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|commit_ts|**bigint**|A monotonically increasing number that serves as a database-specific timestamp for each committed transaction.|  
|xdes_id|**bigint**|A database-specific internal ID for the transaction.|  
|commit_lbn|**bigint**|The number of the log block that contains the commit log record for the transaction.|  
|commit_csn|**bigint**|The instance-specific commit sequence number for the transaction.|  
|commit_time|**smalldatetime**|The time when the transaction was committed.|  
|pdw_node_id|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../../a9notintoc/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [About Change Tracking &#40;SQL Server&#41;](../../../relational-databases/track-changes/about-change-tracking-sql-server.md)  
  
  

