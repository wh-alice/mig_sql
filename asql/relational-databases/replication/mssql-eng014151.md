---
title: "MSSQL_ENG014151 | Microsoft Docs"
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
  - "MSSQL_ENG014151 error"
ms.assetid: 54b45e70-46b3-4c7a-a5bf-06f6dd028ceb
caps.latest.revision: 17
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSSQL_ENG014151
    
## Message Details  
  
|||  
|-|-|  
|Product Name|SQL Server|  
|Event ID|14151|  
|Event Source|MSSQLSERVER|  
|Component|[!INCLUDE[ssDEnoversion](../../a9notintoc/includes/ssdenoversion-md.md)]|  
|Symbolic Name||  
|Message Text|Replication-%s: agent %s failed. %s|  
  
## Explanation  
 This error is raised for any replication agent failure. The text at the end of the message depends on the context of the failure.  
  
## User Action  
 This error can occur in a number of situations; use the following approaches as necessary:  
  
-   Restart the failed agent to see if it will now run without failures. For more information, see [Start and Stop a Replication Agent &#40;SQL Server Management Studio&#41;](../../relational-databases/replication/agents/start-and-stop-a-replication-agent-sql-server-management-studio.md) and [Replication Agent Executables Concepts](../../relational-databases/replication/concepts/replication-agent-executables-concepts.md).  
  
-   Check the agent history and job history for other errors that occurred around the same time. For information about viewing agent status and error details in Replication Monitor, see the following topics:  
  
    -   For the Snapshot Agent, Log Reader Agent, and Queue Reader Agent, see [View Information and Perform Tasks for the Agents Associated With a Publication &#40;Replication Monitor&#41;](../../relational-databases/replication/monitor/2a420da2-66f4-4650-9bdd-1992221ed3fd.md).  
  
    -   For the Distribution Agent and Merge Agent, see [View Information and Perform Tasks for the Agents Associated With a Subscription &#40;Replication Monitor&#41;](../../relational-databases/replication/monitor/fbb59d31-2424-4552-9195-0da8d83e755f.md).  
  
-   Verify that basic connectivity is working between the computers accessed by the agent, and then connect to each computer with a utility like the [sqlcmd Utility](../../tools/sqlcmd-utility.md). When connecting, use the same account under which the agent makes connections. For more information about the permissions required by each agent account, see [Replication Agent Security Model](../../relational-databases/replication/security/replication-agent-security-model.md).  
  
-   If the error occurs while creating or applying a snapshot, check the files in the snapshot directory for errors.  
  
-   If the error continues to occur, increase the logging of the agent and specify an output file for the log. Depending on the context of the error, this could provide the steps leading up to the error and/or additional error messages.  
  
## See Also  
 [Replication Agent Administration](../../relational-databases/replication/agents/replication-agent-administration.md)   
 [Errors and Events Reference &#40;Replication&#41;](../../relational-databases/replication/errors-and-events-reference-replication.md)   
 [Replication Distribution Agent](../../relational-databases/replication/agents/replication-distribution-agent.md)   
 [Replication Log Reader Agent](../../relational-databases/replication/agents/replication-log-reader-agent.md)   
 [Replication Merge Agent](../../relational-databases/replication/agents/replication-merge-agent.md)   
 [Replication Queue Reader Agent](../../relational-databases/replication/agents/replication-queue-reader-agent.md)   
 [Replication Snapshot Agent](../../relational-databases/replication/agents/replication-snapshot-agent.md)  
  
  