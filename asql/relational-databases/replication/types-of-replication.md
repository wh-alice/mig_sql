---
title: "Types of Replication | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "replication [SQL Server], types"
ms.assetid: c1655e8d-d14c-455a-a7f9-9d2f43e88ab4
caps.latest.revision: 38
ms.author: "rickbyh"
manager: "jhubbard"
---
# Types of Replication
  [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] provides the following types of replication for use in distributed applications:  
  
-   Transactional replication. For more information, see [Transactional Replication](../../relational-databases/replication/transactional/transactional-replication.md).  
  
-   Merge replication. For more information, see [Merge Replication](../../relational-databases/replication/merge/merge-replication.md).  
  
-   Snapshot replication. For more information, see [Snapshot Replication](../../relational-databases/replication/snapshot-replication.md).  
  
 The type of replication you choose for an application depends on many factors, including the physical replication environment, the type and quantity of data to be replicated, and whether the data is updated at the Subscriber. The physical environment includes the number and location of computers involved in replication and whether these computers are clients (workstations, laptops, or handheld devices) or servers.  
  
 Each type of replication typically begins with an initial synchronization of the published objects between the Publisher and Subscribers. This initial synchronization can be performed by replication with a *snapshot*, which is a copy of all of the objects and data specified by a publication. After the snapshot is created, it is delivered to the Subscribers. For some applications, snapshot replication is all that is required. For other types of applications, it is important that subsequent data changes flow to the Subscriber incrementally over time. Some applications also require that changes flow from the Subscriber back to the Publisher. Transactional replication and merge replication provide options for these types of applications.  
  
 Data changes are not tracked for snapshot replication; each time a snapshot is applied, it completely overwrites the existing data. Transactional replication tracks changes through the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] transaction log, and merge replication tracks changes through triggers and metadata tables.  
  
## See Also  
 [Replication Agents Overview](../../relational-databases/replication/agents/replication-agents-overview.md)  
  
  