---
title: "CLOSE SYMMETRIC KEY (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-02"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "CLOSE SYMMETRIC KEY"
  - "CLOSE_SYMMETRIC_KEY_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "closing symmetric keys"
  - "encryption [SQL Server], symmetric keys"
  - "symmetric keys [SQL Server], closing"
  - "CLOSE SYMMETRIC KEY statement"
  - "cryptography [SQL Server], symmetric keys"
ms.assetid: 3b083cbb-3c6a-4f59-8d34-601db1efcc83
caps.latest.revision: 29
ms.author: "rickbyh"
manager: "jhubbard"
---
# CLOSE SYMMETRIC KEY (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Closes a symmetric key, or closes all symmetric keys open in the current session.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[sqldbesa](../../database-engine/configure/windows/includes/sqldbesa-md.md)] ([Preview in some regions](http://azure.microsoft.com/documentation/articles/sql-database-preview-whats-new/?WT.mc_id=TSQL_GetItTag)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
CLOSE { SYMMETRIC KEY key_name | ALL SYMMETRIC KEYS }  
```  
  
## Arguments  
 *Key_name*  
 Is the name of the symmetric key to be closed.  
  
## Remarks  
 Open symmetric keys are bound to the session not to the security context. An open key will continue to be available until it is either explicitly closed or the session is terminated. CLOSE ALL SYMMETRIC KEYS will close any database master key that was opened in the current session by using the [OPEN MASTER KEY](../../t-sql/statements/open-master-key-transact-sql.md) statement.  Information about open keys is visible in the [sys.openkeys &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.openkeys-transact-sql.md) catalog view.  
  
## Permissions  
 No explicit permission is required to close a symmetric key.  
  
## Examples  
  
### A. Closing a symmetric key  
 The following example closes the symmetric key `ShippingSymKey04`.  
  
```  
CLOSE SYMMETRIC KEY ShippingSymKey04;  
GO  
```  
  
### B. Closing all symmetric keys  
 The following example closes all symmetric keys that are open in the current session, and also the explicitly opened database master key.  
  
```  
CLOSE ALL SYMMETRIC KEYS;  
GO  
```  
  
## See Also  
 [CREATE SYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/create-symmetric-key-transact-sql.md)   
 [ALTER SYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/alter-symmetric-key-transact-sql.md)   
 [OPEN SYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/open-symmetric-key-transact-sql.md)   
 [DROP SYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/drop-symmetric-key-transact-sql.md)  
  
  