---
title: "sys.fn_MSxe_read_event_stream (Transact-SQL) | Microsoft Docs"
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
  - "fn_MSxe_read_event_stream_TSQL"
  - "sys.fn_MSxe_read_event_stream_TSQL"
  - "sys.fn_MSxe_read_event_stream"
  - "fn_MSxe_read_event_stream"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.fn_MSxe_read_event_stream"
  - "fn_MSxe_read_event_stream"
ms.assetid: 5edb1162-625a-41e0-8ec9-1edc8ab9a74a
caps.latest.revision: 9
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.fn_MSxe_read_event_stream (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Extended Events provides a table valued function (TVF) for internal use by the Extended Events user interface (UI). The table does not provide customer usable data.  
  
 To view event data, use one of the following:  
  
-   Extended Events New Session UI.  
  
-   fn_xe_file_target_read_file TVF. For more information, see [sys.fn_xe_file_target_read_file &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-functions/sys.fn-xe-file-target-read-file-transact-sql.md).  
  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sys.fn_MSxe_read_event_stream ( session_name)  
```  
  
## Arguments  
 *Session_name*  
 The name of a session that is running on the server.  
  
## Table Returned  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|type|**Integer (4)**|The event type. Is not nullable.|  
|data|**Image (16)**|The event image data. Is nullable.|  
  
## See Also  
 [Extended Events Dynamic Management Views](../../../relational-databases/reference/system-dynamic-management-views/extended-events-dynamic-management-views.md)   
 [Extended Events Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/extended-events-catalog-views-transact-sql.md)   
 [Extended Events](../../../relational-databases/extended-events/extended-events.md)  
  
  