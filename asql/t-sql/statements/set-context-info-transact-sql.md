---
title: "SET CONTEXT_INFO (Transact-SQL) | Microsoft Docs"
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
  - "SET_CONTEXT_INFO_TSQL"
  - "SET CONTEXT_INFO"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "context information [SQL Server]"
  - "CONTEXT_INFO option"
  - "SET CONTEXT_INFO statement"
ms.assetid: a0b7b9f3-dbda-4350-a274-bd9ecd5c0a74
caps.latest.revision: 28
ms.author: "rickbyh"
manager: "jhubbard"
---
# SET CONTEXT_INFO (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Associates up to 128 bytes of binary information with the current session or connection.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
SET CONTEXT_INFO { binary_str | @binary_var }  
```  
  
## Arguments  
 *binary_str*  
 Is a **binary** constant, or a constant that is implicitly convertible to **binary**, to associate with the current session or connection.  
  
 **@** *binary_var*  
 Is a **varbinary** or **binary** variable holding a context value to associate with the current session or connection.  
  
## Remarks  
 The preferred way to retrieve the context information for the current session is to use the CONTEXT_INFO function. Session context information is also stored in the **context_info** columns in the following system views:  
  
-   **sys.dm_exec_requests**  
  
-   **sys.dm_exec_sessions**  
  
-   **sys.sysprocesses**  
  
 SET CONTEXT_INFO cannot be specified in a user-defined function. You cannot supply a null value to SET CONTEXT_INFO because the views holding the values do not allow for null values.  
  
 SET CONTEXT_INFO does not accept expressions other than constants or variable names. To set the context information to the result of a function call, you must first include the result of the function call in a **binary** or **varbinary** variable.  
  
 When you issue SET CONTEXT_INFO in a stored procedure or trigger, unlike in other SET statements, the new value set for the context information persists after the stored procedure or trigger is completed.  
  
## Examples  
  
### A. Setting context information by using a constant  
 The following example demonstrates `SET CONTEXT_INFO` by setting the value and displaying the results. Note that querying `sys.dm_exec_sessions` requires SELECT and VIEW SERVER STATE permissions, whereas using the CONTEXT_INFO function does not.  
  
```  
SET CONTEXT_INFO 0x01010101;  
GO  
SELECT context_info   
FROM sys.dm_exec_sessions  
WHERE session_id = @@SPID;  
GO  
```  
  
### B. Setting context information by using a function  
 The following example demonstrates using the output of a function to set the context value, where the value from the function must be first placed in a **binary** variable.  
  
```  
DECLARE @BinVar varbinary(128);  
SET @BinVar = CAST(REPLICATE( 0x20, 128 ) AS varbinary(128) );  
SET CONTEXT_INFO @BinVar;  
  
SELECT CONTEXT_INFO() AS MyContextInfo;  
GO  
```  
  
## See Also  
 [SET Statements &#40;Transact-SQL&#41;](../../t-sql/statements/set-statements-transact-sql.md)   
 [sys.dm_exec_requests &#40;Transact-SQL&#41;](../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-requests-transact-sql.md)   
 [sys.dm_exec_sessions &#40;Transact-SQL&#41;](../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-sessions-transact-sql.md)   
 [CONTEXT_INFO  &#40;Transact-SQL&#41;](../../t-sql/functions/context-info-transact-sql.md)  
  
  