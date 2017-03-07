---
title: "sys.syscommittab (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/02/2017"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: bf0c025a-6b2c-4883-af55-c8b8b71e19c8
caps.latest.revision: 3
ms.author: "rickbyh"
---
# sys.syscommittab (Transact-SQL)
  Change tracking information is stored for all tables (enabled for Change Tracking) in a database in an in-memory rowstore (syscommittable). This in-memory rowstore is flushed every checkpoint to the on-disk table (syscommittab). Rows from the syscommittab internal table are removed during every checkpoint..  
  
    
   
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**column**|**int**|ID |  
  
  
## See Also  
 [sys.syscommittable (Transact-SQL)](../a9notintoc/sys.syscommittable-transact-sql.md)  
 