---
title: "Heterogeneous Database Replication | Microsoft Docs"
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
  - "heterogeneous database replication, about heterogeneous database replication"
  - "replication [SQL Server], heterogeneous database replication"
  - "heterogeneous database replication"
ms.assetid: 3fd983ad-e206-45db-9054-417c9b5bb815
caps.latest.revision: 41
ms.author: "rickbyh"
manager: "jhubbard"
---
# Heterogeneous Database Replication
  [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] supports the following heterogeneous scenarios for transactional and snapshot replication:  
  
-   Publishing data from Oracle to [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
-   Publishing data from [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] to non-[!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Subscribers.  
  
 Heterogeneous replication to non-SQL Server subscribers is deprecated. Oracle Publishing is deprecated. To move data, create solutions using change data capture and [!INCLUDE[ssIS](../../../a9retired/includes/ssis-md.md)].  
  
> [!CAUTION]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)]  
  
## Publishing Data from Oracle  
 You can use [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] to publish data from Oracle with most of the same features and ease-of-use as [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] snapshot and transactional replication. Publishing data from Oracle is ideal for the following scenarios:  
  
|Scenario|Description|  
|--------------|-----------------|  
|[!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] .NET Framework application deployments|Develop with [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] Visual Studio and [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] while operating on data replicated from a non-[!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] database.|  
|Data warehousing staging servers|Keep [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] staging databases synchronized with a non-[!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] database.|  
|Migration to [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]|Test your application in real time against [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] while replicating the source system's changes. Switch to [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] when satisfied with the migration.|  
  
 For more information, see [Oracle Publishing Overview](../../../relational-databases/replication/non-sql/oracle-publishing-overview.md).  
  
## Publishing Data to Non-SQL Server Subscribers  
 The following non-[!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] databases are supported as Subscribers to snapshot and transactional publications:  
  
-   Oracle for all platforms that Oracle supports.  
  
-   IBM DB2 for AS400, MVS, Unix, Linux, and Windows.  
  
 For more information, see [Non-SQL Server Subscribers](../../../relational-databases/replication/non-sql/non-sql-server-subscribers.md).  
  
  