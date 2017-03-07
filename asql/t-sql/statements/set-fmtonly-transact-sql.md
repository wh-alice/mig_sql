---
title: "SET FMTONLY (Transact-SQL) | Microsoft Docs"
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
  - "FMTONLY_TSQL"
  - "FMTONLY"
  - "SET FMTONLY"
  - "SET_FMTONLY_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "metadata [SQL Server], only metadata returned"
  - "SET FMTONLY statement"
  - "FMTONLY option"
ms.assetid: 02a1d9ac-2e58-433c-9a07-2c5a4a2214e1
caps.latest.revision: 48
ms.author: "rickbyh"
manager: "jhubbard"
---
# SET FMTONLY (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns only metadata to the client. Can be used to test the format of the response without actually running the query.  
  
> [!NOTE]  
>  Do not use this feature. This feature has been replaced by [sp_describe_first_result_set &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-describe-first-result-set-transact-sql.md), [sp_describe_undeclared_parameters &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-describe-undeclared-parameters-transact-sql.md), [sys.dm_exec_describe_first_result_set &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sys.dm-exec-describe-first-result-set-transact-sql.md), and [sys.dm_exec_describe_first_result_set_for_object &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sys.dm-exec-describe-first-result-set-for-object-transact-sql.md).  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
SET FMTONLY { ON | OFF }   
```  
  
## Remarks  
 No rows are processed or sent to the client because of the request when SET FMTONLY is turned ON.  
  
 The setting of SET FMTONLY is set at execute or run time and not at parse time.  
  
## Permissions  
 Requires membership in the public role.  
  
## Examples  
  
### A: View the column header information for a query without actually running the query.  
 The following example changes the `SET FMTONLY` setting to `ON` and executes a `SELECT` statement. The setting causes the statement to return the column information only; no rows of data are returned.  
  
```  
USE AdventureWorks2012;  
GO  
SET FMTONLY ON;  
GO  
SELECT *   
FROM HumanResources.Employee;  
GO  
SET FMTONLY OFF;  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### B. View the column header information for a query without actually running the query.  
 The following example shows how to return only the column header (metadata) information for a query. The batch begins with FMTONLY set to OFF and changes FMTONLY to ON before the SELECT statement. This causes the SELECT statement to return only the column headers; no rows of data are returned.  
  
```  
-- Uses AdventureWorks  
  
BEGIN  
    SET FMTONLY OFF;  
    SET DATEFORMAT mdy;  
    SET FMTONLY ON;  
    SELECT * FROM dbo.DimCustomer;  
    SET FMTONLY OFF;  
END  
  
```  
  
## See Also  
 [SET Statements &#40;Transact-SQL&#41;](../../t-sql/statements/set-statements-transact-sql.md)  
  
  

