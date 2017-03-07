---
title: "Custom Report Item Implementation Requirements | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "custom report items"
ms.assetid: cfacd816-00d6-4a3d-be72-1bba6f7f6886
caps.latest.revision: 22
ms.author: "carlasab"
manager: "erikre"
---
# Custom Report Item Implementation Requirements
  This topic will discuss the prerequisites for developing and deploying custom report items.  
  
## Development and Deployment Requirements  
 Developing a custom report item for [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] requires the following:  
  
-   Administrative access to a server running [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] with [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] and [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)].  
  
-   [!INCLUDE[vsprvsext](../../reporting-services/custom-report-items/includes/vsprvsext-md.md)] or above with the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] software development kit (SDK) installed.  
  
-   Access to the [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] SDK documentation.  
  
-   Familiarity with component authoring and the component model namespaces in [!INCLUDE[vsprvs](../../analysis-services/multidimensional-models/includes/vsprvs-md.md)]. For more information, see "Component Authoring" and "Component Model Namespaces in Visual Studio" on msdn.microsoft.com.  
  
## Language and Namespace Requirements  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] custom report items fully support the [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)]. You can develop custom report items using your choice of .NET-compliant languages.  
  
 [!INCLUDE[vsprvs](../../analysis-services/multidimensional-models/includes/vsprvs-md.md)] offers the developer many tools and features to simplify and accelerate the iterative cycles of coding, debugging, and testing and to make deployment easier. The [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] SDK includes [!INCLUDE[vbprvb](../../analysis-services/data-mining/includes/vbprvb-md.md)] and C# compilers and related tools.  
  
-   Custom report items use the **Microsoft.ReportDesigner** and <xref:Microsoft.ReportingServices.Interfaces> namespaces. These are stored in the Microsoft.ReportingServices.Designer.DLL and Microsoft.ReportingServices.Interfaces.DLL assemblies, which are installed as part of [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)].  
  
-   Custom report item design-time components need to implement interfaces from the <xref:System.ComponentModel> namespace in the [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)]. The <xref:System.ComponentModel> is documented in the [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] SDK documentation.  
  
> [!IMPORTANT]  
>  By default, the [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] is installed with [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], but the [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] SDK is not. Unless the SDK is installed on the computer and the SDK documentation is included in the Books Online collection, links to SDK content in this section will not work. After you have installed the [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] SDK, you can add the SDK documentation to the Books Online collection and table of contents by following the instructions in [Add or Remove Product Documentation for SQL Server](../Topic/Add%20or%20Remove%20Product%20Documentation%20for%20SQL%20Server.md).  
  
## See Also  
 [Creating a Custom Report Item Run-Time Component](../../reporting-services/custom-report-items/creating-a-custom-report-item-run-time-component.md)   
 [Creating a Custom Report Item Design-Time Component](../../reporting-services/custom-report-items/creating-a-custom-report-item-design-time-component.md)   
 [How to: Deploy a Custom Report Item](../../reporting-services/custom-report-items/how-to-deploy-a-custom-report-item.md)   
 [Custom Report Item Class Libraries](../../reporting-services/custom-report-items/custom-report-item-class-libraries.md)  
  
  