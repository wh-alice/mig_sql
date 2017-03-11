---
title: "Analysis Services Scripts Project in SQL Server Management Studio | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "scripts [Analysis Services]"
  - "scripts [Analysis Services], projects"
  - "projects [Analysis Services], Analysis Server Scripts project"
  - "projects [Analysis Services], creating"
  - "Analysis Server Scripts project"
  - "items [Analysis Services]"
ms.assetid: c4f5a06b-e2e4-4660-a3a8-6fd356742c02
caps.latest.revision: 38
ms.author: "owend"
manager: "erikre"
---
# Analysis Services Scripts Project in SQL Server Management Studio
  In [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)], you can create an Analysis Server Scripts project in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] to group related scripts together for development, management, and source control purposes. If no solution is currently loaded in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], creating a new Analysis Server Scripts project automatically creates a new solution. Otherwise, the new Analysis Server Scripts project can be added to the existing solution or created in a new solution.  
  
 You use the following basic steps to create an Analysis Server Scripts project in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)]:  
  
1.  On the File menu, point to **New**, and then click **Project**.  
  
     Select **Analysis Server Scripts** project template and then specify a name and location for the new project.  
  
2.  Right-click **Connections** to create a new connection in the Connections folder of the Analysis Server Scripts project in Solution Explorer.  
  
     This folder contains connection strings to [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] instances, against which the scripts contained by the Analysis Server Scripts project can be executed. You can have multiple connections in an Analysis Server Scripts project, and you can choose a connection against which to run a script contained by the project at the time of execution.  
  
3.  Right-click **Queries** to create Multidimensional Expressions (MDX), Data Mining Extensions (DMX), and XML for Analysis (XMLA) scripts in the Scripts folder of the Analysis Server Scripts project in Solution Explorer. For more information, see [Script Administrative Tasks in Analysis Services](../../analysis-services/instances/script-administrative-tasks-in-analysis-services.md).  
  
4.  Right-click on the project, point to **Add**, and then select **Existing Item** to add miscellaneous files, such as text files that contain notes on the project, in the **Miscellaneous** folder of the Analysis Server Scripts project in Solution Explorer. These files are ignored by [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].  
  
## File Types  
 A [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] solution can contain several file types, depending on what projects you included in the solution and what items you included in each project for that solution. For more information about file types for solutions in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], see [Files That Manage Solutions and Projects](http://msdn.microsoft.com/library/e19d2859-0b97-4727-ac27-c4c226d86b2f). Typically, the files for each project in a [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] solution are stored in the solution folder, in a separate folder for each project.  
  
 The project folder for an Analysis Server Scripts project can contain the file types listed in the following table.  
  
|File type|Description|  
|---------------|-----------------|  
|Analysis Server Scripts project definition file (.ssmsasproj)|Contains metadata about the folders shown in Solution Explorer, as well as information that indicates which folders should display files included in the project.<br /><br /> The project definition file also contains the metadata for [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] connections contained in the project, as well as metadata that associates connections with script files included in the project.|  
|DMX script file (.dmx)|Contains a DMX script included in the project.|  
|MDX script file (.mdx)|Contains an MDX script included in the project.|  
|XMLA script file (.xmla)|Contains an XMLA script included in the project.|  
  
## Analysis Services Templates  
 When adding new MDX, DMX, or XMLA scripts to an Analysis Server Scripts project, you have the option of using Template Explorer to locate [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] templates, which are a collection of predefined scripts or statements that demonstrate how to perform a specified action. Template Explorer is available on the **View** menu and includes templates for [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)], and [!INCLUDE[ssEW](../../analysis-services/instances/includes/ssew-md.md)]. For more information, see [Use Analysis Services Templates in SQL Server Management Studio](../../analysis-services/instances/use-analysis-services-templates-in-sql-server-management-studio.md).  
  
## See Also  
 [Creating Multidimensional Models Using SQL Server Data Tools &#40;SSDT&#41;](../../analysis-services/multidimensional-models/creating-multidimensional-models-using-sql-server-data-tools-ssdt.md)   
 [Multidimensional Expressions &#40;MDX&#41; Reference](../../mdx/multidimensional-expressions-mdx-reference.md)   
 [Data Mining Extensions &#40;DMX&#41; Reference](../../dmx/data-mining-extensions-dmx-reference.md)   
 [Analysis Services Scripting Language &#40;ASSL for XMLA&#41;](../../analysis-services/scripting/analysis-services-scripting-language-assl-for-xmla.md)   
 [Analysis Services Scripting Language &#40;ASSL for XMLA&#41;](../../analysis-services/scripting/analysis-services-scripting-language-assl-for-xmla.md)  
  
  