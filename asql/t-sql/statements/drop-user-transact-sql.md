---
title: "DROP USER (Transact-SQL) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2015-10-28"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "DROP_USER_TSQL"
  - "DROP USER"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "dropping users"
  - "DROP USER statement"
  - "deleting users"
  - "database user removal [SQL Server]"
  - "removing users"
  - "users [SQL Server], removing"
ms.assetid: d6e0e21a-7568-4321-b6d6-bcfba183a719
caps.latest.revision: 43
ms.author: "rickbyh"
manager: "jhubbard"
---
# DROP USER (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Removes a user from the current database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server and Azure SQL Database  
  
DROP USER [ IF EXISTS ] user_name  
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
DROP USER user_name  
```  
  
## Arguments  
 *IF EXISTS*  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 Conditionally drops the user only if it already exists.  
  
 *user_name*  
 Specifies the name by which the user is identified inside this database.  
  
## Remarks  
 Users that own securables cannot be dropped from the database. Before dropping a database user that owns securables, you must first drop or transfer ownership of those securables.  
  
 The guest user cannot be dropped, but guest user can be disabled by revoking its CONNECT permission by executing REVOKE CONNECT FROM GUEST within any database other than master or tempdb.  
  
> [!CAUTION]  
>  [!INCLUDE[ssCautionUserSchema](../../t-sql/statements/includes/sscautionuserschema-md.md)]  
  
## Permissions  
 Requires ALTER ANY USER permission on the database.  
  
## Examples  
 The following example removes database user `AbolrousHazem` from the `AdventureWorks2012` database.  
  
```  
USE AdventureWorks2012;  
DROP USER AbolrousHazem;  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 The following example removes database user `AbolrousHazem` from the `AdventureWorks2008R2` database.  
  
```  
-- Uses AdventureWorks  
  
DROP USER AbolrousHazem;  
GO  
```  
  
## See Also  
 [CREATE USER &#40;Transact-SQL&#41;](../../t-sql/statements/create-user-transact-sql.md)   
 [ALTER USER &#40;Transact-SQL&#41;](../../t-sql/statements/alter-user-transact-sql.md)   
 [EVENTDATA &#40;Transact-SQL&#41;](../../t-sql/functions/eventdata-transact-sql.md)  
  
  

