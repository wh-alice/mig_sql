---
title: "TYPE_ID (Transact-SQL) | Microsoft Docs"
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
  - "TYPE_ID"
  - "TYPE_ID_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "IDs [SQL Server], types"
  - "TYPE_ID function"
  - "type IDs [SQL Server]"
  - "data types [SQL Server], IDs"
ms.assetid: 647d17ef-b878-4922-b446-56642322ebad
caps.latest.revision: 42
ms.author: "rickbyh"
manager: "jhubbard"
---
# TYPE_ID (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the ID for a specified data type name.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
TYPE_ID ( [ schema_name ] type_name )   
```  
  
## Arguments  
 *type_name*  
 Is the name of the data type. *type_name* is of type **nvarchar**. *type_name* can be a system or user-defined data type.  
  
## Return Types  
 **int**  
  
## Exceptions  
 Returns NULL on error or if a caller does not have permission to view the object.  
  
 In [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], a user can only view the metadata of securables that the user owns or on which the user has been granted permission. This means that metadata-emitting, built-in functions such as TYPE_ID may return NULL if the user does not have any permission on the object. For more information, see [Metadata Visibility Configuration](../../relational-databases/security/metadata-visibility-configuration.md).  
  
## Remarks  
 TYPE_ID returns NULL if the type name is not valid, or if the caller does not have sufficient permission to reference the type.  
  
## Examples  
  
### A. Looking up the TYPE ID values for single- and two-part type names  
 The following example returns type ID for single- and two-part type names.  
  
```  
USE tempdb;  
GO  
CREATE TYPE NewType FROM int;  
GO  
CREATE SCHEMA NewSchema;  
GO  
CREATE TYPE NewSchema.NewType FROM int;  
GO  
SELECT TYPE_ID('NewType') AS [1 Part Data Type ID],  
       TYPE_ID('NewSchema.NewType') AS [2 Part Data Type ID];  
GO  
```  
  
### B. Looking up the TYPE ID of a system data type  
 The following example returns the `TYPE ID` for the `datetime` system data type.  
  
```  
SELECT TYPE_NAME(TYPE_ID('datetime')) AS [TYPE_NAME]  
    ,TYPE_ID('datetime') AS [TYPE_ID];  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../a9notintoc/includes/sspdw-md.md)]  
  
### C: Looking up the TYPE ID of a system data type  
 The following example returns the `TYPE ID` for the `datetime` system data type.  
  
```  
SELECT TYPE_NAME(TYPE_ID('datetime')) AS typeName,   
    TYPE_ID('datetime') AS typeID FROM table1;  
```  
  
## See Also  
 [TYPE_NAME &#40;Transact-SQL&#41;](../../t-sql/functions/type-name-transact-sql.md)   
 [TYPEPROPERTY &#40;Transact-SQL&#41;](../../t-sql/functions/typeproperty-transact-sql.md)   
 [sys.types &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.types-transact-sql.md)   
 [Metadata Functions &#40;Transact-SQL&#41;](../../t-sql/functions/metadata-functions-transact-sql.md)  
  
  

