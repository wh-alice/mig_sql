---
title: "Manually Fail Over a Database Mirroring Session (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-high-availability"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "failover [SQL Server], database mirroring"
  - "manual failover [SQL Server]"
  - "database mirroring [SQL Server], failover"
ms.assetid: 36218d61-b5f5-4194-905a-608e0e903db4
caps.latest.revision: 32
ms.author: "mikeray"
manager: "jhubbard"
---
# Manually Fail Over a Database Mirroring Session (Transact-SQL)
  When the mirrored database is synchronized (that is, when the database is in the SYNCHRONIZED state), the database owner can initiate manual failover to the mirror server. Manual failover can be initiated only from the principal server.  
  
### To manually fail over a database mirroring session  
  
1.  Connect to the principal server.  
  
2.  Set the database context to the **master** database:  
  
     **USE master;**  
  
3.  Issue the following statement on the principal server:  
  
     [ALTER DATABASE](../../t-sql/statements/alter-database-transact-sql-database-mirroring.md) *database_name* SET PARTNER FAILOVER, where *database_name* is the mirrored database.  
  
     This initiates an immediate transition of the mirror server to the principal role.  
  
 On the former principal, clients are disconnected from the database and in-flight transactions are rolled back.  
  
> [!NOTE]  
>  Transactions that have been prepared by using the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Distributed Transaction Coordinator but are still not committed when a failover occurs are considered aborted after the database has failed over.  
  
## See Also  
 [ALTER DATABASE Database Mirroring &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql-database-mirroring.md)   
 [Manually Fail Over a Database Mirroring Session &#40;SQL Server Management Studio&#41;](../../database-engine/database-mirroring/manually-fail-over-a-database-mirroring-session-sql-server-management-studio.md)   
 [Role Switching During a Database Mirroring Session &#40;SQL Server&#41;](../../database-engine/database-mirroring/role-switching-during-a-database-mirroring-session-sql-server.md)  
  
  