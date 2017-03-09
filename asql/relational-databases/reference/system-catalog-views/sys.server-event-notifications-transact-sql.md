---
title: "sys.server_event_notifications (Transact-SQL) | Microsoft Docs"
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
  - "server_event_notifications"
  - "sys.server_event_notifications"
  - "sys.server_event_notifications_TSQL"
  - "server_event_notifications_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.server_event_notifications catalog view"
ms.assetid: 1a83a044-3130-4551-95ca-162525846ff5
caps.latest.revision: 36
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.server_event_notifications (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns a row for each server-level event notification object.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**name**|**sysname**|Server event notification name. Is unique across all server-level event notifications.|  
|**object_id**|**int**|Object identification number. Is unique within the **master** database.|  
|**parent_class**|**tinyint**|Class of parent. Is always 100 = Server.|  
|**parent_class_desc**|**nvarchar(60)**|Description of class of parent. Is always SERVER.|  
|**parent_id**|**int**|Is always 0.|  
|**create_date**|**datetime**|Date created.|  
|**modify_date**|**datetime**|Date object was last modified by using an ALTER statement.|  
|**service_name**|**nvarchar(256)**|Name of the target service to which the notification is sent.|  
|**broker_instance**|**nvarchar(128)**|The service broker where the named target service is defined.|  
|**creator_sid**|**varbinary(85)**|SID of the login executing the statement that creates the event notification. NULL if WITH FAN_IN is not specified in the event notification definition.|  
|**principal_id**|**int**|ID of the server principal that owns this.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)  
  
  