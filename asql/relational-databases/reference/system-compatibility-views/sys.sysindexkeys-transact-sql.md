---
title: "sys.sysindexkeys (Transact-SQL) | Microsoft Docs"
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
  - "sysindexkeys"
  - "sys.sysindexkeys_TSQL"
  - "sysindexkeys_TSQL"
  - "sys.sysindexkeys"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysindexkeys system table"
  - "sys.sysindexkeys compatibility view"
ms.assetid: 53a33c8d-e5f0-430d-a712-b65f43d64318
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sysindexkeys (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains information about the keys or columns in an index of the database.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssnoteCompView](../../../relational-databases/reference/system-compatibility-views/includes/ssnotecompview-md.md)]  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**id**|**int**|ID of the table.|  
|**indid**|**smallint**|ID of the index.|  
|**colid**|**smallint**|ID of the column.|  
|**keyno**|**smallint**|Position of the column in the index.|  
  
## See Also  
 [Mapping System Tables to System Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/mapping-system-tables-to-system-views-transact-sql.md)   
 [Compatibility Views &#40;Transact-SQL&#41;](../Topic/Compatibility%20Views%20\(Transact-SQL\).md)   
 [sys.index_columns &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.index-columns-transact-sql.md)  
  
  