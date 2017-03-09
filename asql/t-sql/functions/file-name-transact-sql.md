---
title: "FILE_NAME (Transact-SQL) | Microsoft Docs"
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
  - "FILE_NAME_TSQL"
  - "FILE_NAME"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "viewing file names"
  - "file names [SQL Server], FILE_NAME"
  - "IDs [SQL Server], files"
  - "file IDs [SQL Server]"
  - "names [SQL Server], files"
  - "displaying file names"
  - "identification numbers [SQL Server], files"
  - "FILE_NAME function"
  - "logical file names [SQL Server]"
ms.assetid: 68b298aa-ce47-4af5-b59f-9a1b46d48326
caps.latest.revision: 35
ms.author: "rickbyh"
manager: "jhubbard"
---
# FILE_NAME (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the logical file name for the given file identification (ID) number.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
FILE_NAME ( file_id )   
```  
  
## Arguments  
 *file_id*  
 Is the file identification number for which to return the file name. *file_id* is **int**.  
  
## Return Types  
 **nvarchar(128)**  
  
## Remarks  
 *file_ID* corresponds to the file_id column in the sys.master_files or sys.database_files catalog views.  
  
## Examples  
 The following example returns the file names for `file`_`ID 1` and `file`\_`ID` in the [!INCLUDE[ssSampleDBnormal](../../analysis-services/data-mining/includes/sssampledbnormal-md.md)] database.  
  
```tsql  
  
SELECT FILE_NAME(1) AS 'File Name 1', FILE_NAME(2) AS 'File Name 2';  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `File Name 1           File Name 2`  
  
 `----------------      ------------------------`  
  
 `AdventureWorks2012_Data   AdventureWorks2012_Log`  
  
 `(1 row(s) affected)`  
  
## See Also  
 [FILE_IDEX &#40;Transact-SQL&#41;](../../t-sql/functions/file-idex-transact-sql.md)   
 [Metadata Functions &#40;Transact-SQL&#41;](../../t-sql/functions/metadata-functions-transact-sql.md)   
 [sys.database_files &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.database-files-transact-sql.md)   
 [sys.master_files &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.master-files-transact-sql.md)  
  
  