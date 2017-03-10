---
title: "Reuse of Package Objects | Microsoft Docs"
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
  - "GUID regenerating [Integration Services]"
  - "reusing packages"
  - "templates [Integration Services]"
  - "copying packages"
  - "regenerating package GUID"
ms.assetid: 08f723bf-15b5-44bd-9a46-04e8781bfbfb
caps.latest.revision: 22
ms.author: "douglasl"
manager: "jhubbard"
---
# Reuse of Package Objects
  Frequently packages functionality that you want to reuse. For example, if you created a set of tasks, you might want to reuse the items together as a group, or you might want to reuse a single item such as a connection manager that you created in a different [!INCLUDE[ssISnoversion](../advanced-analytics/r-services/includes/ssisnoversion-md.md)] project.  
  
## Copy and Paste  
 [!INCLUDE[ssBIDevStudioFull](../analysis-services/includes/ssbidevstudiofull-md.md)] and [!INCLUDE[ssIS](../analysis-services/instances/includes/ssis-md.md)] Designer support copying and pasting package objects, which can include control flow items, data flow items, and connection managers. You can copy and paste between projects and between packages. If the solution contains multiple projects you can copy between projects, and the projects can be of different types.  
  
 If a solution contains multiple packages, you can copy and paste between them. The packages can be in the same or different [!INCLUDE[ssISnoversion](../advanced-analytics/r-services/includes/ssisnoversion-md.md)] projects. However, package objects may have dependencies on other objects, without which they are not valid. For example, an Execute SQL task uses a connection manager, which you must copy as well to make the task work. Also, some package objects require that the package already contain a certain object, and without this object you cannot successfully paste the copied objects into a package. For example, you cannot paste a data flow into a package that does not have at least one Data Flow task.  
  
 You may find that you copy the same packages repeatedly. To avoid the copy process, you can designate these packages as templates and use them when you create new packages.  
  
 When you copy a package object, [!INCLUDE[ssISnoversion](../advanced-analytics/r-services/includes/ssisnoversion-md.md)] automatically assigns a new GUID to the **ID** property of the new object and updates the **Name** property.  
  
 You cannot copy variables. If an object such as a task uses variables, then you must re-create the variables in the destination package. In contrast, if you copy the entire package, then the variables in the package are also copied.  
  
## Related Tasks  
  
-   [Copy Package Objects](../integration-services/copy-package-objects.md)  
  
-   [Copy Project Items](http://msdn.microsoft.com/en-US/library/ms345175(SQL.130).aspx)  
  
-   [Save a Package as a Package Template](http://msdn.microsoft.com/en-US/library/ms345191(SQL.130).aspx)  
  
  