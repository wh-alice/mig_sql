---
title: "sys.server_trigger_events (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.server_trigger_events_TSQL"
  - "server_trigger_events_TSQL"
  - "sys.server_trigger_events"
  - "server_trigger_events"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.server_trigger_events catalog view"
ms.assetid: be7d8a59-3c00-4f1b-b4b0-3dcd5572e002
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.server_trigger_events (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains one row for each event for which a server-level (synchronous) trigger fires.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**inherited columns**||Inherits all columns from [sys.server_events](../../../relational-databases/reference/system-catalog-views/sys.server-events-transact-sql.md).|  
|**is_first**|**bit**|Trigger is marked to be the first to fire for this event.|  
|**is_last**|**bit**|Trigger is marked to be the last to fire for this event.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)  
  
  