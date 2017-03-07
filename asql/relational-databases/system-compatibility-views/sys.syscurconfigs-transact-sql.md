---
title: "sys.syscurconfigs (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.syscurconfigs"
  - "sys.syscurconfigs_TSQL"
  - "syscurconfigs"
  - "syscurconfigs_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.syscurconfigs compatibility view"
  - "syscurconfigs system table"
ms.assetid: 454ab849-07a5-4b50-ba0a-6b1b14721f77
caps.latest.revision: 34
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.syscurconfigs (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains an entry for each current configuration option. Also, this view contains four entries that describe the configuration structure. **syscurconfigs** is built dynamically when queried by a user. For more information, see [sys.sysconfigures &#40;Transact-SQL&#41;](../../relational-databases/system-compatibility-views/sys.sysconfigures-transact-sql.md).  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssnoteCompView](../../relational-databases/system-compatibility-views/includes/ssnotecompview-md.md)]  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**value**|**int**|User-modifiable value for the variable. This is used by the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] only if RECONFIGURE has been executed.|  
|**config**|**smallint**|Configuration variable number.|  
|**comment**|**nvarchar(255)**|Explanation of the configuration option.|  
|**status**|**smallint**|Bitmap indicating the status for the option. Possible values include the following:<br /><br /> 0 = Static. Setting takes effect when the server is restarted.<br /><br /> 1 = Dynamic. Variable takes effect when the RECONFIGURE statement is executed.<br /><br /> 2 = Advanced. Variable is displayed only when the **show advanced options** is set.<br /><br /> 3 = Dynamic and advanced.|  
  
## See Also  
 [Mapping System Tables to System Views &#40;Transact-SQL&#41;](../../relational-databases/system-tables/mapping-system-tables-to-system-views-transact-sql.md)   
 [Compatibility Views &#40;Transact-SQL&#41;](../Topic/Compatibility%20Views%20\(Transact-SQL\).md)  
  
  