---
title: "DROP TYPE (Transact-SQL) | Microsoft Docs"
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
  - "DROP TYPE"
  - "DROP_TYPE_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "user-defined types [SQL Server], deleting"
  - "UDTs [SQL Server], deleting"
  - "alias data types [SQL Server], removing"
  - "DROP TYPE statement"
ms.assetid: 11bf83f9-0718-4238-a835-83d2eb14ae7b
caps.latest.revision: 41
ms.author: "rickbyh"
manager: "jhubbard"
---
# DROP TYPE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Removes an alias data type or a common language runtime (CLR) user-defined type from the current database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
DROP TYPE [ IF EXISTS ] [ schema_name. ] type_name [ ; ]  
```  
  
## Arguments  
 *IF EXISTS*  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 Conditionally drops the type only if it already exists.  
  
 *schema_name*  
 Is the name of the schema to which the alias or user-defined type belongs.  
  
 *type_name*  
 Is the name of the alias data type or the user-defined type you want to drop.  
  
## Remarks  
 The DROP TYPE statement will not execute when any of the following is true:  
  
-   There are tables in the database that contain columns of the alias data type or the user-defined type. Information about alias or user-defined type columns can be obtained by querying the [sys.columns](../../relational-databases/reference/system-catalog-views/sys.columns-transact-sql.md) or [sys.column_type_usages](../../relational-databases/reference/system-catalog-views/sys.column-type-usages-transact-sql.md) catalog views.  
  
-   There are computed columns, CHECK constraints, schema-bound views, and schema-bound functions whose definitions reference the alias or user-defined type. Information about these references can be obtained by querying the [sys.sql_expression_dependencies](../../relational-databases/reference/system-catalog-views/sys.sql-expression-dependencies-transact-sql.md) catalog view.  
  
-   There are functions, stored procedures, or triggers created in the database, and these routines use variables and parameters of the alias or user-defined type. Information about alias or user-defined type parameters can be obtained by querying the [sys.parameters](../../relational-databases/reference/system-catalog-views/sys.parameters-transact-sql.md) or [sys.parameter_type_usages](../../relational-databases/reference/system-catalog-views/sys.parameter-type-usages-transact-sql.md) catalog views.  
  
## Permissions  
 Requires either CONTROL permission on *type_name* or ALTER permission on *schema_name*.  
  
## Examples  
 The following example assumes a type named `ssn` is already created in the current database.  
  
```  
DROP TYPE ssn ;  
```  
  
## See Also  
 [CREATE TYPE &#40;Transact-SQL&#41;](../../t-sql/statements/create-type-transact-sql.md)   
 [EVENTDATA &#40;Transact-SQL&#41;](../../t-sql/functions/eventdata-transact-sql.md)  
  
  