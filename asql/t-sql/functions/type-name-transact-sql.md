---
title: "TYPE_NAME (Transact-SQL) | Microsoft Docs"
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
  - "TYPE_NAME_TSQL"
  - "TYPE_NAME"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "names [SQL Server], data types"
  - "unqualified type names"
  - "type names [SQL Server]"
  - "data types [SQL Server], names"
  - "TYPE_NAME function"
ms.assetid: e4075a2e-5f70-440f-986b-9ec8434e07c1
caps.latest.revision: 42
ms.author: "rickbyh"
manager: "jhubbard"
---
# TYPE_NAME (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the unqualified type name of a specified type ID.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
TYPE_NAME ( type_id )   
```  
  
## Arguments  
 *type_id*  
 Is the ID of the type that will be used. *type_id* is an **int**, and it can refer to a type in any schema that the caller has permission to access.  
  
## Return Types  
 **sysname**  
  
## Exceptions  
 Returns NULL on error or if a caller does not have permission to view the object.  
  
 In [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], a user can only view the metadata of securables that the user owns or on which the user has been granted permission. This means that metadata-emitting, built-in functions such as TYPE_NAME may return NULL if the user does not have any permission on the object. For more information, see [Metadata Visibility Configuration](../../relational-databases/security/metadata-visibility-configuration.md).  
  
## Remarks  
 TYPE_NAME will return NULL when *type_id* is not valid or when the caller does not have sufficient permission to reference the type.  
  
 TYPE_NAME works for system data types and also for user-defined data types. The type can be contained in any schema, but an unqualified type name is always returned. This means the name does not have the *schema***.** prefix.  
  
 System functions can be used in the select list, in the WHERE clause, and anywhere an expression is allowed. For more information, see [Expressions &#40;Transact-SQL&#41;](../../t-sql/language-elements/expressions-transact-sql.md) and [WHERE &#40;Transact-SQL&#41;](../../t-sql/queries/where-transact-sql.md).  
  
## Examples  
 The following example returns the object name, column name, and type name for each column in the `Vendor` table of the [!INCLUDE[ssSampleDBobject](../../a9retired/includes/sssampledbobject-md.md)] database.  
  
```  
SELECT o.name AS obj_name, c.name AS col_name,  
       TYPE_NAME(c.user_type_id) AS type_name  
FROM sys.objects AS o   
JOIN sys.columns AS c  ON o.object_id = c.object_id  
WHERE o.name = 'Vendor'  
ORDER BY col_name;  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `obj_name        col_name                  type_name`  
  
 `--------------- ------------------------ --------------`  
  
 `Vendor          AccountNumber            AccountNumber`  
  
 `Vendor          ActiveFlag               Flag`  
  
 `Vendor          BusinessEntityID         int`  
  
 `Vendor          CreditRating             tinyint`  
  
 `Vendor          ModifiedDate             datetime`  
  
 `Vendor          Name                     Name`  
  
 `Vendor          PreferredVendorStatus    Flag`  
  
 `Vendor          PurchasingWebServiceURL  nvarchar`  
  
 `(8 row(s) affected)`  
  
## Examples: [!INCLUDE[ssSDWfull](../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../a9notintoc/includes/sspdw-md.md)]  
 The following example returns the `TYPE ID` for the data type with id `1`.  
  
```  
SELECT TYPE_NAME(36) AS Type36, TYPE_NAME(239) AS Type239;  
GO  
```  
  
 For a list of types, query sys.types.  
  
```  
SELECT * FROM sys.types;  
GO  
```  
  
## See Also  
 [TYPE_ID &#40;Transact-SQL&#41;](../../t-sql/functions/type-id-transact-sql.md)   
 [TYPEPROPERTY &#40;Transact-SQL&#41;](../../t-sql/functions/typeproperty-transact-sql.md)   
 [sys.types &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.types-transact-sql.md)   
 [Metadata Functions &#40;Transact-SQL&#41;](../../t-sql/functions/metadata-functions-transact-sql.md)  
  
  

