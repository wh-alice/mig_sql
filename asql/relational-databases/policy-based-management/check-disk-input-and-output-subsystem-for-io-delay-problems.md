---
title: "Check Disk Input and Output Subsystem for IO Delay Problems | Microsoft Docs"
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
  - "Best Practices [Database Engine]"
ms.assetid: 23863340-d8e0-48d6-928b-462745885d37
caps.latest.revision: 10
ms.author: "jhubbard"
manager: "jhubbard"
---
# Check Disk Input and Output Subsystem for IO Delay Problems
  This rule checks the event log for error message 833. This message indicates that [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] has issued a read or write request from disk, and that the request has taken longer than 15 seconds to return. This error is reported by [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] and indicates a problem with the disk I/O subsystem. Delays this long can severely damage the performance of your [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] environment.  
  
## Best Practices Recommendations  
 Troubleshoot this error by examining the system event log for hardware-related error messages. Also, examine hardware-specific logs if they are available.  
  
 Use Performance Monitor to examine the following counters:  
  
-   Average Disk Sec/Transfer  
  
-   Average Disk Queue Length  
  
-   Current Disk Queue Length  
  
 For example, the Average Disk Sec/Transfer time on a computer that is running [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] is typically less than 15 milliseconds. If the Average Disk Sec/Transfer value increases, this indicates that the disk I/O subsystem is not optimally keeping up with the I/O demand.  
  
## For More Information  
 [MSSQLSERVER_833](../Topic/MSSQLSERVER_833.md)  
  
 [Microsoft Knowledge Base article 897284](http://go.microsoft.com/fwlink/?linkid=117743)  
  
 [SQL Server I/O Basics, Chapter 2](http://go.microsoft.com/fwlink/?LinkId=69370)  
  
  