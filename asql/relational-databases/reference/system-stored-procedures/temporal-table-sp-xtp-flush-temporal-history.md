---
title: "sp_xtp_flush_temporal_history | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-02-21"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server (starting with 2016 CTP3)"
f1_keywords: 
  - "sp_xtp_flush_temporal_history"
  - "sp_xtp_flush_temporal_history_TSQL"
  - "sys.sp_xtp_flush_temporal_history"
  - "sys.sp_xtp_flush_temporal_history_TSQL"
helpviewer_keywords: 
  - "sp_xtp_flush_temporal_history"
ms.assetid: 322e3170-93f8-468a-a123-104ce7bd7fad
caps.latest.revision: 7
ms.author: "carlrab"
manager: "jhubbard"
---
# Temporal Table - sp_xtp_flush_temporal_history
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  Invokes the data flush task to move all committed rows from in-memory staging table to the disk-based history table.  

 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sys.sp_xtp_flush_temporal_history @schema_name, @object_name  
  
```  
  
## Arguments  
 *@schema_name*  
 The schema name for the current or temporal table  
  
 *@object_name*  
 The name of the current or temporal table  
  
## Return Code Values  
 0 (success) or >0 (failure)  
  
## Permissions  
 Requires db_owner permissions.  
  
## See Also  
 [Performance Considerations with Memory-Optimized System-Versioned Temporal Tables](../../../relational-databases/tables/memory-optimized-system-versioned-temporal-tables-performance.md)  
  
  