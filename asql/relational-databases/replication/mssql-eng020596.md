---
title: "MSSQL_ENG020596 | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "MSSQL_ENG020596 error"
ms.assetid: fa33627c-2e99-4be3-9424-52ab83446e07
caps.latest.revision: 14
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSSQL_ENG020596
    
## Message Details  
  
|||  
|-|-|  
|Product Name|SQL Server|  
|Event ID|20596|  
|Event Source|MSSQLSERVER|  
|Component|[!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)]|  
|Symbolic Name||  
|Message Text|Only '%s' or members of db_owner can drop the anonymous agent.|  
  
## Explanation  
 You do not have sufficient permissions to drop the agent for the anonymous subscription. The login used when calling [sp_dropanonymousagent &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-dropanonymousagent-transact-sql.md) must be a member of the **sysadmin** fixed server role at the Distributor or **db_owner** fixed database role in the distribution database, or the user must be the one that initiated the first run of the agent.  
  
## User Action  
 Login with the appropriate credentials, and execute **sp_dropanonymousagent**.  
  
## See Also  
 [Errors and Events Reference &#40;Replication&#41;](../../relational-databases/replication/errors-and-events-reference-replication.md)  
  
  