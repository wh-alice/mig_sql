---
title: "WITH CHANGE_TRACKING_CONTEXT (Transact-SQL) | Microsoft Docs"
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
  - "WITH_CHANGE_TRACKING_CONTEXT_TSQL"
  - "WITH CHANGE_TRACKING_CONTEXT"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "WITH CHANGE_TRACKING_CONTEXT"
  - "change tracking [SQL Server], WITH CHANGE_TRACKING_CONTEXT"
ms.assetid: 885e33a1-602a-4b94-8380-a63ac935a683
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# WITH CHANGE_TRACKING_CONTEXT (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Enables the context of a change to be specified, such as an originator ID, when data is changed. For example, when using change tracking, an application might want to differentiate between changes that were made by the application itself and changes that were made to the data outside the application.  

 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
WITH CHANGE_TRACKING_CONTEXT ( context )  
```  
  
#### Parameters  
 *context*  
 Is the contextual information that is supplied by the calling application and stored with the change tracking information for the change. *context* is **varbinary(128)**.  
  
 The value can be a constant or a variable, but cannot be NULL.  
  
## Examples  
 The following example sets the change tracking context for a data change.  
  
```  
WITH CHANGE_TRACKING_CONTEXT ( context )  
```  
  
## See Also  
 [Change Tracking Functions &#40;Transact-SQL&#41;](../../relational-databases/system-functions/change-tracking-functions-transact-sql.md)   
 [CHANGETABLE &#40;Transact-SQL&#41;](../../relational-databases/system-functions/changetable-transact-sql.md)   
 [Track Data Changes &#40;SQL Server&#41;](../../relational-databases/track-changes/track-data-changes-sql-server.md)  
  
  