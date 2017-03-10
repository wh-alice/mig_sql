---
title: "sys.sysaltfiles (Transact-SQL) | Microsoft Docs"
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
  - "sys.sysaltfiles_TSQL"
  - "sys.sysaltfiles"
  - "sysaltfiles_TSQL"
  - "sysaltfiles"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysaltfiles system table"
  - "sys.sysaltfiles compatibility view"
ms.assetid: 698dec23-5336-4108-87a5-f8e407f8da09
caps.latest.revision: 35
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sysaltfiles (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Under special circumstances, contains rows corresponding to the files in a database.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssnoteCompView](../../../relational-databases/reference/system-compatibility-views/includes/ssnotecompview-md.md)]  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**fileid**|**smallint**|File identification number. This is unique for each database.|  
|**groupid**|**smallint**|File group identification number.|  
|**size**|**int**|File size, in 8-kilobyte (KB) pages.|  
|**maxsize**|**int**|Maximum file size, in 8-KB pages.<br /><br /> 0 = No growth.<br /><br /> -1 = File will grow until the disk is full.<br /><br /> 268435456 = Log file will grow to a maximum size of 2 TB.<br /><br /> Note: Databases that are upgraded with an unlimited log file size will report -1 for the maximum size of the log file.|  
|**growth**|**int**|Growth size of the database.<br /><br /> 0 = No growth. Can be either the number of pages or the percentage of file size, depending on the value of status. If **status** is 0x100000, **growth** is the percentage of file size; otherwise, it is the number of pages.|  
|**status**|**int**|[!INCLUDE[ssInternalOnly](../../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**perf**|**int**|Reserved.|  
|**dbid**|**smallint**|Database identification number of the database to which this file belongs.|  
|**name**|**sysname**|Logical name of the file.|  
|**filename**|**nvarchar(260)**|Name of the physical device. This includes the full path of the file.|  
  
## See Also  
 [Mapping System Tables to System Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/mapping-system-tables-to-system-views-transact-sql.md)   
 [Compatibility Views &#40;Transact-SQL&#41;](../Topic/Compatibility%20Views%20\(Transact-SQL\).md)  
  
  