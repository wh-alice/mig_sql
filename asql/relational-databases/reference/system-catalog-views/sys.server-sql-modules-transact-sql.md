---
title: "sys.server_sql_modules (Transact-SQL) | Microsoft Docs"
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
  - "sys.server_sql_modules"
  - "sys.server_sql_modules_TSQL"
  - "server_sql_modules_TSQL"
  - "server_sql_modules"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.server_sql_modules catalog view"
ms.assetid: 9ef9a8b9-c470-4a61-b0c4-ee24ad871d63
caps.latest.revision: 17
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.server_sql_modules (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains the set of SQL modules for server-level triggers of type TR. You can join this relation to sys.server_triggers. The tuple (object_id) is the key of the relation.  
  
|Column Name|Data Type|Description|  
|-----------------|---------------|-----------------|  
|**object_id**|**int**|This is a FOREIGN KEY reference back to the server-level trigger where this module is defined.|  
|**definition**|**nvarchar(max)**|SQL text that defines this module.<br /><br /> NULL = Encrypted.|  
|**uses_ansi_nulls**|**bit**|Module was created with ANSI NULLS set option set to ON.|  
|**uses_quoted_identifier**|**bit**|Module was created with QUOTED IDENTIFIER set option set to ON.|  
|**execute_as_principal_id**|**int**|ID of the EXECUTE AS server principal.<br /><br /> NULL by default or if EXECUTE AS CALLER<br /><br /> ID of the specified principal if EXECUTE AS SELF EXECUTE AS principal-2 = EXECUTE AS OWNER.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)  
  
  