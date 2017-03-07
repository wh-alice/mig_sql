---
title: "MSSQLSERVER_9004 | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
helpviewer_keywords: 
  - "9004 (Database Engine error)"
ms.assetid: b528bb49-340c-4a81-9c8d-cefce6562f16
caps.latest.revision: 16
ms.author: "jhubbard"
manager: "jhubbard"
---
# MSSQLSERVER_9004
  
## Details  
  
|||  
|-|-|  
|Product Name|SQL Server|  
|Event ID|9004|  
|Event Source|MSSQLSERVER|  
|Component|SQLEngine|  
|Symbolic Name|LOG_CORRUPT|  
|Message Text|An error occurred while processing the log for database '%.*ls'.  If possible, restore from backup. If a backup is not available, it might be necessary to rebuild the log.|  
  
## Explanation  
An error was encountered while processing the log during rollback, recovery, or replication. This could indicate an error detected by the operating system-or an internal consistency error detected by [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)].  
  
## User Action  
One of the following actions will correct this error:  
  
-   Restore from a backup.  
  
-   Rebuild the log.  
  
Also, check system event and error logs to identify issues within the system that may have caused the problem.  
  
