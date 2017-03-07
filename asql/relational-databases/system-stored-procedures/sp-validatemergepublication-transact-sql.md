---
title: "sp_validatemergepublication (Transact-SQL) | Microsoft Docs"
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
  - "sp_validatemergepublication"
  - "sp_validatemergepublication_TSQL"
helpviewer_keywords: 
  - "sp_validatemergepublication"
ms.assetid: 5a862f1a-2be1-4758-9954-4cdc8c77d149
caps.latest.revision: 30
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_validatemergepublication (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Performs a publication-wide validation for which all subscriptions (push, pull, and anonymous) will be validated once. This stored procedure is executed at the Publisher on the publication database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_validatemergepublication [@publication=] 'publication'  
        , [ @level = ] level  
```  
  
## Arguments  
 [**@publication=**] **'***publication***'**  
 Is the name of the publication. *publication* is **sysname**, with no default.  
  
 [ **@level=** ] *level*  
 Is the type of validation to perform. *level* is **tinyint**, with no default. Level can be one of these values.  
  
|Level value|Description|  
|-----------------|-----------------|  
|**1**|Rowcount-only validation.|  
|**2**|Rowcount and checksum validation. For [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)]Subscribers, this is automatically set to **3**.|  
|**3**|This is the recommended value.|  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_validatemergepublication** is used in merge replication.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role can execute **sp_validatemergepublication**.  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [Validate Replicated Data](../../relational-databases/replication/validate-replicated-data.md)   
 [sp_validatemergesubscription &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-validatemergesubscription-transact-sql.md)  
  
  