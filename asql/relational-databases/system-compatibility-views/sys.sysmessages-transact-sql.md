---
title: "sys.sysmessages (Transact-SQL) | Microsoft Docs"
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
  - "sys.sysmessages"
  - "sysmessages"
  - "sysmessages_TSQL"
  - "sys.sysmessages_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysmessages system table"
  - "sys.sysmessages compatibility view"
ms.assetid: 44bee7d9-7517-4071-99be-8b36f979c7cc
caps.latest.revision: 35
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sysmessages (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains one row for each system error or warning that can be returned by the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)]. The [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] displays the error description on the user's screen.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssnoteCompView](../../relational-databases/system-compatibility-views/includes/ssnotecompview-md.md)]  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**error**|**int**|Unique error number.|  
|**severity**|**tinyint**|Severity level of the error.|  
|**dlevel**|**smallint**|[!INCLUDE[ssInternalOnly](../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**description**|**nvarchar(255)**|Explanation of the error with placeholders for parameters.|  
|**msglangid**|**smallint**|System message group ID.|  
  
## See Also  
 [Mapping System Tables to System Views &#40;Transact-SQL&#41;](../../relational-databases/system-tables/mapping-system-tables-to-system-views-transact-sql.md)   
 [Compatibility Views &#40;Transact-SQL&#41;](../Topic/Compatibility%20Views%20\(Transact-SQL\).md)  
  
  