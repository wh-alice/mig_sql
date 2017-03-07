---
title: "sp_delete_operator (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_delete_operator"
  - "sp_delete_operator_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_delete_operator"
ms.assetid: ff6c2c4b-e9fe-4d0c-bbc2-a2ddcc1acb95
caps.latest.revision: 29
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_delete_operator (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes an operator.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_delete_operator [ @name = ] 'name'   
     [ , [ @reassign_to_operator = ] 'reassign_operator' ]   
```  
  
## Arguments  
 [ **@name=** ] **'***name***'**  
 The name of the operator to delete. *name* is **sysname**, with no default.  
  
 [ **@reassign_to_operator=** ]  **'***reassign_operator***'**  
 The name of an operator to whom the specified operator's alerts can be reassigned. *reassign_operator* is **sysname**, with a default of NULL.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Result Sets  
 None  
  
## Remarks  
 When an operator is removed, all the notifications associated with the operator are also removed.  
  
## Permissions  
 Members of the **sysadmin** fixed server role can execute **sp_delete_operator**.  
  
## Examples  
 The following example deletes operator `François Ajenstat`.  
  
```  
USE msdb ;  
GO  
  
EXEC sp_delete_operator @name = 'François Ajenstat' ;  
GO  
```  
  
## See Also  
 [sp_add_operator &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-add-operator-transact-sql.md)   
 [sp_help_operator &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-help-operator-transact-sql.md)   
 [sp_update_operator &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-update-operator-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  