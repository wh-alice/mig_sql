---
title: "MSSQLSERVER_3169 | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "3169"
helpviewer_keywords: 
  - "3169 (Database Engine error)"
ms.assetid: 7d4dbed6-bb94-4908-bc03-2040a9cf63bc
caps.latest.revision: 16
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSSQLSERVER_3169
  
## Details  
  
|||  
|-|-|  
|Product Name|SQL Server|  
|Event ID|3169|  
|Event Source|MSSQLSERVER|  
|Component|SQLEngine|  
|Symbolic Name|NA|  
|Message Text|The database was backed up on a server running version %ls. That version is incompatible with this server, which is running version %ls. Either restore the database on a server that supports the backup, or use a backup that is compatible with this server.|  
  
## Explanation  
Certain features in [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] affect the structure of the database files. When you restore a database to another instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)], the file format might not be compatible with a different version of the [!INCLUDE[ssDEnoversion](../a9notintoc/includes/ssdenoversion-md.md)].  
  
For example, this error can be caused by using the vardecimalstorage format in a later version of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] and then trying to restore the database files in a version earlier than [!INCLUDE[ssVersion2005](../a9notintoc/includes/ssversion2005-md.md)] Service Pack 2.  
  
## User Action  
Determine the version of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] that is running on the originating server. In [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)], either right-click the server and then click **Properties** or type **SELECT @@VERSION** in a query window. Open the database by using the original version of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]. Investigate the features that are enabled on the original database in the instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]. Modify these settings to work with the version of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] in which the database will be restored.  
  
