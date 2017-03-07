---
title: "sp_revoke_publication_access (Transact-SQL) | Microsoft Docs"
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
  - "sp_revoke_publication_access_TSQL"
  - "sp_revoke_publication_access"
helpviewer_keywords: 
  - "sp_revoke_publication_access"
ms.assetid: 84ed9e77-991f-4fa5-a21f-7c6bfec1b3e3
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_revoke_publication_access (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes the login from a publications access list. This stored procedure is executed at the Publisher on the publication database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_revoke_publication_access [ @publication = ] 'publication' , [ @login = ] 'login'  
```  
  
## Arguments  
 [ **@publication=**] **'***publication***'**  
 Is the name of the publication to access. *publication* is **sysname**, with no default.  
  
 [ **@login=**] **'***login***'**  
 Is the login ID. *login* is **sysname**, with no default.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_revoke_publication_access** is used in snapshot, transactional, and merge replication.  
  
 **sp_revoke_publication_access** can be called repeatedly.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role or the **db_owner** fixed database role can execute **sp_revoke_publication_access**.  
  
## See Also  
 [sp_grant_publication_access &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-grant-publication-access-transact-sql.md)   
 [sp_help_publication_access &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-help-publication-access-transact-sql.md)   
 [Secure the Publisher](../../relational-databases/replication/security/secure-the-publisher.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  