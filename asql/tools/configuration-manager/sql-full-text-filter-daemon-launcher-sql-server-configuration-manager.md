---
title: "SQL Full-text Filter Daemon Launcher (SQL Server Configuration Manager) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: d0dc03db-5f76-4558-b041-1ac7b9b5bb16
caps.latest.revision: 8
ms.author: "rickbyh"
manager: "jhubbard"
---
# SQL Full-text Filter Daemon Launcher (SQL Server Configuration Manager)
  Beginning in [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)], the SQL Full-text Filter Daemon Launcher (FDHOST Launcher) service is used by [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] full-text search to start the filter daemon host process, which handles full-text search filtering and word breaking. This service must be running to use full-text search. The FDHOST Launcher service is an instance-aware service that is associated with a specific instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. The FDHOST Launcher service propagates the service account information to each filter daemon host process started. For information about the filter daemon host processes, see "Full-Text Search Architecture" in [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Books Online.  
  
  