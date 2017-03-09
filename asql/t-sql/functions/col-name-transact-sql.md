---
title: "COL_NAME (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "COL_NAME"
  - "COL_NAME_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "column properties [SQL Server]"
  - "COL_NAME function"
  - "column names [SQL Server]"
  - "names [SQL Server], columns"
ms.assetid: 214144ab-f2bc-4052-83cf-caf0a85c4cc6
caps.latest.revision: 28
ms.author: "rickbyh"
manager: "jhubbard"
---
# COL_NAME (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the name of a column from a specified corresponding table identification number and column identification number.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
COL_NAME ( table_id , column_id )  
```  
  
## Arguments  
 *table_id*  
 Is the identification number of the table that contains the column. *table_id* is of type **int**.  
  
 *column_id*  
 Is the identification number of the column. *column_id* parameter is of type **int**.  
  
## Return Types  
 **sysname**  
  
## Exceptions  
 Returns NULL on error or if a caller does not have permission to view the object.  
  
 A user can only view the metadata of securables that the user owns or on which the user has been granted permission. This means that metadata-emitting, built-in functions such as COL_NAME may return NULL if the user does not have any permission on the object. For more information, see [Metadata Visibility Configuration](../../relational-databases/security/metadata-visibility-configuration.md).  
  
## Remarks  
 The *table_id* and *column_id* parameters together produce a column name string.  
  
 For more information about obtaining table and column identification numbers, see [OBJECT_ID &#40;Transact-SQL&#41;](../../t-sql/functions/object-id-transact-sql.md).  
  
## Examples  
 The following example returns the name of the first column in the `Employee` table of the `AdventureWorks2012` database.  
  
```  
USE AdventureWorks2012;  
GO  
SET NOCOUNT OFF;  
GO  
SELECT COL_NAME(OBJECT_ID('HumanResources.Employee'), 1) AS 'Column Name';  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `Column Name`  
  
 -----------------\-  
  
 `BusinessEntityID`  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 The following example returns the name of the first column in a sample `Employee` table.  
  
```  
-- Uses AdventureWorks  
  
SELECT COL_NAME(OBJECT_ID('dbo.FactResellerSales'), 1) AS FirstColumnName,  
COL_NAME(OBJECT_ID('dbo.FactResellerSales'), 2) AS SecondColumnName;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
ColumnName          
------------   
BusinessEntityID  
```  
  
## See Also  
 [Expressions &#40;Transact-SQL&#41;](../../t-sql/language-elements/expressions-transact-sql.md)   
 [Metadata Functions &#40;Transact-SQL&#41;](../../t-sql/functions/metadata-functions-transact-sql.md)   
 [COLUMNPROPERTY &#40;Transact-SQL&#41;](../../t-sql/functions/columnproperty-transact-sql.md)   
 [COL_LENGTH &#40;Transact-SQL&#41;](../../t-sql/functions/col-length-transact-sql.md)  
  
  

