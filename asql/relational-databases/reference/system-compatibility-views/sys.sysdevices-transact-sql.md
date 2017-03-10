---
title: "sys.sysdevices (Transact-SQL) | Microsoft Docs"
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
  - "sysdevices"
  - "sysdevices_TSQL"
  - "sys.sysdevices"
  - "sys.sysdevices_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.sysdevices compatibility view"
  - "sysdevices system table"
ms.assetid: ac5bcaf4-8fb6-4855-8856-d7643f469361
caps.latest.revision: 24
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sysdevices (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains one row for each disk backup file, tape backup file, and database file.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssnoteCompView](../../../relational-databases/reference/system-compatibility-views/includes/ssnotecompview-md.md)]  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**name**|**sysname**|Logical name of the backup file or database file.|  
|**size**|**int**|Size of the file in 2-kilobyte (KB) pages.|  
|**low**|**int**|Maintained for backward compatibility only.|  
|**high**|**int**|Maintained for backward compatibility only.|  
|**status**|**smallint**|Bitmap indicating the type of device:<br /><br /> 1 = Default disk<br /><br /> 2 = Physical disk<br /><br /> 4 = Logical disk<br /><br /> 8 = Skip header<br /><br /> 16 = Backup file<br /><br /> 32 = Serial writes<br /><br /> 4096 = Read-only|  
|**cntrltype**|**smallint**|Controller type:<br /><br /> 0 = Non-CD-ROM database file<br /><br /> 2 = Disk backup file<br /><br /> 3 - 4 = Diskette backup file<br /><br /> 5 = Tape backup file<br /><br /> 6 = Named-pipe file|  
|**phyname**|**nvarchar(260)**|Name of the physical file.|  
  
## See Also  
 [Mapping System Tables to System Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/mapping-system-tables-to-system-views-transact-sql.md)   
 [Compatibility Views &#40;Transact-SQL&#41;](../Topic/Compatibility%20Views%20\(Transact-SQL\).md)  
  
  