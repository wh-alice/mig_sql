---
title: "sp_recompile (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_recompile_TSQL"
  - "sp_recompile"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_recompile"
ms.assetid: 6192ca87-febd-4075-8199-14b4fa609b8c
caps.latest.revision: 36
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_recompile (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Causes stored procedures, triggers, and user-defined functions to be recompiled the next time that they are run. It does this by dropping the existing plan from the procedure cache forcing a new plan to be created the next time that the procedure or trigger is run. In a [!INCLUDE[ssSqlProfiler](../../../a9retired/includes/sssqlprofiler-md.md)] collection, the event SP:CacheInsert is logged instead of the event SP:Recompile.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)].|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```tsql  
  
sp_recompile [ @objname = ] 'object'  
```  
  
## Arguments  
 [ @objname= ] '*object*'  
 The qualified or unqualified name of a stored procedure, trigger, table, view, or user-defined function in the current database. *object* is **nvarchar(776)**, with no default. If *object* is the name of a stored procedure, trigger, or user-defined function, the stored procedure, trigger, or function will be recompiled the next time that it is run. If *object* is the name of a table or view, all the stored procedures, triggers, or user-defined functions that reference the table or view will be recompiled the next time that they are run.  
  
## Return Code Values  
 0 (success) or a nonzero number (failure)  
  
## Remarks  
 sp_recompile looks for an object in the current database only.  
  
 The queries used by stored procedures, or triggers, and user-defined functions are optimized only when they are compiled. As indexes or other changes that affect statistics are made to the database, compiled stored procedures, triggers, and user-defined functions may lose efficiency. By recompiling stored procedures and triggers that act on a table, you can reoptimize the queries.  
  
> [!NOTE]  
>  [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] automatically recompiles stored procedures, triggers, and user-defined functions when it is advantageous to do this.  
  
## Permissions  
 Requires ALTER permission on the specified object.  
  
## Examples  
 The following example causes stored procedures, triggers, and user-defined functions that act on the `Customer` table to be recompiled the next time that they are run.  
  
```  
USE AdventureWorks2012;  
GO  
EXEC sp_recompile N'Sales.Customer';  
GO  
```  
  
## See Also  
 [CREATE PROCEDURE &#40;Transact-SQL&#41;](../../../t-sql/statements/create-procedure-transact-sql.md)   
 [CREATE TRIGGER &#40;Transact-SQL&#41;](../../../t-sql/statements/create-trigger-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  