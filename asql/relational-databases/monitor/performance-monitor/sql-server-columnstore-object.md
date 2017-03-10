---
title: "SQL Server, Columnstore Object | Microsoft Docs"
ms.custom: ""
ms.date: "2016-04-12"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: ae663a49-012f-4ffe-a332-f03157843052
caps.latest.revision: 8
ms.author: "barbkess"
manager: "jhubbard"
---
# SQL Server, Columnstore Object
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  The **SQLServer:Columnstore** object provides counters to monitor columnstore index execution in [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 The following table describes the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] **Columnstore** counters.  
  
|Columnstore counters|Description|  
|--------------------------|-----------------|  
|**Delta Rowgroups Closed**|Number of delta rowgroups closed.|  
|**Delta Rowgroups Compressed**|Number of delta rowgroups compressed.|  
|**Delta Rowgroups Created**|Number of delta rowgroups created.|  
|**Segment Cache Hit Raio**|Percentage of column segments that were found in the columnstore pool without having to incur a read from disk.|  
|**Segment Cache Hit Ratio Base**|For internal use only.|
|**Segment Reads/Sec**|Number of physical segment reads issued.|  
|**Total Delete Buffers Migrated**|Number of times tuple mover has cleaned up the delete buffer.|  
|**Total Merge Policy Evaluations**|Number of times the merge policy for columnstore was evaluated.|  
|**Total Rowgroups Compressed**|Total number of rowgroups compressed.|  
|**Total Rowgroups Fit For Merge**|Number of source rowgroups fit for MERGE since the start of SQL Server.|  
|**Total Rowgroups Merge Compressed**|Number of compressed target rowgroups created with MERGE since the start of SQL Server.|  
|**Total Source Rowgroups Merged**|Number of source rowgroups merged since the start of SQL Server.|  
  
## See Also  
 [Monitor Resource Usage &#40;System Monitor&#41;](../../../relational-databases/monitor/performance-monitor/monitor-resource-usage-system-monitor.md)  
  
  