---
title: "sp_help_peerconflictdetection (Transact-SQL) | Microsoft Docs"
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
  - "sp_help_peerconflictdetection"
  - "sp_help_peerconflictdetection_TSQL"
helpviewer_keywords: 
  - "sp_help_peerconflictdetection"
ms.assetid: 59e04107-5eaa-44a1-beb6-ac4f2dbbcb28
caps.latest.revision: 13
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_help_peerconflictdetection (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns information about the conflict detection settings for a publication that is involved in a peer-to-peer transactional replication topology.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_help_peerconflictdetection [ @publication = ] 'publication'  
    [ ,[ @timeout = ] timeout ]  
```  
  
## Arguments  
 [ @publication= ] '*publication*'  
 Is the name of the publication for which to return information. *publication* is **sysname**, with no default.  
  
 [ @timeout= ] *timeout*  
 Specifies the amount of time, in seconds, after which the procedure will time out while waiting for response from every node in the topology. If there is a read-only Subscriber in the topology, specifying a time-out value is not valid. Read-only Subscribers will never respond to a call from this procedure. *timeout* is **int**, with a default of 60.  
  
## Result Sets  
 sp_help_peerconflictdetection returns three result sets. These results are documented in the following topics:  
  
-   [MSpeer_conflictdetectionconfigrequest](../../relational-databases/system-tables/mspeer-conflictdetectionconfigrequest-transact-sql.md)  
  
-   [MSpeer_conflictdetectionconfigresponse](../../relational-databases/system-tables/mspeer-conflictdetectionconfigresponse-transact-sql.md)  
  
-   [Mspeer_originatorid_history](../../relational-databases/system-tables/mspeer-originatorid-history-transact-sql.md)  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 sp_help_peerconflictdetection is used in peer-to-peer transactional replication.  
  
## Permissions  
 Requires membership in the sysadmin fixed server role or db_owner fixed database role.  
  
## See Also  
 [Conflict Detection in Peer-to-Peer Replication](../Topic/Conflict%20Detection%20in%20Peer-to-Peer%20Replication.md)   
 [Peer-to-Peer Transactional Replication](../Topic/Peer-to-Peer%20Transactional%20Replication.md)   
 [Replication Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/replication-stored-procedures-transact-sql.md)  
  
  