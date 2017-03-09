---
title: "sys.assembly_references (Transact-SQL) | Microsoft Docs"
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
  - "assembly_references"
  - "sys.assembly_references_TSQL"
  - "assembly_references_TSQL"
  - "sys.assembly_references"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.assembly_references catalog view"
ms.assetid: 50a5ed42-2d5b-4a11-a0d2-9a02241b078d
caps.latest.revision: 27
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.assembly_references (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains a row for each pair of assemblies where one is directly referencing another.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**assembly_id**|**int**|ID of the assembly to which this reference belongs.|  
|**referenced_assembly_id**|**int**|ID of the assembly being referenced.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [CLR Assembly Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/clr-assembly-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [ASSEMBLYPROPERTY &#40;Transact-SQL&#41;](../../../t-sql/functions/assemblyproperty-transact-sql.md)  
  
  