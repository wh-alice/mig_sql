---
title: "DBCC FREEPROCCACHE (Azure SQL Data Warehouse, Parallel Data Warehouse) | Microsoft Docs"
ms.custom: ""
ms.date: "02/14/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: 24cba10d-e483-4f42-8f57-5c6f7b76ea4d
caps.latest.revision: 10
ms.author: "barbkess"
manager: "jhubbard"
robots: noindex,nofollow
---
# DBCC FREEPROCCACHE (Azure SQL Data Warehouse, Parallel Data Warehouse)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-asdw-pdw_md](../a9retired/includes/tsql-appliesto-xxxxxx-xxxx-asdw-pdw-md.md)]

  Removes all query plan cache entries for all databases from the Compute nodes. Use this statement to force [!INCLUDE[ssSDW](../a9retired/includes/sssdw-md.md)] or [!INCLUDE[ssPDW](../a9notintoc/includes/sspdw-md.md)] to recompile all queries the next time they are run.  
  
 For example, when an existing query plan was generated with out-of-date statistics, you can improve query performance by updating statistics and then recompiling the query. To force [!INCLUDE[ssSDW](../a9retired/includes/sssdw-md.md)] or [!INCLUDE[ssPDW](../a9notintoc/includes/sspdw-md.md)] to recompile the query instead of using the existing query plan, you can use DBCC FREEPROCCACHE to remove the existing query plans. Upon the next execution of the query, [!INCLUDE[ssSDW](../a9retired/includes/sssdw-md.md)] or [!INCLUDE[ssPDW](../a9notintoc/includes/sspdw-md.md)] will recompile the query with the latest statistics.  
  
 This topic applies to [!INCLUDE[ssSDW](../a9retired/includes/sssdw-md.md)] and [!INCLUDE[ssPDW](../a9notintoc/includes/sspdw-md.md)]. For [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)], see [DBCC FREEPROCCACHE &#40;Transact-SQL&#41;](../t-sql/database-console-commands/dbcc-freeproccache-transact-sql.md).  
  
 ![Topic link icon](../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions &#40;Transact-SQL&#41;](../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
DBCC FREEPROCCACHE ( COMPUTE | ALL )  
     [ WITH NO_INFOMSGS ]   
[;]  
  
```  
  
## Arguments  
 COMPUTE  
 Purge the query plan cache from each Compute node.  
  
 ALL  
 Purge the query plan cache from each Compute node and from the Control node. This is the default if you do not specify a value.  
  
 WITH NO_INFOMSGS  
 Results do not contain informational messages.  
  
## Permissions  
 Requires **ALTER SERVER STATE** permission.  
  
## General Remarks  
 Multiple DBCC FREEPROCCACHE commands can be run concurrently.  
  
 In [!INCLUDE[ssSDW](../a9retired/includes/sssdw-md.md)] or [!INCLUDE[ssPDW](../a9notintoc/includes/sspdw-md.md)], clearing the query plan cache can cause a temporary decrease in query performance when queries are recompiled. DBCC FREEPROCCACHE (COMPUTE) only causes [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] to recompile queries when they are run on the Compute nodes. It does not cause [!INCLUDE[ssSDW](../a9retired/includes/sssdw-md.md)] or [!INCLUDE[ssPDW](../a9notintoc/includes/sspdw-md.md)] to recompile the parallel query plan that is generated on the Control node.  
  
 DBCC FREEPROCCACHE can be cancelled during execution.  
  
## Error Handling  
 Errors are reported in the [sys.dm_pdw_errors &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-pdw-errors-transact-sql.md) system view.  
  
## Limitations and Restrictions  
 DBCC FREEPROCCACHE can not run within a transaction.  
  
 DBCC FREEPROCCAHCE is not supported in an EXPLAIN statement.  
  
## Metadata  
 A new row is added to the sys.pdw_exec_requests system view when DBCC FREEPROCCACHE is run.  
  
## Examples: [!INCLUDE[ssSDW](../a9retired/includes/sssdw-md.md)] and [!INCLUDE[ssPDW](../a9notintoc/includes/sspdw-md.md)]  
  
### A. DBCC FREEPROCCACHE Basic Syntax Examples  
 The following example removes all existing query plan caches from the Compute nodes. Although the context is set to UserDbSales, the Compute node query plan caches for all databases will will be removed. The WITH NO_INFOMSGS clause prevents informational messages from appearing in the results.  
  
```  
USE UserDbSales;  
DBCC FREEPROCCACHE (COMPUTE) WITH NO_INFOMSGS;  
```  
  
 The following example has the same results as the previous example, except that informational messages will show in the results.  
  
```  
USE UserDbSales;  
DBCC FREEPROCCACHE (COMPUTE);  
```  
  
 When informational messages are requested and the execution is successful, the query results will have one line per Compute node.  
  
### B. Granting Permission to run DBCC FREEPROCCACHE  
 The following example gives the login David permission to run DBCC FREEPROCCACHE.  
  
```  
GRANT ALTER SERVER STATE TO David;  
```  
  
  