---
title: "sys.credentials (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2017-02-27"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.credentials"
  - "sys.credentials_TSQL"
  - "credentials_TSQL"
  - "credentials"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.credentials catalog view"
ms.assetid: ea48cf80-904a-4273-a950-6d35b1b0a1b6
caps.latest.revision: 33
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.credentials (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Returns one row for each server-level credential.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|credential_id|**int**|ID of the credential. Is unique in the server.|  
|name|**sysname**|Name of the credential. Is unique in the server.|  
|credential_identity|**nvarchar(4000)**|Name of the identity to use. This will generally be a Windows user. It does not have to be unique.|  
|create_date|**datetime**|Time at which the credential was created.|  
|modify_date|**datetime**|Time at which the credential was last modified.|  
|target_type|**nvarchar(100)**|Type of credential. Returns NULL for traditional credentials, CRYPTOGRAPHIC PROVIDER for credentials mapped to a cryptographic provider. For more information about external key management providers, see [Extensible Key Management &#40;EKM&#41;](../../relational-databases/security/encryption/extensible-key-management-ekm.md).|  
|target_id|**int**|ID of the object that the credential is mapped to. Returns 0 for traditional credentials and non-0 for credentials mapped to a cryptographic provider. For more information about external key management providers, see [Extensible Key Management &#40;EKM&#41;](../../relational-databases/security/encryption/extensible-key-management-ekm.md).|  

## Remarks  
For database-level credentials, see [sys.database_scoped_credentials](../../relational-databases/system-catalog-views/sys.database-scoped-credentials-transact-sql.md).
  
## Permissions  
 Requires either `VIEW ANY DEFINITION` permission or `ALTER ANY CREDENTIAL` permission. In addition, the principal must not be denied `VIEW ANY DEFINITION` permission.  
  
## See Also  
 [sys.database_scoped_credentials](../../relational-databases/system-catalog-views/sys.database-scoped-credentials-transact-sql.md)   
 [Credentials &#40;Database Engine&#41;](../../relational-databases/security/authentication-access/credentials-database-engine.md)   
 [Security Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/security-catalog-views-transact-sql.md)   
 [Principals &#40;Database Engine&#41;](../../relational-databases/security/authentication-access/principals-database-engine.md)   
 [CREATE CREDENTIAL &#40;Transact-SQL&#41;](../../t-sql/statements/create-credential-transact-sql.md)  
  
  