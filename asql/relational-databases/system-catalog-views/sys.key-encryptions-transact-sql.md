---
title: "sys.key_encryptions (Transact-SQL) | Microsoft Docs"
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
  - "sys.key_encryptions"
  - "key_encryptions_TSQL"
  - "sys.key_encryptions_TSQL"
  - "key_encryptions"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.key_encryptions catalog view"
ms.assetid: c39cecf8-af63-40b9-98e5-f84a5bf3ae54
caps.latest.revision: 22
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.key_encryptions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a row for each symmetric key encryption specified by using the ENCRYPTION BY clause of the CREATE SYMMETRIC KEY statement.  

  
|Column names|Data types|Description|  
|------------------|----------------|-----------------|  
|**key_id**|**int**|ID of the encrypted key.|  
|**thumbprint**|**varbinary(32)**|SHA-1 hash of the certificate with which the key is encrypted, or the GUID of the symmetric key with which the key is encrypted.|  
|**crypt_type**|**char(4)**|Type of encryption:<br /><br /> ESKS = Encrypted by symmetric key<br /><br /> ESKP = Encrypted by password<br /><br /> EPUC = Encrypted by certificate<br /><br /> EPUA = Encrypted by asymmetric key<br /><br /> ESKM = Encrypted by master key|  
|**crypt_type_desc**|**nvarchar(60)**|Description of encryption type:<br /><br /> ENCRYPTION BY SYMMETRIC KEY<br /><br /> ENCRYPTION BY PASSWORD<br /><br /> ENCRYPTION BY CERTIFICATE<br /><br /> ENCRYPTION BY ASYMMETRIC KEY<br /><br /> ENCRYPTION BY MASTER KEY<br /><br /> Note: Windows DPAPI is used to protect the service master key.|  
|**crypt_property**|**varbinary(max)**|Signed or encrypted bits.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../relational-databases/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md)   
 [Security Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/security-catalog-views-transact-sql.md)   
 [Encryption Hierarchy](../../relational-databases/security/encryption/encryption-hierarchy.md)   
 [CREATE SYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/create-symmetric-key-transact-sql.md)  
  
  