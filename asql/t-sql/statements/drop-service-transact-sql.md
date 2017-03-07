---
title: "DROP SERVICE (Transact-SQL) | Microsoft Docs"
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
  - "DROP_SERVICE_TSQL"
  - "DROP SERVICE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "deleting services"
  - "services [Service Broker], removing"
  - "dropping services"
  - "DROP SERVICE statement"
  - "removing services"
ms.assetid: 2351bba7-0f2a-4cda-b3b2-6a88b8747c53
caps.latest.revision: 36
ms.author: "rickbyh"
manager: "jhubbard"
---
# DROP SERVICE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Drops an existing service.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
DROP SERVICE service_name  
[ ; ]  
```  
  
## Arguments  
 *service_name*  
 The name of the service to drop. Server, database, and schema names cannot be specified.  
  
## Remarks  
 You cannot drop a service if any conversation priorities refer to it.  
  
 Dropping a service deletes all messages for the service from the queue that the service uses. [!INCLUDE[ssSB](../../database-engine/configure/windows/includes/sssb-md.md)] sends an error to the remote side of any open conversations that use the service.  
  
## Permissions  
 Permission for dropping a service defaults to the owner of the service, members of the db_ddladmin or db_owner fixed database roles, and members of the sysadmin fixed server role.  
  
## Examples  
 The following example drops the service `//Adventure-Works.com/Expenses`.  
  
```  
DROP SERVICE [//Adventure-Works.com/Expenses] ;  
```  
  
## See Also  
 [ALTER BROKER PRIORITY &#40;Transact-SQL&#41;](../../t-sql/statements/alter-broker-priority-transact-sql.md)   
 [ALTER SERVICE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-service-transact-sql.md)   
 [CREATE SERVICE &#40;Transact-SQL&#41;](../../t-sql/statements/create-service-transact-sql.md)   
 [DROP BROKER PRIORITY &#40;Transact-SQL&#41;](../../t-sql/statements/drop-broker-priority-transact-sql.md)   
 [EVENTDATA &#40;Transact-SQL&#41;](../../t-sql/functions/eventdata-transact-sql.md)  
  
  