---
title: "sys.sysfulltextcatalogs (Transact-SQL) | Microsoft Docs"
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
  - "sysfulltextcatalogs"
  - "sys.sysfulltextcatalogs_TSQL"
  - "sysfulltextcatalogs_TSQL"
  - "sys.sysfulltextcatalogs"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.sysfulltextcatalogs compatibility view"
  - "sysfulltextcatalogs system table"
ms.assetid: 18ac6ad5-01e8-428f-8422-a9ca29626977
caps.latest.revision: 38
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sysfulltextcatalogs (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-xxxx-pdw-md.md)]

  Contains information about the full-text catalogs.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssnoteCompView](../../../relational-databases/reference/system-compatibility-views/includes/ssnotecompview-md.md)]  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[sqldbesa](../../../a9retired/includes/sqldbesa-md.md)].|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**ftcatid**|**smallint**|Identifier of the full-text catalog.|  
|**name**|**sysname**|Full-text catalog name specified by the user.|  
|**status**|**smallint**|[!INCLUDE[ssInternalOnly](../../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**path**|**nvarchar(260)**|Root path specified by the user.<br /><br /> NULL = Path was not specified. The default (installation) path was used.|  
  
## See Also  
 [Mapping System Tables to System Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/mapping-system-tables-to-system-views-transact-sql.md)   
 [Compatibility Views &#40;Transact-SQL&#41;](../Topic/Compatibility%20Views%20\(Transact-SQL\).md)  
  
  