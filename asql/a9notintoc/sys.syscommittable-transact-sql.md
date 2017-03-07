---
title: "sys.syscommittable (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/02/2017"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 30a17ec3-1739-4676-b682-96447c1b946c
caps.latest.revision: 2
ms.author: "rickbyh"
---
# sys.syscommittable (Transact-SQL)
  Change tracking information is stored for all tables (enabled for Change Tracking) in a database in an in-memory rowstore (syscommittable). This in-memory rowstore is flushed every checkpoint to the on-disk table (syscommittab). Rows from the syscommittab internal table are removed during every checkpoint..  
  
    
   
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**column**|**int**|ID |  
  
  
## See Also  
 [sys.syscommittab (Transact-SQL)](../a9notintoc/sys.syscommittab-transact-sql.md)  
 