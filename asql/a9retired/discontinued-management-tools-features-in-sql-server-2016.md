---
title: "Discontinued Management Tools Features in SQL Server 2016 | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: 6e58acd0-73c5-4161-9fbc-8ea531bc681c
caps.latest.revision: 29
ms.author: "sstein"
manager: "jhubbard"
robots: noindex,nofollow
---
# Discontinued Management Tools Features in SQL Server 2016
  This topic describes [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Management Tools features that are no longer available in [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)].  
  
## Features Removed in [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)]  
 None  
  
## Features Removed in [!INCLUDE[ssSQL14](../a9notintoc/includes/sssql14-md.md)]  
 None  
  
## Features Removed in [!INCLUDE[ssSQL11](../a9notintoc/includes/sssql11-md.md)]  
  
### SQL Server Compact Edition  
 The SQL Server Compact Edition code editor has been removed from [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)]. Support for SQL Server Compact Edition has also been removed from Object Explorer, Solution Explorer, and Template Explorer. Use the Transact-SQL editors in Microsoft Visual Studio 2010 Service Pack 1 or Webmatrix instead.  
  
### ActiveX Subsystem for SQL Server Agent  
 The ActiveX subsystem for SQL Server Agent has been removed in this release. There is no replacement functionality.  
  
### sp_addtask, sp_deletetask, sp_updatetask  
 Sp_addtask, sp_deletetask, and sp_updatetask have been removed in this release. Do not use this functionality in new or updated applications.  
  
### Net Send and Pager Notification  
 Net Send and Pager Notification have been removed in this release. Do not use this functionality in new or updated applications.  
  
### Data-tier Applications  
 Some data-tier application (DAC) features present in [!INCLUDE[ssKilimanjaro](../a9notintoc/includes/sskilimanjaro-md.md)] have been removed in [!INCLUDE[ssSQL11](../a9notintoc/includes/sssql11-md.md)]. However, the Data-Tier Application Framework (DACfx version 3.0) released with [!INCLUDE[ssSQL11](../a9notintoc/includes/sssql11-md.md)] is compatible with [!INCLUDE[ssVersion2005](../a9notintoc/includes/ssversion2005-md.md)] through [!INCLUDE[ssSQL11](../a9notintoc/includes/sssql11-md.md)] and [!INCLUDE[ssSDSFull](../a9retired/includes/sssdsfull-md.md)]. DAC version 3.0 is not supported by earlier versions of [!INCLUDE[ssManStudio](../a9notintoc/includes/ssmanstudio-md.md)] including [!INCLUDE[ssManStudio](../a9notintoc/includes/ssmanstudio-md.md)] in [!INCLUDE[ssKilimanjaro](../a9notintoc/includes/sskilimanjaro-md.md)]. Visual Studio 2010 Database Projects do not support DAC 3.0 DACPAC packages or DAC Export (BACPAC) packages generated with DACfx version 3.0 or later.  
  
 Microsoft recommends using the latest available version [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Data Tools Database Projects.  
  
 DACfx 3.0 API and [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] tools do support reading DACPAC and BACPAC files created using earlier [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] tools and DACfx versions: extracting databases into DACPAC files from these versions, and deploying databases into supported versions of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] through [!INCLUDE[ssManStudio](../a9notintoc/includes/ssmanstudio-md.md)] or [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Data Tools.  
  
## See Also  
 [Backward Compatibility_deleted](../Topic/Backward%20Compatibility_deleted.md)  
  
  