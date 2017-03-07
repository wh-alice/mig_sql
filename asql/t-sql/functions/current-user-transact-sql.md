---
title: "CURRENT_USER (Transact-SQL) | Microsoft Docs"
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
  - "CURRENT_USER"
  - "CURRENT_USER_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "usernames [SQL Server]"
  - "current user names"
  - "niladic functions"
  - "CURRENT_USER"
  - "users [SQL Server], names"
ms.assetid: 29248949-325b-4063-9f55-5a445fb35c6e
caps.latest.revision: 43
ms.author: "rickbyh"
manager: "jhubbard"
---
# CURRENT_USER (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the name of the current user. This function is equivalent to USER_NAME().  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
CURRENT_USER  
```  
  
## Return Types  
 **sysname**  
  
## Remarks  
 CURRENT_USER returns the name of the current security context. If CURRENT_USER is executed after a call to EXECUTE AS switches context, CURRENT_USER will return the name of the impersonated context. If a Windows principal accessed the database by way of membership in a group, the name of the Windows principal will be returned instead of the name of the group.  
  
 To return the login of the current user, see [SUSER_NAME &#40;Transact-SQL&#41;](../../t-sql/functions/suser-name-transact-sql.md) and [SYSTEM_USER &#40;Transact-SQL&#41;](../../t-sql/functions/system-user-transact-sql.md).  
  
## Examples  
  
### A. Using CURRENT_USER to return the current user name  
 The following example returns the name of the current user.  
  
```  
SELECT CURRENT_USER;  
GO  
```  
  
### B. Using CURRENT_USER as a DEFAULT constraint  
 The following example creates a table that uses `CURRENT_USER` as a `DEFAULT` constraint for the `order_person` column on a sales row.  
  
```  
USE AdventureWorks2012;  
GO  
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES  
      WHERE TABLE_NAME = 'orders22')  
   DROP TABLE orders22;  
GO  
SET NOCOUNT ON;  
CREATE TABLE orders22  
(  
 order_id int IDENTITY(1000, 1) NOT NULL,  
 cust_id  int NOT NULL,  
 order_date smalldatetime NOT NULL DEFAULT GETDATE(),  
 order_amt money NOT NULL,  
 order_person char(30) NOT NULL DEFAULT CURRENT_USER  
);  
GO  
```  
  
 The following code inserts a record in the table. The user that is executing these statements is named `Wanida`.  
  
```  
INSERT orders22 (cust_id, order_amt)  
VALUES (5105, 577.95);  
GO  
SET NOCOUNT OFF;  
GO  
```  
  
 The following query selects all information from the `orders22` table.  
  
```  
SELECT * FROM orders22;  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `order_id    cust_id     order_date           order_amt    order_person`  
  
 `----------- ----------- -------------------- ------------ ------------`  
  
 `1000        5105        2005-04-03 23:34:00  577.95       Wanida`  
  
 `(1 row(s) affected)`  
  
### C. Using CURRENT_USER from an impersonated context  
 In the following example, user `Wanida` executes the following [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] code.  
  
```  
SELECT CURRENT_USER;  
GO  
EXECUTE AS USER = 'Arnalfo';  
GO  
SELECT CURRENT_USER;  
GO  
REVERT;  
GO  
SELECT CURRENT_USER;  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `Wanida`  
  
 `Arnalfo`  
  
 `Wanida`  
  
## Examples: [!INCLUDE[ssSDWfull](../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../a9notintoc/includes/sspdw-md.md)]  
  
### D: Using CURRENT_USER to return the current user name  
 The following example returns the name of the current user.  
  
```  
SELECT CURRENT_USER;  
```  
  
## See Also  
 [USER_NAME &#40;Transact-SQL&#41;](../../t-sql/functions/user-name-transact-sql.md)   
 [SYSTEM_USER &#40;Transact-SQL&#41;](../../t-sql/functions/system-user-transact-sql.md)   
 [sys.database_principals &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.database-principals-transact-sql.md)   
 [ALTER TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-table-transact-sql.md)   
 [CREATE TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/create-table-transact-sql.md)   
 [System Functions &#40;Transact-SQL&#41;](../../relational-databases/reference/system-functions/system-functions-transact-sql.md)  
  
  

