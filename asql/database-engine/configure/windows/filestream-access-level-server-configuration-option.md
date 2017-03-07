---
title: "filestream access level Server Configuration Option | Microsoft Docs"
ms.custom: ""
ms.date: "2017-03-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "FILESTREAM [SQL Server], access level"
  - "filestream access level"
ms.assetid: b88f6ff2-795e-4730-bfb8-dbc6a958f2ad
caps.latest.revision: 15
ms.author: "jhubbard"
manager: "jhubbard"
---
# filestream access level Server Configuration Option
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Use the filestream_access_level option to change the FILESTREAM access level for this instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
> [!NOTE]  
>  Before this option has any effect, the Windows administration settings for FILESTREAM must be enabled. You can enable these settings when you install [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] or by using [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Configuration Manager.  
  
|Value|Definition|  
|-----------|----------------|  
|0|Disables FILESTREAM support for this instance.|  
|1|Enables FILESTREAM for [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] access.|  
|2|Enables FILESTREAM for [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] and Win32 streaming access.|  
  
## See Also  
 [Database Engine Configuration - Filestream](../../../a9retired/database-engine-configuration-filestream.md)   
 [Enable and Configure FILESTREAM](../../../relational-databases/blob/enable-and-configure-filestream.md)  
  
  