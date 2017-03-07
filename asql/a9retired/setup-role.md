---
title: "Setup Role | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: c7e9db15-89f2-4d4d-8860-1e64c5821c4d
caps.latest.revision: 15
ms.author: "mikeray"
manager: "erikre"
robots: noindex,nofollow
---
# Setup Role
  Use this page to specify whether to use the Feature Selection page to select individual features, or to install using a setup role.  
  
 A **setup role** is a fixed selection of all the features and shared components that are required to implement a predefined [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] configuration.  
  
## Options  
 **[!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Feature Installation**  
 Choose this option to select individual features and shared components. Instance features include Database Engine Services, Analysis Services (native mode), and Reporting Services.  
  
 **[!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] for SharePoint**  
 Choose this option to install Analysis Services server components in a SharePoint 2010 farm. This option deploys the [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] System Service and the Analysis Services server in a farm, enabling query and data processing for published Excel workbooks that contain embedded [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] data.  
  
 Optionally, you can add a relational database engine instance to your installation if you require it to host databases in a SharePoint farm. If the farm is already configured, you can skip this option.  
  
 After Setup is finished, you must configure the software using one of the following approaches: [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] Configuration tool, PowerShell cmdlets, or SharePoint 2010 Central Administration. In contrast with previous releases, Setup no longer performs any configuration tasks for a [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] installation.  
  
 A role-based installation does not include the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)][!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] for Excel client application. The client application is installed separately.  
  
 **All Features With Defaults**  
 Choose this setup role to install all features that are available for this release. Note that [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] for SharePoint is excluded from this role. You must use the [!INCLUDE[ssGemini](../a9notintoc/includes/ssgemini-md.md)] for SharePoint setup role to install that feature.  
  
 The [!INCLUDE[ssDE](../a9notintoc/includes/ssde-md.md)] is configured to start using the **NT AUTHORITY\NETWORK SERVICE** account. The current user will be provisioned as a member of the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]**sysadmin** role. Values set by this option can be overridden by specifying additional command line parameters.  
  
 When the operating system is not a domain controller, by default the Database Engine and Reporting Services will use the NTAUTHORITY\NETWORK SERVICE account, Integration Services will use the NTAUTHORITY\NETWORK SERVICE account, and the SQL Full text Filter Daemon Launcher will use the NTAUTHORITY\LOCAL SERVICE account.  
  
## See Also  
 [Installing Power Pivot for SharePoint](http://go.microsoft.com/fwlink/?LinkId=206906)   
 [Hardware and Software Requirements (Power Pivot for SharePoint](http://go.microsoft.com/fwlink/?LinkId=216823)   
 [Feature Selection](../a9retired/feature-selection.md)  
  
  