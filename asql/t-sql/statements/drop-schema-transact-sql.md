---
title: "DROP SCHEMA (Transact-SQL) | Microsoft Docs"
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
  - "DROP SCHEMA"
  - "DROP_SCHEMA_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "deleting schemas"
  - "schemas [SQL Server], removing"
  - "DROP SCHEMA statement"
  - "dropping schemas"
  - "removing schemas"
ms.assetid: 874aa29e-c8ad-41e4-a672-900fdc58f1f6
caps.latest.revision: 51
ms.author: "rickbyh"
manager: "jhubbard"
---
# DROP SCHEMA (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Removes a schema from the database.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server and Azure SQL Database  
  
DROP SCHEMA  [ IF EXISTS ] schema_name  
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
DROP SCHEMA schema_name  
```  
  
## Arguments  
 *IF EXISTS*  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL15](../../a9notintoc/includes/sssql15-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 Conditionally drops the schema only if it already exists.  
  
 *schema_name*  
 Is the name by which the schema is known within the database.  
  
## Remarks  
 The schema that is being dropped must not contain any objects. If the schema contains objects, the DROP statement fails.  
  
 Information about schemas is visible in the [sys.schemas](../../relational-databases/reference/system-catalog-views/schemas-catalog-views-sys.schemas.md) catalog view.  
  
 **Caution** [!INCLUDE[ssCautionUserSchema](../../t-sql/statements/includes/sscautionuserschema-md.md)]  
  
## Permissions  
 Requires CONTROL permission on the schema or ALTER ANY SCHEMA permission on the database.  
  
## Examples  
 The following example starts with a single `CREATE SCHEMA` statement. The statement creates the schema `Sprockets` that is owned by `Krishna` and a table `Sprockets.NineProngs`, and then grants `SELECT` permission to `Anibal` and denies `SELECT` permission to `Hung-Fu`.  
  
```  
USE AdventureWorks2012;  
GO  
CREATE SCHEMA Sprockets AUTHORIZATION Krishna   
    CREATE TABLE NineProngs (source int, cost int, partnumber int)  
    GRANT SELECT TO Anibal   
    DENY SELECT TO Hung-Fu;  
GO  
```  
  
 The following statements drop the schema. Note that you must first drop the table that is contained by the schema.  
  
```  
DROP TABLE Sprockets.NineProngs;  
DROP SCHEMA Sprockets;  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../a9notintoc/includes/sspdw-md.md)]  
 The following example creates the schema `Sprockets` and a table `Sprockets.NineProngs`.  
  
```  
-- Uses AdventureWorks  
  
CREATE SCHEMA Sprockets;  
CREATE TABLE NineProngs (source int, cost int, partnumber int);  
GO  
```  
  
 The following statements drop the schema. Note that you must first drop the table that is contained by the schema.  
  
```  
DROP TABLE Sprockets.NineProngs;  
DROP SCHEMA Sprockets;  
GO  
```  
  
## See Also  
 [CREATE SCHEMA &#40;Transact-SQL&#41;](../../t-sql/statements/create-schema-transact-sql.md)   
 [ALTER SCHEMA &#40;Transact-SQL&#41;](../../t-sql/statements/alter-schema-transact-sql.md)   
 [DROP SCHEMA (Transact-SQL)](../../t-sql/statements/drop-schema-transact-sql.md)   
 [EVENTDATA &#40;Transact-SQL&#41;](../../t-sql/functions/eventdata-transact-sql.md)  
  
  

