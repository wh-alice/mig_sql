---
title: "sys.sysconfigures (Transact-SQL) | Microsoft Docs"
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
  - "sys.sysconfigures"
  - "sysconfigures"
  - "sys.sysconfigures_TSQL"
  - "sysconfigures_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.sysconfigures compatibility view"
  - "sysconfigures system table"
ms.assetid: 146bf10a-c898-4676-a2a1-673fb1cee7a2
caps.latest.revision: 39
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sysconfigures (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains one row for each configuration option set by a user. **sysconfigures** contains the configuration options that are defined before the most recent startup of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], plus any dynamic configuration options set since then.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssnoteCompView](../../../relational-databases/reference/system-compatibility-views/includes/ssnotecompview-md.md)]  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**value**|**int**|User-modifiable value for the variable. This is used by the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] only if RECONFIGURE has been executed.|  
|**config**|**int**|Configuration variable number.|  
|**comment**|**nvarchar(255)**|Explanation of the configuration option.|  
|**status**|**smallint**|Bitmap that indicates the status for the option. Possible values include the following:<br /><br /> 0 = Static. Setting takes effect when the server is restarted.<br /><br /> 1 = Dynamic. Variable takes effect when the RECONFIGURE statement is executed.<br /><br /> 2 = Advanced. Variable is displayed only when the **show advanced options** is set. Setting takes effect when the server is restarted.<br /><br /> 3 = Dynamic and advanced.|  
  
## See Also  
 [Mapping System Tables to System Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/mapping-system-tables-to-system-views-transact-sql.md)   
 [Compatibility Views &#40;Transact-SQL&#41;](../Topic/Compatibility%20Views%20\(Transact-SQL\).md)  
  
  