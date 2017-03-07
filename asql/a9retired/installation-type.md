---
title: "Installation Type | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 0420c555-7a3b-42b9-8651-0b4f5bcb0008
caps.latest.revision: 11
ms.author: "mikeray"
manager: "jhubbard"
robots: noindex,nofollow
---
# Installation Type
  Use the Installation Type page of the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Installation Wizard to specify whether to install a new instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)], or add features to an existing instance.  
  
## Options  
 Select the radio button that specifies your choice:  
  
-   Perform a new installation of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]  
  
-   Add features to an existing instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]  
  
     If you select the option to add features to an existing instance, use the drop-down list to select the instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] to update.  
  
 You can only add the SysPrep supported features—[!INCLUDE[ssDE](../a9notintoc/includes/ssde-md.md)] and [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)]—to a prepared image of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]. Other features that are not supported by SysPrep can be added after the prepared instance is completed.  
  
 **Note** You cannot add features to a failover cluster instance after it is installed. To add [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] features to an existing failover cluster, you must perform a new installation to install a separate instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)].  
  
  