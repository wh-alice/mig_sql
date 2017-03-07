---
title: "Migrate Scripts to VSTA | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "SSIS Script task, converting scripts"
  - "Script component [Integration Services], converting scripts"
  - "Script task [Integration Services], converting scripts"
  - "SSIS Script component, converting scripts"
ms.assetid: d685098b-86a1-46bf-939a-63d56951e009
caps.latest.revision: 43
ms.author: "carlasab"
manager: "erikre"
robots: noindex,nofollow
---
# Migrate Scripts to VSTA
  When you upgrade [!INCLUDE[ssVersion2005](../a9notintoc/includes/ssversion2005-md.md)] packages to [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)], [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] migrates the scripts in any Script tasks or Script components to [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[vsprvs](../a9retired/includes/vsprvs-md.md)] Tools for Applications (VSTA). VSTA is the scripting environment that [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] uses. In [!INCLUDE[ssVersion2005](../a9notintoc/includes/ssversion2005-md.md)], the scripting environment for [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] is [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[vsprvs](../a9retired/includes/vsprvs-md.md)] for Applications (VSA).  
  
 If the scripts in either the Script tasks or Script components reference interfaces, you might have to modify those references before you upgrade the package. Otherwise, the package will not be upgraded or the scripts will not be validated, depending on the upgrade method that you use. To modify these references, replace references to IDTS*xxx*90 interfaces with references to the corresponding IDTS*xxx*100 interfaces.  
  
 For more information about how to migrate scripts and upgrade packages, see [Upgrade Integration Services Packages](../integration-services/install/windows/upgrade-integration-services-packages.md).  
  
## Understanding Migration Failures  
 When you migrate the scripts, the migration can fail because of one of the following reasons:  
  
-   The entry point for the VSA script was renamed.  
  
     The entry point specifies the method in the **ScriptMain** class in the VSTA project that the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] runtime calls as the entry point into the Script task code. The **ScriptMain** class is the default class that the script templates generate.  
  
-   There is no entry point or there are multiple entry points in the VSA script.  
  
-   Assembly references could not be added.  
  
-   The **ScriptMain** class was modified to inherit from other classes in addition to the **ScriptObjectModelSSIS** class. [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../a9retired/includes/dnprdnshort-md.md)] does not support multiple inheritance.  
  
 You cannot convert a VSA script that uses [!INCLUDE[vbprvblong](../a9retired/includes/vbprvblong-md.md)] to a VSTA script that uses [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[csharp_orcas_long](../a9retired/includes/csharp-orcas-long-md.md)]. However, you can create a new VSTA script that uses [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[csharp_orcas_long](../a9retired/includes/csharp-orcas-long-md.md)]. For more information, see [Coding and Debugging the Script Task](../integration-services/extending-packages-scripting/task/coding-and-debugging-the-script-task.md) and [Coding and Debugging the Script Component](../integration-services/extending-packages-scripting/data-flow-script-component/coding-and-debugging-the-script-component.md).  
  
## See Also  
 [Extending Packages with Scripting](../integration-services/extending-packages-scripting/extending-packages-with-scripting.md)  
  
  