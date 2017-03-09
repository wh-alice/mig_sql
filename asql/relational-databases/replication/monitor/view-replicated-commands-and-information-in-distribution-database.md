---
title: "View Replicated Commands and Other Information in the Distribution Database (Replication Transact-SQL Programming) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_browsereplcmds"
  - "transactional replication, monitoring"
  - "distribution databases [SQL Server replication], viewing replicated commands"
  - "viewing replicated commands"
ms.assetid: 9c20acec-8fab-4483-b9c1-dfe3768f85dd
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# View Replicated Commands and Information in Distribution Database
  When using transactional replication, transaction commands are stored in the distribution database until the Distribution Agent propagates them to all Subscribers or a Distribution Agent at the Subscriber pulls the changes. These pending commands in the distribution database can be viewed programmatically using replication stored procedures. For more information, see [Replication Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/replication-stored-procedures-transact-sql.md).  
  
### To view replicated commands from all transactional publications in the distribution database  
  
1.  At the Distributor on the distribution database, execute [sp_browsereplcmds](../../../relational-databases/reference/system-stored-procedures/sp-browsereplcmds-transact-sql.md).  
  
### To view replicated commands in the distribution database from a specific article or from a specific database published using transactional replication  
  
1.  (Optional) At the Publisher on the publication database, execute [sp_helparticle](../../../relational-databases/reference/system-stored-procedures/sp-helparticle-transact-sql.md). Specify **@publication** and **@article**. Note the value of **article id** in the result set.  
  
2.  At the Distributor on the distribution database, execute [sp_browsereplcmds](../../../relational-databases/reference/system-stored-procedures/sp-browsereplcmds-transact-sql.md). (Optional) Specify the article ID from step 2 for **@article_id**. (Optional) Specify the ID of the publication database for **@publisher_database_id**, which can be obtained from the **database_id** column in the [sys.databases](../../../relational-databases/reference/system-catalog-views/sys.databases-transact-sql.md) catalog view.  
  
## See Also  
 [Programmatically Monitor Replication](../../../relational-databases/replication/monitor/programmatically-monitor-replication.md)  
  
  