---
title: "Monitor Disk Usage | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "database monitoring [SQL Server], disk usage"
  - "disks [SQL Server]"
  - "monitoring performance [SQL Server], disk usage"
  - "server performance [SQL Server], disk usage"
  - "monitoring [SQL Server], disk activity"
  - "excess paging [SQL Server]"
  - "tuning databases [SQL Server], disk usage"
  - "I/O [SQL Server], monitoring"
  - "disks [SQL Server], monitoring activity"
  - "isolating disk activity [SQL Server]"
  - "database performance [SQL Server], disk usage"
  - "monitoring server performance [SQL Server], disk usage"
ms.assetid: 1525449c-ea7d-4222-b294-1ba1fe99c9ac
caps.latest.revision: 23
ms.author: "rickbyh"
manager: "jhubbard"
---
# Monitor Disk Usage
  Microsoft [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] uses Microsoft Windows operating system input/output (I/O) calls to perform read and write operations on your disk. [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] manages when and how disk I/O is performed, but the Windows operating system performs the underlying I/O operations. The I/O subsystem includes the system bus, disk controller cards, disks, tape drives, CD-ROM drive, and many other I/O devices. Disk I/O is frequently the cause of bottlenecks in a system.  
  
 Monitoring disk activity involves two areas of focus:  
  
-   Monitoring Disk I/O and Detecting Excess Paging  
  
-   Isolating Disk Activity That [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Creates  
  
 For more information see, [Monitoring Disk Usage](http://social.technet.microsoft.com/wiki/contents/articles/monitoring-disk-usage.aspx)  
  
  