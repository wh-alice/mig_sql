---
title: "Copy a Package in SQL Server Data Tools | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "packages [Integration Services], copying"
  - "copying packages"
  - "regenerating package GUID"
  - "updating package properties"
ms.assetid: 03edc659-e76d-48c0-a749-5f1899b6b507
caps.latest.revision: 18
ms.author: "douglasl"
manager: "jhubbard"
---
# Copy a Package in SQL Server Data Tools
  This topic describes how to create a new [!INCLUDE[ssISnoversion](../advanced-analytics/r-services/includes/ssisnoversion-md.md)] package by copying an existing package, and how to update the **Name** and **GUID** properties of the new package.  
  
### To copy a package  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../analysis-services/includes/ssbidevstudiofull-md.md)], open the [!INCLUDE[ssISnoversion](../advanced-analytics/r-services/includes/ssisnoversion-md.md)] project that contains the package that you want to copy.  
  
2.  In Solution Explorer, double-click the package.  
  
3.  Verify either the package to copy is selected in Solution Explorer or the tab in SSIS Designer that contains the package is the active tab  
  
4.  On the **File** menu, click **Save \<package name> As**.  
  
    > [!NOTE]  
    >  The package must be opened in SSIS Designer before the **Save As** option appears on the **File** menu.  
  
5.  Optionally, browse to a different folder.  
  
6.  Update the name of the package file. Make sure that you retain the .dtsx file extension.  
  
7.  Click **Save**.  
  
8.  At the prompt, choose whether to update the name of the package object to match the file name. If you click **Yes**, the **Name** property of the package is updated. The new package is added to the [!INCLUDE[ssISnoversion](../advanced-analytics/r-services/includes/ssisnoversion-md.md)] project and opened in [!INCLUDE[ssIS](../analysis-services/instances/includes/ssis-md.md)] Designer.  
  
9. Optionally, click in the background of the **Control Flow** tab, and the click **Properties**.  
  
10. In the Properties window, click the value of the ID property, and then in the drop-down list click **\<Generate New ID>**.  
  
11. On the **File** menu, click **Save Selected Items** to save the new package.  
  
## See Also  
 [Save a Copy of a Package](../Topic/Save%20a%20Copy%20of%20a%20Package.md)   
 [Create Packages in SQL Server Data Tools](../integration-services/create-packages-in-sql-server-data-tools.md)   
 [Integration Services &#40;SSIS&#41; Packages](../integration-services/integration-services-ssis-packages.md)  
  
  