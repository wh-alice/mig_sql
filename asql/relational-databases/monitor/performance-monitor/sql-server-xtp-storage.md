---
title: "SQL Server XTP Storage | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 4070580b-880d-4f4c-abcc-626a4fe0c9a2
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
---
# SQL Server XTP Storage
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../a9notintoc/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  The SQL Server XTP Storage performance object contains counters related to on-disk storage for In-Memory OLTP in [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
 This table describes the **SQL Server XTP Storage** counters.  
  
|Counter|Description|  
|-------------|-----------------|  
|**Checkpoints Closed**|Count of checkpoints closed done by online agent.|  
|**Checkpoints Completed**|Count of checkpoints processed by offline checkpoint thread.|  
|**Core Merges Completed**|The number of core merges completed by the merge worker thread. These merges still need to be installed.|  
|**Merge Policy Evaluations**|The number of merge policy evaluations since the server started.|  
|**Merge Requests Outstanding**|The number of merge requests outstanding since the server started.|  
|**Merges Abandoned**|The number of merges abandoned due to failure.|  
|**Merges Installed**|The number of merges successfully installed.|  
|**Total Files Merged**|The total number of source files merged. This count can be used to find the average number of source files in the merge.|  
  
## See Also  
 [SQL Server XTP &#40;In-Memory OLTP&#41; Performance Counters](../../../relational-databases/monitor/performance-monitor/sql-server-xtp-in-memory-oltp-performance-counters.md)  
  
  