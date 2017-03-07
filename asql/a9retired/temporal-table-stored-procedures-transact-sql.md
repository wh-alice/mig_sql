---
title: "Temporal Table Stored Procedures (Transact-SQL) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-11-24"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: f28ca74e-7876-4592-b794-e78e3690fff6
caps.latest.revision: 7
ms.author: "carlrab"
manager: "jhubbard"
robots: noindex,nofollow
---
# Temporal Table Stored Procedures (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../a9notintoc/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  This section describes the stored procedures that are related to temporal tables.  
  
 **Applies to**: [!INCLUDE[ssSQL15](../a9notintoc/includes/sssql15-md.md)] through [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)]  
  
## In This Section
- [sp_cleanup_temporal_history](../relational-databases/reference/system-stored-procedures/temporal-table-sys.sp-cleanup-temporal-history.md)

  Removes all rows from temporal history table that match configured HISTORY_RETENTION PERIOD within a single transaction.  
- [sp_xtp_flush_temporal_history](../relational-databases/reference/system-stored-procedures/temporal-table-sp-xtp-flush-temporal-history.md)  

  Invokes the data flush task to move all committed rows from in-memory staging table to the disk-based history table.  
  
  