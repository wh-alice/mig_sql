---
title: "sp_MShasdbaccess (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_MShasdbaccess"
  - "sp_MShasdbaccess_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_MShasdbaccess"
ms.assetid: a9a23b90-2c60-4460-80a7-d7e14cc5a6a8
caps.latest.revision: 14
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_MShasdbaccess (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Lists the name and owner of all the databases to which the user has access.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_MShasdbaccess      
```  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Permissions  
 Execute permission is granted to the **public** role.  
  
## See Also  
 [sys.sysdatabases &#40;Transact-SQL&#41;](../../relational-databases/system-compatibility-views/sys.sysdatabases-transact-sql.md)  
  
  