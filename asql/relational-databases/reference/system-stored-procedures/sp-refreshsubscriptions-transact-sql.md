---
title: "sp_refreshsubscriptions (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
f1_keywords: 
  - "sp_refreshsubscriptions"
  - "sp_refreshsubscriptions_TSQL"
helpviewer_keywords: 
  - "sp_refreshsubscriptions"
ms.assetid: 6cb9b1ce-1ce7-43ab-9451-201f79ed1ffa
caps.latest.revision: 26
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_refreshsubscriptions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Add subscriptions to new articles in a pull subscription for all the existing Subscribers to the publication. This stored procedure is executed at the Publisher on the publication database.  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_refreshsubscriptions [ @publication = ] 'publication'  
```  
  
## Arguments  
 [ **@publication** = ] **'***publication***'**  
 Is the publication for which to refresh subscriptions. *publication* is **sysname**, with no default.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Result Sets  
 None  
  
## Remarks  
 **sp_refreshsubscriptions** is used in snapshot, transactional, and merge replication.  
  
 **sp_refreshsubscriptions** is called by **sp_addarticle** for an immediate-updating publication.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role or the **db_owner** fixed database role can execute **sp_refreshsubscriptions**.  
  
## See Also  
 [sp_addarticle &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addarticle-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  