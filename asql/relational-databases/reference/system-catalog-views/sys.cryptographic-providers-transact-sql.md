---
title: "sys.cryptographic_providers (Transact-SQL) | Microsoft Docs"
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
  - "cryptographic_providers"
  - "sys.cryptographic_providers"
  - "sys.cryptographic_providers_TSQL"
  - "cryptographic_providers_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.cryptographic_providers catalog view"
ms.assetid: 9da0da95-792e-48b4-9f60-47f0729c279c
caps.latest.revision: 13
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.cryptographic_providers (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns one row for each registered cryptographic provider.  
    
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**provider_id**|**int**|Identification number of the cryptographic provider.|  
|**name**|**sysname**|Name of the cryptographic provider.|  
|**guid**|**uniqueidentifier**|Unique provider GUID.|  
|**version**|**nvarchar(50)**|Version of the provider in the format '*aa.bb.cccc.dd*'.|  
|**dll_path**|**nvarchar(512)**|Path to DLL that implements the Extensible Key Management (EKM) Application Program Interface (API).|  
|**is_enabled**|**bit**|Whether the provider is enabled on the server or not.<br /><br /> 0 = not enabled  (default)<br /><br /> 1 = enabled|  
  
## Remarks  
 The **sys.cryptographic_providers** view is visible to the public.  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Security Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/security-catalog-views-transact-sql.md)   
 [Encryption Hierarchy](../../../relational-databases/security/encryption/encryption-hierarchy.md)   
 [Extensible Key Management &#40;EKM&#41;](../../../relational-databases/security/encryption/extensible-key-management-ekm.md)   
 [CREATE CRYPTOGRAPHIC PROVIDER &#40;Transact-SQL&#41;](../../../t-sql/statements/create-cryptographic-provider-transact-sql.md)  
  
  