---
title: "Save a Package as a Package Template | Microsoft Docs"
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
  - "reusing packages"
  - "templates [Integration Services]"
ms.assetid: efe66cec-3933-4f6e-8d35-fe3d300de66c
caps.latest.revision: 17
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# Save a Package as a Package Template
  This topic describes how to designate and use custom packages as templates when you create new Integration Services packages in [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)]. By default, [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] uses a package template that creates an empty package when you add a new package to an [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] project. You cannot replace this default template, but you can add new templates.  
  
 You can designate multiple packages to use as templates. Before you can implement custom packages as templates, you must create the packages.  
  
 When you create package using custom packages as templates, the new packages have the same name and GUID as the template. To differentiate among packages you should update the value of the **Name** property and generate a new GUID for the **ID** property. For more information, see [Create Packages in SQL Server Data Tools](../integration-services/create-packages-in-sql-server-data-tools.md) and [Set Package Properties](../integration-services/set-package-properties.md).  
  
### To designate a custom package as a package template  
  
1.  In the file system, locate the package that you want to use as template.  
  
2.  Copy the package to the DataTransformationItems folder. By default this folder is in C:\Program Files\Microsoft Visual Studio 9.0\Common7\IDE\PrivateAssemblies\ProjectItems\DataTransformationProject.  
  
3.  Repeat steps 1 and 2 for each package that you want to use as a template.  
  
### To use a custom package as a package template  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], open the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] project in which you want to create a package.  
  
2.  In Solution Explorer, right-click the project, point to **Add**, and then click **New Item**.  
  
3.  In the **Add New Item -\<project name>** dialog box, click the package that you want to use as a template.  
  
     The list of templates includes the default package template named New SSIS Package. The package icon identifies templates that can be used as package templates.  
  
4.  Click **Add**.  
  
## See Also  
 [Create Packages in SQL Server Data Tools](../integration-services/create-packages-in-sql-server-data-tools.md)   
 [Integration Services &#40;SSIS&#41; Packages](../integration-services/integration-services-ssis-packages.md)  
  
  