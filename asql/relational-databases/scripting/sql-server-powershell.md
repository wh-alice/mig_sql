---
title: "SQL Server PowerShell | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-04"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 89b70725-bbe7-4ffe-a27d-2a40005a97e7
caps.latest.revision: 10
ms.author: "jhubbard"
manager: "jhubbard"
---
# SQL Server PowerShell
  [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] supports Windows PowerShell, which is a powerful scripting shell that lets administrators and developers automate server administration and application deployment. The Windows PowerShell language supports more complex logic than [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] scripts, giving [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] administrators the ability to build robust administration scripts. Windows PowerShell scripts can also be used to administer other [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] server products. This gives administrators a common scripting language across servers.  
  
## SQL Server PowerShell Components  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] provides a Windows PowerShell module named **sqlps** that is used to import the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] components into a Windows PowerShell environment or script. The **sqlps** module loads two Windows PowerShell snap-ins that implement:  
  
-   A [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] provider, which enables a simple navigation mechanism similar to file system paths. You can build paths similar to file system paths, where the drive is associated with a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] management object model, and the nodes are based on the object model classes. You can then use familiar commands such as **cd** and **dir** to navigate the paths similar to the way you navigate folders in a command prompt window. You can use other commands, such as **ren** or **del**, to perform actions on the nodes in the path.  
  
-   A set of cmdlets, which are commands used in Windows PowerShell scripts to specify a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] action. The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] cmdlets support actions such as running a **sqlcmd** script containing [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] or XQuery statements.  
  
 To learn about Windows PowerShell, see [Getting Started with Windows PowerShell](https://msdn.microsoft.com/powershell/scripting/getting-started/getting-started-with-windows-powershell).  
  
## SQL Server Versions  
 The [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] PowerShell components can be used to manage instances of [!INCLUDE[ssVersion2000](../../a9notintoc/includes/ssversion2000-md.md)] or later. Instances of [!INCLUDE[ssVersion2005](../../a9notintoc/includes/ssversion2005-md.md)] must be running SP2 or later. Instances of [!INCLUDE[ssVersion2000](../../a9notintoc/includes/ssversion2000-md.md)] must be running SP4 or later. When the [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] PowerShell components are used with earlier versions of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], they are limited to the functionality available in those versions.  
     
## SQL Server PowerShell Tasks  
  
|Task Description|Topic|  
|----------------------|-----------| 
|Installing Microsoft® Windows PowerShell Extensions for Microsoft [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].  The PowerShell modules are installed by default when installing [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)].  You can manually install the PowerShell Extensions for SQL Server 2016 by installing the following components from the Microsoft® SQL Server® 2016 Feature Pack:<br/>     Microsoft® System CLR Types for Microsoft SQL Server® 2016 (SQLSysClrTypes.msi)<br/>Microsoft® SQL Server® 2016 Shared Management Objects (SharedManagementObjects.msi)<br/> Microsoft® Windows PowerShell Extensions for Microsoft SQL Server® 2016 (PowerShellTools.msi)|[Microsoft® SQL Server® 2016 Feature Pack](https://www.microsoft.com/en-us/download/details.aspx?id=52676).   | 
|Describes the preferred mechanism for running the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] PowerShell components; to open a PowerShell session and load the **sqlps** module. The **sqlps** module loads in the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] PowerShell provider and cmdlets, and the SQL Server Management Object (SMO) assemblies used by the provider and cmdlets.|[Import the SQLPS Module](../../relational-databases/scripting/import-the-sqlps-module.md)|  
|Describes how to load only the SMO assemblies without the provider or cmdlets.|[Load the SMO Assemblies in Windows PowerShell](../../relational-databases/scripting/load-the-smo-assemblies-in-windows-powershell.md)|  
|Describes how to run a Windows PowerShell session by right-clicking a node in **Object Explorer**. [!INCLUDE[ssManStudio](../../a9notintoc/includes/ssmanstudio-md.md)] launches a Windows PowerShell session, loads the **sqlps** module, and sets the SQL Server provider path to the object selected.|[Run Windows PowerShell from SQL Server Management Studio](../../relational-databases/scripting/run-windows-powershell-from-sql-server-management-studio.md)|  
|Describes how to create SQL Server Agent job steps that run a Windows PowerShell script. The jobs can then be scheduled to run at specific times or in response to events.|[Run Windows PowerShell Steps in SQL Server Agent](../../relational-databases/scripting/run-windows-powershell-steps-in-sql-server-agent.md)|  
|Describes how to use the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] provider to navigate a hierarchy of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] objects.|[SQL Server PowerShell Provider](../../relational-databases/scripting/sql-server-powershell-provider.md)|  
|Describes how to use the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] cmdlets that specify [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] actions such as running a [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] script.|[Use the Database Engine cmdlets](../../relational-databases/scripting/use-the-database-engine-cmdlets.md)|  
|Describes how to specify [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] delimited identifiers that contain characters not supported by Windows PowerShell.|[SQL Server Identifiers in PowerShell](../../relational-databases/scripting/sql-server-identifiers-in-powershell.md)|  
|Describes how to make SQL Server Authentication connections. By default, the SQL Server PowerShell components use Windows Authentication connections using the Windows credentials of the process running Windows PowerShell.|[Manage Authentication in Database Engine PowerShell](../../relational-databases/scripting/manage-authentication-in-database-engine-powershell.md)|  
|Describes how to use variables implemented by the SQL Server PowerShell provider to control how many objects are listed when using Windows PowerShell tab completion. This is particularly useful when working on databases that contain large numbers of objects.|[Manage Tab Completion &#40;SQL Server PowerShell&#41;](../../relational-databases/scripting/manage-tab-completion-sql-server-powershell.md)|  
|Describes how to use Get-Help to get information about the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] components in the Windows PowerShell environment.|[Get Help SQL Server PowerShell](../../relational-databases/scripting/get-help-sql-server-powershell.md)|  
  
  