---
title: "@@LOCK_TIMEOUT (Transact-SQL) | Microsoft Docs"
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
  - "@@LOCK_TIMEOUT"
  - "@@LOCK_TIMEOUT_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "timeout options [SQL Server], locks"
  - "@@LOCK_TIMEOUT function"
  - "current lock time-out setting"
  - "locking [SQL Server], time-outs"
ms.assetid: 6bf8bf97-60b8-40c1-b89d-8f5a00bcae2e
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# @@LOCK_TIMEOUT (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns the current lock time-out setting in milliseconds for the current session.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
@@LOCK_TIMEOUT  
```  
  
## Return Types  
 **integer**  
  
## Remarks  
 SET LOCK_TIMEOUT allows an application to set the maximum time that a statement waits on a blocked resource. When a statement has waited longer than the LOCK_TIMEOUT setting, the blocked statement is automatically canceled, and an error message is returned to the application.  
  
 @@LOCK_TIMEOUT returns a value of -1 if SET LOCK_TIMEOUT has not yet been run in the current session.  
  
## Examples  
 This example shows the result set when a LOCK_TIMEOUT value is not set.  
  
```  
SELECT @@LOCK_TIMEOUT AS [Lock Timeout];  
GO  
```  
  
 Here is the result set:  
  
```  
Lock Timeout  
------------  
-1  
```  
  
 This example sets LOCK_TIMEOUT to 1800 milliseconds and then calls @@LOCK_TIMEOUT.  
  
```  
SET LOCK_TIMEOUT 1800;  
SELECT @@LOCK_TIMEOUT AS [Lock Timeout];  
GO  
```  
  
 Here is the result set:  
  
```  
Lock Timeout  
------------  
1800          
```  
  
## See Also  
 [Configuration Functions &#40;Transact-SQL&#41;](../../t-sql/functions/configuration-functions-transact-sql.md)   
 [SET LOCK_TIMEOUT &#40;Transact-SQL&#41;](../../t-sql/statements/set-lock-timeout-transact-sql.md)  
  
  