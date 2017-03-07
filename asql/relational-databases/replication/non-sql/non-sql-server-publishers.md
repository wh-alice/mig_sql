---
title: "Non-SQL Server Publishers | Microsoft Docs"
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
  - "heterogeneous database replication, non-SQL Server Publishers"
  - "non-SQL Server Publishers"
  - "heterogeneous data sources, non-SQL Server Publishers"
  - "Publishers [SQL Server replication], Oracle"
ms.assetid: 08a160a6-33be-46b5-bc7b-d53180d8bdf1
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# Non-SQL Server Publishers
  Publishing data from non-[!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] sources allows you to consolidate data in [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]. [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] can subscribe to snapshot or transactional data published from an Oracle database. For more information about publishing from Oracle, see [Oracle Publishing Overview](../../../relational-databases/replication/non-sql/oracle-publishing-overview.md).  
  
 Heterogeneous replication to non-SQL Server subscribers is deprecated. Oracle Publishing is deprecated. To move data, create solutions using change data capture and [!INCLUDE[ssIS](../../../a9retired/includes/ssis-md.md)].  
  
> [!CAUTION]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)]  
  
 Publishing from non-[!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] databases is ideal for the following scenarios:  
  
|Scenario|Description|  
|--------------|-----------------|  
|[!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] .NET Framework application deployments|Develop with [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] Visual Studio and [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] while operating on data replicated from a non-[!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] database.|  
|Data warehousing staging servers|Keep [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] staging databases synchronized with a non-[!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] database.|  
|Migration to [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]|Test your application in real time against [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] while replicating the source system's changes. Switch to [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] when satisfied with the migration.|  
  
## See Also  
 [Heterogeneous Database Replication](../../../relational-databases/replication/non-sql/heterogeneous-database-replication.md)  
  
  