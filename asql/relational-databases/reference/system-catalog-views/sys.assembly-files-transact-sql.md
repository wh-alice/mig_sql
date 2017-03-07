---
title: "sys.assembly_files (Transact-SQL) | Microsoft Docs"
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
  - "sys.assembly_files"
  - "assembly_files_TSQL"
  - "assembly_files"
  - "sys.assembly_files_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.assembly_files catalog view"
ms.assetid: 1a384a2c-5556-4d12-a2ba-4da781363143
caps.latest.revision: 30
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.assembly_files (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains a row for each file that makes up an assembly.  
    
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**assembly_id**|**int**|ID of the assembly to which this file belongs.|  
|**name**|**nvarchar(260)**|Name of the assembly file.|  
|**file_id**|**int**|ID of the file. Is unique within an assembly. The file ID numbered 1 represents the assembly DLL.|  
|**content**|**varbinary(max)**|Content of file.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [CLR Assembly Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/clr-assembly-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [ASSEMBLYPROPERTY &#40;Transact-SQL&#41;](../../../t-sql/functions/assemblyproperty-transact-sql.md)  
  
  