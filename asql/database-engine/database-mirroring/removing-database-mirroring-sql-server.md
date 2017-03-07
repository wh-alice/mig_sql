---
title: "Removing Database Mirroring (SQL Server) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-high-availability"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "database mirroring [SQL Server], removing"
  - "stopping database mirroring [SQL Server]"
  - "removing database mirroring [SQL Server]"
ms.assetid: 40c72091-8f03-4037-8b55-5e95309fe145
caps.latest.revision: 32
ms.author: "mikeray"
manager: "jhubbard"
---
# Removing Database Mirroring (SQL Server)
  The database owner can manually stop a database mirroring session at any time, at either partner.  
  
## Impact of Removing Mirroring  
 When mirroring is removed, the following occurs:  
  
-   The relationship between the partners and between each partner and the witness breaks permanently, if any relationship exists.  
  
     If the partners are communicating with each other when the session is stopped, their relationship is immediately broken on both computers. If the partners are not communicating (the database is in a DISCONNECTED state at the time of stopping), the relationship is broken immediately on the partner from which mirroring is stopped; when the other partner tries to reconnect, it discovers that the database mirroring session has ended.  
  
-   Information about the mirroring session is dropped, unlike when pausing a session. Mirroring is removed on both the principal database and the mirror database. In **sys.databases**, the **mirroring_state** column and all other mirroring columns are set to NULL. For more information, see [sys.database_mirroring &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.database-mirroring-transact-sql.md).  
  
-   Each partner server instance is left with a separate copy of the database.  
  
-   The mirror database is left in the RESTORING state (see the **state** column of **sys.databases**), because the mirror database was created by using RESTORE WITH NORECOVERY. At this point, you can drop the former mirror database or restore it using WITH RECOVERY. When you recover the database, it will have diverged from the former principal database because the recovery starts a new recovery fork.  
  
> [!NOTE]  
>  To continue mirroring after stopping a session, you must establish a new database mirroring session. If you create a log backup after stopping mirroring, you must apply it to the mirror database before restarting mirroring.  
  
##  <a name="RelatedTasks"></a> Related Tasks  
 **To remove database mirroring**  
  
-   [Remove Database Mirroring &#40;SQL Server&#41;](../../database-engine/database-mirroring/remove-database-mirroring-sql-server.md)  
  
 **To start database mirroring**  
  
-   [Establish a Database Mirroring Session Using Windows Authentication &#40;SQL Server Management Studio&#41;](../Topic/Establish%20a%20Database%20Mirroring%20Session%20Using%20Windows%20Authentication%20\(SQL%20Server%20Management%20Studio\).md)  
  
-   [Establish a Database Mirroring Session Using Windows Authentication &#40;Transact-SQL&#41;](../../database-engine/database-mirroring/143c68a5-589f-4e7f-be59-02707e1a430a.md)  
  
  
## See Also  
 [ALTER DATABASE Database Mirroring &#40;Transact-SQL&#41;](../Topic/ALTER%20DATABASE%20Database%20Mirroring%20\(Transact-SQL\).md)   
 [Database Mirroring &#40;SQL Server&#41;](../../database-engine/database-mirroring/database-mirroring-sql-server.md)   
 [Pausing and Resuming Database Mirroring &#40;SQL Server&#41;](../../database-engine/database-mirroring/pausing-and-resuming-database-mirroring-sql-server.md)   
 [sys.databases &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.databases-transact-sql.md)  
  
  