---
title: "sys.fulltext_document_types (Transact-SQL) | Microsoft Docs"
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
  - "sys.fulltext_document_types_TSQL"
  - "fulltext_document_types"
  - "fulltext_document_types_TSQL"
  - "sys.fulltext_document_types"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.fulltext_document_types catalog view"
ms.assetid: 156fcfa4-7304-4a5c-b96f-1c3e061e5df0
caps.latest.revision: 19
ms.author: "douglasl"
manager: "jhubbard"
---
# sys.fulltext_document_types (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a row for each document type that is available for full-text indexing operations. Each row represents the IFilter interface that is registered in the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**document_type**|**sysname**|The file extension of the supported document type.<br /><br /> This value can be used to identify the filter that will be used during full-text indexing of columns of type **varbinary(max)** or **image**.|  
|**class_id**|**uniqueidentifier**|GUID of the IFilter class that supports file extension.|  
|**path**|**nvarchar(260)**|The path to the IFilter DLL. The path is only visible to members of the **serveradmin** fixed server role.|  
|**version**|**sysname**|Version of the IFilter DLL.|  
|**manufacturer**|**sysname**|Name of the IFilter manufacturer.<br /><br /> Note: Only documents with the manufacturer as [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] are supported on [!INCLUDE[ssSDS](../../analysis-services/multidimensional-models/includes/sssds-md.md)].|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../relational-databases/system-catalog-views/includes/sscatviewperm-md.md)]  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md)  
  
  