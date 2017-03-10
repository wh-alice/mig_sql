---
title: "VERSION (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: 95a79b33-98f2-4929-a1a5-93b522a9e152
caps.latest.revision: 7
ms.author: "barbkess"
manager: "jhubbard"
---
# Version - Transact SQL Metadata functions
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-asdw-pdw_md](../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-asdw-pdw-md.md)]

 Returns the version of [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)] or [!INCLUDE[ssPDW_md](../../database-engine/configure/windows/includes/sspdw-md.md)] running on the appliance.  
  
![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions &#40;Transact-SQL&#41;](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Azure SQL Data Warehouse and Parallel Data Warehouse  
VERSION ( )  
```  
  
## Arguments  
  
## General Remarks  
A table name must be specified in a [FROM](../../t-sql/queries/from-transact-sql.md) clause for this function to return results. A result row will be returned for each row in the result set for the query; use [TOP (Transact-SQL)](../../t-sql/queries/top-transact-sql.md) to limit the number of returned rows.  
  
## Examples  
The following example returns the version number.  
  
```  
SELECT VERSION();  
```  
  
## See Also 
[SESSION_ID (Transact-SQL)](../../t-sql/functions/session-id-transact-sql.md)  
[DB_NAME &#40;Transact-SQL&#41;](../../t-sql/functions/db-name-transact-sql.md)  
  
  