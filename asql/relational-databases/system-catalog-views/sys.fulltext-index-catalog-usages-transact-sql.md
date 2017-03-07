---
title: "sys.fulltext_index_catalog_usages (Transact-SQL) | Microsoft Docs"
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
  - "sys.fulltext_index_catalog_usages"
  - "sys.fulltext_index_catalog_usages_TSQL"
  - "fulltext_index_catalog_usages"
  - "fulltext_index_catalog_usages_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.fulltext_index_catalog_usages catalog view"
ms.assetid: d095ab62-270b-484b-a541-9f9e7c951cf0
caps.latest.revision: 15
ms.author: "douglasl"
manager: "jhubbard"
---
# sys.fulltext_index_catalog_usages (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a row for each full-text catalog to full-text index reference.    
 
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**object_id**|**int**|ID of the full-text indexed table. Is unique within the database.|  
|**index_id**|**int**|ID of full-text index.|  
|**fulltext_catalog_id**|**int**|ID of full-text catalog.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../relational-databases/system-catalog-views/includes/sscatviewperm-md.md)]  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md)   
 [Data Spaces &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/data-spaces-transact-sql.md)  
  
  