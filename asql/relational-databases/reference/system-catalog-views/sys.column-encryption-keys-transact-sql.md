---
title: "sys.column_encryption_keys  (Transact-SQL) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2015-10-28"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "Azure SQL Database"
  - "SQL Server 2016 Preview"
f1_keywords: 
  - "sys.column_encryption_keys"
  - "column_encryption_keys_TSQL"
  - "sys.column_encryption_keys_TSQL"
  - "column_encryption_keys"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.column_encryption_keys catalog view"
ms.assetid: 43980dd8-b9b1-4869-a304-2c183ae8977d
caps.latest.revision: 9
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.column_encryption_keys  (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-asdw-xxx_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2016-xxxx-asdw-xxx-md.md)]

  Returns information about column encryption keys (CEKs) created with the [CREATE COLUMN ENCRYPTION KEY](../../../t-sql/statements/create-column-encryption-key-transact-sql.md) statement. Each row represents a CEK.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL15](../../../analysis-services/powershell/includes/sssql15-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[sqldbesa](../../../database-engine/configure/windows/includes/sqldbesa-md.md)].|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**name**|**sysname**|The name of the CMK.|  
|**column_encryption_key_id**|**int**|ID of the CEK.|  
|**create_date**|**datetime**|Date the CEK was created.|  
|**modify_date**|**datetime**|Date the CEK was last modified.|  
  
## Permissions  
 Requires the **VIEW ANY COLUMN ENCRYPTION KEY** permission.  
  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [CREATE COLUMN ENCRYPTION KEY &#40;Transact-SQL&#41;](../../../t-sql/statements/create-column-encryption-key-transact-sql.md)   
 [ALTER COLUMN ENCRYPTION KEY &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-column-encryption-key-transact-sql.md)   
 [DROP COLUMN ENCRYPTION KEY &#40;Transact-SQL&#41;](../../../t-sql/statements/drop-column-encryption-key-transact-sql.md)   
 [CREATE COLUMN MASTER KEY &#40;Transact-SQL&#41;](../../../t-sql/statements/create-column-master-key-transact-sql.md)   
 [Security Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/security-catalog-views-transact-sql.md)   
 [Always Encrypted &#40;Database Engine&#41;](../../../relational-databases/security/encryption/always-encrypted-database-engine.md)   
 [sys.column_encryption_key_values &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.column-encryption-key-values-transact-sql.md)  
  
  