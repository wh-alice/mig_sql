---
title: "sp_getmergedeletetype (Transact-SQL) | Microsoft Docs"
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
  - "sp_getmergedeletetype"
  - "sp_getmergedeletetype_TSQL"
helpviewer_keywords: 
  - "sp_getmergedeletetype"
ms.assetid: 64450e4d-844d-4176-874e-f3845536f7d2
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_getmergedeletetype (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the type of merge delete. This stored procedure is executed at the Publisher on the publication database or at the Subscriber on the subscription database.  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_getmergedeletetype [ @source_object = ] 'source_object', [ @rowguid =] 'rowguid', [ @delete_type=] delete_type OUTPUT  
```  
  
## Arguments  
 [ **@source_object =**] **'***source_object***'**  
 Is the name of the source object. *source_object* is **nvarchar(386)**, with no default.  
  
 [ **@rowguid=**] **'***rowguid***'**  
 Is the row identifier for the delete type. *rowguid* is **uniqueidentifier**, with no default.  
  
 [ **@delete_type=**] *delete_type* **OUTPUT**  
 Is the code indicating the type of delete. *delete_type* is **int**, with no default. *delete_type* is also an OUTPUT parameter, and can be one of these values.  
  
|Value|Description|  
|-----------|-----------------|  
|**1**|User delete|  
|**5**|Partial delete|  
|**6**|System delete|  
  
## Remarks  
 **sp_getmergedeletetype** is used in merge replication.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role or the **db_owner** fixed database role can execute **sp_getmergedeletetype**.  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  