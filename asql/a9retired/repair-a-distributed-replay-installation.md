---
title: "Repair a Distributed Replay Installation | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
ms.assetid: 6fcd8ca8-1ceb-457d-9545-096c74e274d7
caps.latest.revision: 9
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# Repair a Distributed Replay Installation
  Repairing a Distributed Replay component (controller or client) will do the following:  
  
1.  Install all associated files on disk again, and replace any existing files.  
  
2.  Recreate the Windows service account if the corresponding service account was removed.  
  
 You cannot use the Repair operation to add or remove components. To add or remove components, check or uncheck the corresponding component in the Feature tree on the **Feature Selection** page in [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Setup.  
  
### To repair a failed installation of Distributed Replay  
  
1.  From the **Start** menu, click **Control Panel**, and then double-click **Add or Remove Programs**.  
  
2.  Select [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] in the **Uninstall or change a program** window, and then in the [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] dialog box, click **Repair**.  
  
3.  Follow the steps in the [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] wizard, and on the **Select Features** page, select the Distributed Replay components you want to repair, and then click **Next.**.  
  
4.  Complete the [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] Installation Wizard to repair the selected Distributed Replay features.  
  
  