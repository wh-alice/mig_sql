---
title: "Data Type Synonyms (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "data types [SQL Server], synonyms"
  - "alternate names [SQL Server]"
  - "synonyms [SQL Server], data types"
ms.assetid: 390eef67-1a49-4185-a971-e07765be9717
caps.latest.revision: 18
ms.author: "rickbyh"
manager: "jhubbard"
---
# Data Type Synonyms (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Data type synonyms are included in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] for ISO compatibility. The following table lists the synonyms and the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] system data types that they map to.  
  
|Synonym|SQL Server system data type|  
|-------------|---------------------------------|  
|**Binary varying**|**varbinary**|  
|**char varying**|**varchar**|  
|**character**|**char**|  
|**character**|**char(1)**|  
|**character(** *n* **)**|**char(n)**|  
|**character varying(** *n* **)**|**varchar(n)**|  
|**Dec**|**decimal**|  
|**Double precision**|**float**|  
|**float**[**(***n***)**] for *n* = 1-7|**real**|  
|**float**[**(***n***)**] for *n* = 8-15|**float**|  
|**integer**|**int**|  
|**national character(** *n* **)**|**nchar(n)**|  
|**national char(** *n* **)**|**nchar(n)**|  
|**national character varying(** *n* **)**|**nvarchar(n)**|  
|**national char varying(** *n* **)**|**nvarchar(n)**|  
|**national text**|**ntext**|  
|**timestamp**|rowversion|  
  
 Data type synonyms can be used instead of the corresponding base data type name in data definition language (DDL) statements, such as CREATE TABLE, CREATE PROCEDURE, or DECLARE *@variable*. However, after the object is created, the synonyms have no visibility. When the object is created, the object is assigned the base data type that is associated with the synonym. There is no record that the synonym was specified in the statement that created the object.  
  
 All objects that are derived from the original object, such as result set columns or expressions, are assigned the base data type. All subsequent metadata functions performed on the original object and any derived objects will report the base data type, not the synonym. This behavior occurs with metadata operations, such as **sp_help** and other system stored procedures, the information schema views, or the various data access API metadata operations that report the data types of table or result set columns.  
  
 For example, you can create a table by specifying `national character varying`:  
  
```  
CREATE TABLE ExampleTable (PriKey int PRIMARY KEY, VarCharCol national character varying(10))  
```  
  
 `VarCharCol` is actually assigned an **nvarchar(10)** data type, and all subsequent metadata functions will report the column as an **nvarchar(10)** column. The metadata functions will never report them as a **national character varying(10)** column.  
  
## See Also  
 [Data Types &#40;Transact-SQL&#41;](../../t-sql/data-types/data-types-transact-sql.md)  
  
  