---
title: "Database Mirroring: Interoperability and Coexistence (SQL Server) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-17"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-high-availability"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "high availability [SQL Server], interoperability and coexistence"
  - "Database Engine [SQL Server], high availability"
ms.assetid: 89fef397-e0cf-4e08-b598-25b8d4170523
caps.latest.revision: 16
ms.author: "mikeray"
manager: "jhubbard"
---
# Database Mirroring: Interoperability and Coexistence (SQL Server)
  Database mirroring can be used with the following features or components of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]:  
  
-   [Always On Failover Cluster Instances (SQL Server Failover Clustering)](../../database-engine/database-mirroring/database-mirroring-and-sql-server-failover-cluster-instances.md)  
  
-   [Change data capture (and change tracking)](../../relational-databases/track-changes/change-data-capture-and-other-sql-server-features.md)  
  
-   [Database snapshots](../../database-engine/database-mirroring/database-mirroring-and-database-snapshots-sql-server.md)  
  
-   [Full-text catalogs](../../database-engine/database-mirroring/database-mirroring-and-full-text-catalogs-sql-server.md)  
  
-   [Log shipping](../../database-engine/database-mirroring/database-mirroring-and-log-shipping-sql-server.md)  
  
-   [Replication](../../database-engine/database-mirroring/database-mirroring-and-replication-sql-server.md)  
  
 Database mirroring does not interoperate with the following:  
  
-   Cross-database transactions/distributed transactions  
  
     For information about why such transactions are not supported, see [Cross-Database Transactions and Distributed Transactions for Always On Availability Groups and Database Mirroring &#40;SQL Server&#41;](../Topic/Cross-Database%20Transactions%20and%20Distributed%20Transactions%20for%20Always%20On%20Availability%20Groups%20and%20Database%20Mirroring%20\(SQL%20Server\).md).  
  
-   [!INCLUDE[ssHADR](../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)]  
  
## See Also  
 [Database Mirroring &#40;SQL Server&#41;](../../database-engine/database-mirroring/database-mirroring-sql-server.md)  
  
  