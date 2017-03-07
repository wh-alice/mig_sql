---
title: "sp_validatemergesubscription (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
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
  - "sp_validatemergesubscription"
  - "sp_validatemergesubscription_TSQL"
helpviewer_keywords: 
  - "sp_validatemergesubscription"
ms.assetid: d73ad03c-e5b3-4606-a0ee-7d75e12762a6
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_validatemergesubscription (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Performs a validation for the specified subscription. This stored procedure is executed at the Publisher on the publication database.  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_validatemergesubscription [@publication=] 'publication'  
        , [ @subscriber = ] 'subscriber'  
        , [ @subscriber_db = ] 'subscriber_db'  
        , [ @level = ] level  
```  
  
## Arguments  
 [**@publication=**] **'***publication***'**  
 Is the name of the publication. *publication* is **sysname**, with no default.  
  
 [ **@subscriber=** ] **'***subscriber***'**  
 Is the name of the Subscriber. *subscriber* is **sysname**, with no default.  
  
 [ **@subscriber_db=** ] **'***subscriber_db***'**  
 Is the name of the subscription database. *subscriber_db* is **sysname**, with no default.  
  
 [ **@level=** ] *level*  
 Is the type of validation to perform. *level* is **tinyint**, with no default. Level can be one of these values.  
  
|Level value|Description|  
|-----------------|-----------------|  
|**1**|Rowcount-only validation.|  
|**2**|Rowcount and checksum validation.|  
|**3**|Rowcount and binary checksum validation.|  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_validatemergesubscription** is used in merge replication.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role or the **db_owner** fixed database role can execute **sp_validatemergesubscription**.  
  
## See Also  
 [Replication Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/replication-stored-procedures-transact-sql.md)   
 [Validate Replicated Data](../../../relational-databases/replication/validate-replicated-data.md)   
 [sp_validatemergepublication &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-validatemergepublication-transact-sql.md)  
  
  