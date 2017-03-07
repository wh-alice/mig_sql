---
title: "sys.sysreferences (Transact-SQL) | Microsoft Docs"
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
  - "sys.sysreferences"
  - "sys.sysreferences_TSQL"
  - "sysreferences"
  - "sysreferences_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.sysreferences compatibility view"
  - "sysreferences system table"
ms.assetid: 81276f13-202e-4e74-962d-46eb98c98d2e
caps.latest.revision: 38
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sysreferences (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Contains mappings of the FOREIGN KEY constraint definitions to the referenced columns within the database.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssnoteCompView](../../relational-databases/system-compatibility-views/includes/ssnotecompview-md.md)]  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**constid**|**int**|ID of the FOREIGN KEY constraint.|  
|**fkeyid**|**int**|ID of the referencing table.|  
|**rkeyid**|**int**|ID of the referenced table.|  
|**rkeyindid**|**smallint**|Index ID of the unique index on the referenced table covering the referenced key-columns.|  
|**keycnt**|**smallint**|Number of columns in the key.|  
|**forkeys**|**varbinary(32)**|[!INCLUDE[ssInternalOnly](../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**refkeys**|**varbinary(32)**|[!INCLUDE[ssInternalOnly](../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**fkeydbid**|**smallint**|Reserved.|  
|**rkeydbid**|**smallint**|Reserved.|  
|**fkey1**|**smallint**|Column ID of the referencing column.|  
|**fkey2**|**smallint**|Column ID of the referencing column.|  
|**fkey3**|**smallint**|Column ID of the referencing column.|  
|**fkey4**|**smallint**|Column ID of the referencing column.|  
|**fkey5**|**smallint**|Column ID of the referencing column.|  
|**fkey6**|**smallint**|Column ID of the referencing column.|  
|**fkey7**|**smallint**|Column ID of the referencing column.|  
|**fkey8**|**smallint**|Column ID of the referencing column.|  
|**fkey9**|**smallint**|Column ID of the referencing column.|  
|**fkey10**|**smallint**|Column ID of the referencing column.|  
|**fkey11**|**smallint**|Column ID of the referencing column.|  
|**fkey12**|**smallint**|Column ID of the referencing column.|  
|**fkey13**|**smallint**|Column ID of the referencing column.|  
|**fkey14**|**smallint**|Column ID of the referencing column.|  
|**fkey15**|**smallint**|Column ID of the referencing column.|  
|**fkey16**|**smallint**|Column ID of the referencing column.|  
|**rkey1**|**smallint**|Column ID of the referenced column.|  
|**rkey2**|**smallint**|Column ID of the referenced column.|  
|**rkey3**|**smallint**|Column ID of the referenced column.|  
|**rkey4**|**smallint**|Column ID of the referenced column.|  
|**rkey5**|**smallint**|Column ID of the referenced column.|  
|**rkey6**|**smallint**|Column ID of the referenced column.|  
|**rkey7**|**smallint**|Column ID of the referenced column.|  
|**rkey8**|**smallint**|Column ID of the referenced column.|  
|**rkey9**|**smallint**|Column ID of the referenced column.|  
|**rkey10**|**smallint**|Column ID of the referenced column.|  
|**rkey11**|**smallint**|Column ID of the referenced column.|  
|**rkey12**|**smallint**|Column ID of the referenced column.|  
|**rkey13**|**smallint**|Column ID of the referenced column.|  
|**rkey14**|**smallint**|Column ID of the referenced column.|  
|**rkey15**|**smallint**|Column ID of the referenced column.|  
|**rkey16**|**smallint**|Column ID of the referenced column.|  
  
## See Also  
 [Mapping System Tables to System Views &#40;Transact-SQL&#41;](../../relational-databases/system-tables/mapping-system-tables-to-system-views-transact-sql.md)   
 [Compatibility Views &#40;Transact-SQL&#41;](../Topic/Compatibility%20Views%20\(Transact-SQL\).md)  
  
  