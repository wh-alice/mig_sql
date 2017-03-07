---
title: "Install SQL Server PowerShell | Microsoft Docs"
ms.custom: ""
ms.date: "2016-02-24"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 854c0b2f-02d2-46a4-a8cc-6b7a5d191cf8
caps.latest.revision: 9
ms.author: "mikeray"
manager: "jhubbard"
---
# Install SQL Server PowerShell
  [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Setup automatically configures PowerShell components.  
  
## Installing [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] PowerShell Support  
 You install the software that provides [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] support for Windows PowerShell by using [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Setup. When you select any [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] features that require PowerShell support Setup installs the following [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] PowerShell components:  
  
-   The [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] PowerShell snap-ins. The snap-ins are dll files that implement two types of Windows PowerShell support for [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]:  
  
    -   A set of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] cmdlets. Cmdlets are commands that implement a specific action. For example, **Invoke-Sqlcmd** runs a [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] or XQuery script that can also be run by using the **sqlcmd** utility, and **Invoke-PolicyEvaluation** reports whether [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] objects comply with policy-based management policies.  
  
    -   A [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] provider. The provider lets you navigate the hierarchy of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] objects using a path similar to a file system path. Each object is associated with a class from the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Management object models. You can use the methods and properties of the class to perform work on the objects. For example, if you cd to a databases object in a path, you can use the methods and properties of the Microsoft.SqlServer.Managment.SMO.Database class to manage the database.  
  
-   The **sqlps** module that is imported into Windows PowerShell sessions to load the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] snap-ins.  
  
-   [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] supports starting Windows PowerShell sessions from the Object Explorer tree. [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent supports Windows PowerShell job steps.  
  
 Windows Server 2012 and later and Windows 8 and later come with PowerShell installed and configured. For information about installing Windows PowerShell see [Installing Windows PowerShell](http://msdn.microsoft.com/library/hh847837.aspx) page.  
  
## See Also  
 [SQL Server PowerShell](../../../relational-databases/scripting/sql-server-powershell.md)  
  
  