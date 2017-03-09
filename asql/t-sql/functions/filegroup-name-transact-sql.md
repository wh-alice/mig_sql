---
title: "FILEGROUP_NAME (Transact-SQL) | Microsoft Docs"
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
  - "FILEGROUP_NAME_TSQL"
  - "FILEGROUP_NAME"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "displaying filegroup names"
  - "identification numbers [SQL Server], filegroups"
  - "filegroups [SQL Server], IDs"
  - "IDs [SQL Server], filegroups"
  - "FILEGROUP_NAME function"
  - "filegroups [SQL Server], names"
  - "names [SQL Server], filegroups"
  - "viewing filegroup names"
ms.assetid: 26add1c0-56e5-47a8-b489-ae56784a7ee9
caps.latest.revision: 26
ms.author: "rickbyh"
manager: "jhubbard"
---
# FILEGROUP_NAME (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the filegroup name for the specified filegroup identification (ID) number.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
FILEGROUP_NAME ( filegroup_id )   
```  
  
## Arguments  
 *filegroup_id*  
 Is the filegroup ID number for which to return the filegroup name. *filegroup_id* is **smallint**.  
  
## Return Types  
 **nvarchar(128)**  
  
## Remarks  
 *filegroup_id* corresponds to the **data_space_id** column in the **sys.filegroups** catalog view.  
  
## Examples  
 The following example returns the filegroup name for the filegroup ID `1` in the [!INCLUDE[ssSampleDBnormal](../../analysis-services/data-mining/includes/sssampledbnormal-md.md)] database.  
  
```  
  
SELECT FILEGROUP_NAME(1) AS [Filegroup Name];  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
Filegroup Name   
-----------------------  
PRIMARY  
  
(1 row(s) affected)  
```  
  
## See Also  
 [Metadata Functions &#40;Transact-SQL&#41;](../../t-sql/functions/metadata-functions-transact-sql.md)   
 [SELECT &#40;Transact-SQL&#41;](../../t-sql/queries/select-transact-sql.md)   
 [sys.filegroups &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.filegroups-transact-sql.md)  
  
  