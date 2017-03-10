---
title: "CHANGE_TRACKING_CURRENT_VERSION (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-08"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "CHANGE_TRACKING_CURRENT_VERSION_TSQL"
  - "CHANGE_TRACKING_CURRENT_VERSION"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "change tracking [SQL Server], CHANGE_TRACKING_CURRENT_VERSION"
  - "CHANGE_TRACKING_CURRENT_VERSION"
ms.assetid: 3027c4f7-6b4d-4089-a369-5926e8a8da1c
caps.latest.revision: 16
ms.author: "rickbyh"
manager: "jhubbard"
---
# CHANGE_TRACKING_CURRENT_VERSION (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a version that is associated with the last committed transaction. This version can be used when you enumerate changes by using [CHANGETABLE](../../../relational-databases/reference/system-functions/changetable-transact-sql.md).  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
CHANGE_TRACKING_CURRENT_VERSION ( )  
```  
  
## Return Type  
 **bigint**  
  
## Remarks  
 Returns NULL when change tracking is not enabled for the database.  
  
## Examples  
 The following example declares the local variable `@next_baseline` for storing the current version of tracked changes, and then uses the `CHANGE_TRACKING_CURRENT_VERSION()` function to obtain the value for the variable.  
  
```tsql  
DECLARE @next_baseline bigint;  
SET @next_baseline = CHANGE_TRACKING_CURRENT_VERSION();  
```  
  
## See Also  
 [Change Tracking Functions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-functions/change-tracking-functions-transact-sql.md)   
 [CHANGETABLE &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-functions/changetable-transact-sql.md)   
 [CHANGE_TRACKING_MIN_VALID_VERSION &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-functions/change-tracking-min-valid-version-transact-sql.md)   
 [Track Data Changes &#40;SQL Server&#41;](../../../relational-databases/track-changes/track-data-changes-sql-server.md)  
  
  