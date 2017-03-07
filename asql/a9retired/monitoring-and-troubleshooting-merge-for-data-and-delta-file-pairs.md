---
title: "Monitoring and Troubleshooting Merge for Data and Delta File Pairs | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine-imoltp"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: a8b0bacc-4d2c-42e4-84bf-1a97e0bd385b
caps.latest.revision: 12
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# Monitoring and Troubleshooting Merge for Data and Delta File Pairs
  In-Memory OLTP uses a merge policy to merge adjacent data and delta file pairs automatically. You cannot disable merge activity.  
  
 You can monitor data and delta file pairs, as follows:  
  
-   Compare the size of in-memory storage to overall size of storage. If the storage is dis-proportionately large, then it is likely that merge is not getting triggered. For information  
  
-   Look at the used space in data and delta files using [sys.dm_db_xtp_checkpoint_files &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-db-xtp-checkpoint-files-transact-sql.md) to see if merge is not getting triggered when it should.  
  
## See Also  
 [Creating and Managing Storage for Memory-Optimized Objects](../relational-databases/in-memory-oltp/creating-and-managing-storage-for-memory-optimized-objects.md)  
  
  