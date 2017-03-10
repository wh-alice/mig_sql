---
title: "sp_execute (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_cursor_execute"
  - "sp_cursor_execute_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_execute"
ms.assetid: 2009acd3-0d92-435a-a8fb-057e50dc7146
caps.latest.revision: 11
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_execute (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Executes a prepared [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] statement using a specified handle and optional parameter value. sp_execute is invoked by specifying ID =12 in a tabular data stream (TDS) packet.  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
sp_execute handle OUTPUT  
    [,bound_param  ]  [,...n ]  ]  
```  
  
## Arguments  
 *handle*  
 Is the *handle* value returned by sp_prepare. *handle* is a required parameter that calls for **int** input value.  
  
 *bound_param*  
 Signifies the use of additional parameters. *bound_param* is a required parameter that calls for input values of any data type to signify additional parameters for the procedure.  
  
> [!NOTE]  
>  *bound_param* must match the declarations made by the sp_prepare*params* value and can be in the form *@name = value* or *value*.  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [sp_prepare &#40;Transact SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-prepare-transact-sql.md)  
  
  