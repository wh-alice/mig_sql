---
title: "sys.sysperfinfo (Transact-SQL) | Microsoft Docs"
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
  - "sysperfinfo_TSQL"
  - "sys.sysperfinfo_TSQL"
  - "sys.sysperfinfo"
  - "sysperfinfo"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.sysperfinfo compatibility view"
  - "sysperfinfo system table"
ms.assetid: e22a81cd-27de-4690-9443-6aad6393bd3c
caps.latest.revision: 40
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sysperfinfo (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains a [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssDEnoversion](../../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] representation of the internal performance counters that can be displayed through the Windows System Monitor.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssnoteCompView](../../../relational-databases/reference/system-compatibility-views/includes/ssnotecompview-md.md)]  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**object_name**|**nchar(128)**|Performance object name, such as **SQLServer:LockManager** or **SQLServer:BufferManager**.|  
|**counter_name**|**nchar(128)**|Name of the performance counter within the object, such as **Page Requests** or **Locks Requested**.|  
|**instance_name**|**nchar(128)**|Named instance of the counter. For example, there are counters maintained for each type of lock, such as **Table**, **Page**, **Key**, and so on. The instance name distinguishes between similar counters.|  
|**cntr_value**|**bigint**|Actual counter value. Frequently, this will be a level or monotonically increasing counter that counts occurrences of the instance event.|  
|**cntr_type**|**int**|Type of counter as defined by the Windows performance architecture.|  
  
## See Also  
 [Mapping System Tables to System Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/mapping-system-tables-to-system-views-transact-sql.md)   
 [Compatibility Views &#40;Transact-SQL&#41;](../Topic/Compatibility%20Views%20\(Transact-SQL\).md)  
  
  