---
title: "Copy Project Items | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "data sources [Integration Services], copying"
  - "packages [Integration Services], copying"
  - "copying data source views"
  - "copying data sources"
  - "copying packages"
  - "data source views [Integration Services], copying"
ms.assetid: 1606c54d-20f9-49f3-a4ef-caad83a772aa
caps.latest.revision: 16
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# Copy Project Items
  This topic describes how to copy objects within an [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] project or between [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] projects. You can also copy objects between the other types of [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)] projects, [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] and [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)]. To copy between projects, the project must be part of the same [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)] solution.
  
### To copy project level items  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], open the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] project or solution that you want to work with.  
  
2.  Expand the project and item folder to copy from.  
  
3.  Right-click the item and click **Copy**.  
  
4.  Right-click the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] project to copy to and click **Paste**.  
  
     The items are automatically copied to the correct folder. If you copy items to the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] project that are not packages, the items are copied to the **Miscellaneous** folder.  
  
## See Also  
 [Integration Services &#40;SSIS&#41; Packages](../integration-services/integration-services-ssis-packages.md)   
 [Copy Package Objects](../integration-services/copy-package-objects.md)  
  
  