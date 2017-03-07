---
title: "sys.extended_procedures (Transact-SQL) | Microsoft Docs"
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
  - "extended_procedures"
  - "sys.extended_procedures"
  - "sys.extended_procedures_TSQL"
  - "extended_procedures_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.extended_procedures catalog view"
ms.assetid: 310e0f87-0044-4fdf-bd12-51a723a74ce6
caps.latest.revision: 33
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.extended_procedures (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains a row for each object that is an extended stored procedure, with **sys.objects.type** = X. Because extended stored procedures are installed into the **master** database, they are only visible from that database context. Selecting from the **sys.extended_procedures** view in any other database context will return an empty result set.  

  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**\<Columns inherited from sys.objects>**||For a list of columns that this view inherits, see [sys.objects &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.objects-transact-sql.md).|  
|**dll_name**|**nvarchar(260)**|Name, including path, of the DLL for this extended stored procedure.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../relational-databases/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md)  
  
  