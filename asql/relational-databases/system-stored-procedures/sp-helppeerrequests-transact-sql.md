---
title: "sp_helppeerrequests (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
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
  - "sp_helppeerrequests_TSQL"
  - "sp_helppeerrequests"
helpviewer_keywords: 
  - "sp_helppeerrequests"
ms.assetid: 37bd503e-46c4-47c6-996e-be7ffe636fe8
caps.latest.revision: 21
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_helppeerrequests (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns information on all status requests received by participants in a peer-to-peer replication topology, where these requests were initiated by executing [sp_requestpeerresponse &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-requestpeerresponse-transact-sql.md) at any published database in the topology. This stored procedure is executed on the publication database at a Publisher participating in a peer-to-peer replication topology. For more information, see [Peer-to-Peer Transactional Replication](../Topic/Peer-to-Peer%20Transactional%20Replication.md).  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_helppeerrequests [ @publication = ] 'publication'  
    [ , [ @description = ] 'description'  
```  
  
## Arguments  
 [ **@publication**= ] **'***publication***'**  
 Is the name of the publication in a peer-to-peer topology for which status requests were sent. *publication* is **sysname**, with no default.  
  
 [ **@description**= ] **'***description***'**  
 Value that can be used to identify individual status requests, which enables you to filter returned responses based on user defined information supplied when calling [sp_requestpeerresponse &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-requestpeerresponse-transact-sql.md). *description* is **nvarchar(4000)**, with a default of **%**. By default, all status requests for the publication are returned. This parameter is used to return only status requests with a description matching the value supplied in *description*, where character strings are matched using a [LIKE &#40;Transact-SQL&#41;](../Topic/LIKE%20\(Transact-SQL\).md) clause.  
  
## Result Sets  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**id**|**int**|Identifies a request.|  
|**publication**|**sysname**|Name of the publication for which the status request was sent.|  
|**sent_date**|**datetime**|Date and time that the status request was sent.|  
|**description**|**nvarchar(4000)**|User defined information that can be used to identify individual status requests.|  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_helppeerrequests** is used in peer-to-peer transactional replication.  
  
 **sp_helppeerrequests** is used when restoring a database published in a peer-to-peer topology.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role or the **db_owner** fixed database role can execute **sp_helppeerrequests**.  
  
## See Also  
 [sp_deletepeerrequesthistory &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-deletepeerrequesthistory-transact-sql.md)   
 [sp_helppeerresponses &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-helppeerresponses-transact-sql.md)  
  
  