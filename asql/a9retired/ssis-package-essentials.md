---
title: "SSIS Package Essentials | Microsoft Docs"
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
  - "package requirements"
ms.assetid: b0c86c35-e3d3-4724-9a96-4087e9d74bf3
caps.latest.revision: 29
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# SSIS Package Essentials
  A package is the object that implements [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] functionality to extract, transform, and load data. You create a package by using the [!INCLUDE[ssIS](../a9retired/includes/ssis-md.md)] Designer in [!INCLUDE[ssBIDevStudio](../a9notintoc/includes/ssbidevstudio-md.md)]. You can also create a package by running the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Import and Export Wizard or the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] Connections Project Wizard. For more information, see [Create Packages in SQL Server Data Tools](../integration-services/create-packages-in-sql-server-data-tools.md) and [SQL Server Import and Export Wizard](SQL%20Server%20Import%20and%20Export%20Wizard.md).  
  
 A basic package includes the following elements:  
  
 **Control flow elements**  
 These required elements perform various functions, provide structure, and control the order in which elements run. The main control flow elements are tasks, containers, and precedence constraints. There must be at least one control flow element in a package.  
  
 For more information, see [Control Flow](../integration-services/control-flow/control-flow.md).  
  
 **Data flow elements**  
 These optional elements extract data, modify data, and load data into data sources. The main data flow elements are sources, transformations, and destinations. There does not have to be any data flow elements in package.  
  
 For more information, see [Data Flow](../integration-services/data-flow/data-flow.md).  
  
 For an example of how to create a basic package, see [Lesson 1: Create a Project and Basic Package with SSIS](../integration-services/tutorials/lesson-1-create-a-project-and-basic-package-with-ssis.md).  
  
## Related Tasks  
  
-   [Create Packages in SQL Server Data Tools](../integration-services/create-packages-in-sql-server-data-tools.md)  
  
-   [Add or Delete a Task or a Container in a Control Flow](../integration-services/control-flow/add-or-delete-a-task-or-a-container-in-a-control-flow.md)  
  
-   [Set the Properties of a Task or Container](../a9retired/set-the-properties-of-a-task-or-container.md)  
  
-   [Add or Delete a Component in a Data Flow](../integration-services/data-flow/add-or-delete-a-component-in-a-data-flow.md)  
  
## Related Content  
  
1.  Video, [Creating a Basic Package (SQL Server Video)](http://go.microsoft.com/fwlink/?LinkId=131023), on MSDN.Microsoft.com  
  
## See Also  
 [Integration Services &#40;SSIS&#41; Packages](../integration-services/integration-services-ssis-packages.md)   
 [Precedence Constraints](../integration-services/control-flow/precedence-constraints.md)  
  
  