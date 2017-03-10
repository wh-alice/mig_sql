---
title: "sys.sp_xtp_control_query_exec_stats (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2015-10-13"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.sp_xtp_control_query_exec_stats_TSQL"
  - "sys.sp_xtp_control_query_exec_stats"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.sp_xtp_control_query_exec_stats"
ms.assetid: 4838125d-ad1e-479e-b7d2-42655e8f4f02
caps.latest.revision: 16
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.sp_xtp_control_query_exec_stats (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2014-xxxx-xxxx-xxx_md](../../../integration-services/includes/tsql-appliesto-ss2014-xxxx-xxxx-xxx-md.md)]

  Enables per query statistics collection for all natively compiled stored procedures for the instance, or specific natively compiled stored procedures.  
  
 Performance decreases when you enable statistics collection. If you only need to troubleshoot one, or a few natively compiled stored procedures, you can enabling statistics collection for just those few natively compiled stored procedures.  
  
 To enable statistics collection at the procedure level for all natively compiled stored procedures, see [sys.sp_xtp_control_proc_exec_stats &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sys.sp-xtp-control-proc-exec-stats-transact-sql.md).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL14](../../../analysis-services/includes/sssql14-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
## Syntax  
  
```  
sp_xtp_control_query_exec_stats [ [ @new_collection_value = ] collection_value ],  
[ [ @database_id = ] database_id   
[ , [ @xtp_object_id = ] procedure_id ] ,   
[ @old_collection_value] ]  
```  
  
## Arguments  
 @new_collection_value = *value*  
 Determines whether procedure-level statistics collection is on (1) or off (0).  
  
 @new_collection_value is set to zero when [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] starts.  
  
 @database_id = = *database_id*, @xtp_object_id = *procedure_id*  
 The database ID and object ID for the natively compiled stored procedure. If statistics collection is enabled for the instance ([sys.sp_xtp_control_proc_exec_stats &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sys.sp-xtp-control-proc-exec-stats-transact-sql.md)), statistics on a natively compiled stored procedure are collected. Turning off statistics collection on the instance does not turn off statistics collection for individual natively compiled stored procedures.  
  
 Use [sys.databases &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.databases-transact-sql.md), [sys.procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.procedures-transact-sql.md), [DB_ID &#40;Transact-SQL&#41;](../../../t-sql/functions/db-id-transact-sql.md), or [OBJECT_ID &#40;Transact-SQL&#41;](../../../t-sql/functions/object-id-transact-sql.md) to get IDs for a database and stored procedure.  
  
 @old_collection_value = *value*  
 Returns the current status.  
  
## Return Code  
 0 for success. Nonzero for failure.  
  
## Permissions  
 Requires membership in the fixed sysadmin role.  
  
## Code Sample  
 The following code sample shows how to enable statistics collection for all natively compiled stored procedures for the instance and then for a specific natively compiled stored procedure.  
  
```  
DECLARE @c bit  
  
EXEC [sys].[sp_xtp_control_query_exec_stats] @new_collection_value = 1;  
  
EXEC sp_xtp_control_query_exec_stats @old_collection_value=@c output;  
SELECT @c AS 'collection status';  
  
EXEC [sys].[sp_xtp_control_query_exec_stats] @new_collection_value = 1,   
@database_id = 5, @xtp_object_id = 341576255;  
  
EXEC sp_xtp_control_query_exec_stats @database_id = 5,   
@xtp_object_id = 341576255, @old_collection_value=@c output;  
  
SELECT @c AS 'collection status';  
```  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [In-Memory OLTP &#40;In-Memory Optimization&#41;](../../../relational-databases/in-memory-oltp/in-memory-oltp-in-memory-optimization.md)  
  
  