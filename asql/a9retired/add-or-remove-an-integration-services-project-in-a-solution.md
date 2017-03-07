---
title: "Add or Remove an Integration Services Project in a Solution | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-24"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "adding projects"
  - "Integration Services projects, adding"
  - "SQL Server Integration Services projects, adding"
  - "SSIS projects, adding"
  - "projects [Integration Services], adding"
ms.assetid: f01f6475-b63c-41dc-82ac-b62162b3adf7
caps.latest.revision: 49
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# Add or Remove an Integration Services Project in a Solution
  The following procedures descibe how to add or remove an [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] project in a solution.  
  
 You can only add or remove a project from a solution when that solution is visible in [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)]. If you have selected the **Always show solution** option in [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[vsprvs](../a9retired/includes/vsprvs-md.md)], [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)] will display a solution even when that solution contains only one project. Otherwise, [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)] will display a solution only when that solution contains more than one project. The additional projects can be either [!INCLUDE[ssIS](../a9retired/includes/ssis-md.md)] projects or projects of other types.  
  
## Add an Integration Services project  
 When you add a project, you can have [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] create a new, blank project, or you can add a project that you have already created for a different solution. You can only add a project to an existing solution when the solution is visible in [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)].  
  
#### Add a new project to a solution  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], open the solution to which you want to add a new [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] project, and do one of the following:  
  
    -   Right-click the solution, click **Add**, and then click **New Project**.  
  
    -   On the **File** menu, point to **Add**, and then click **New Project**.  
  
2.  In the **Add New Project** dialog box, click **Integration Services Project** in the **Templates** pane.  
  
3.  Optionally, edit the project name and location.  
  
4.  Click **OK**.  
  
#### Add an existing project to a solution  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], open the solution to which you want to add an existing [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] project, and do one of the following:  
  
    -   Right-click the solution, point to **Add**, and then click **Existing Project**.  
  
    -   On the **File** menu, click **Add**, and then click **Existing Project**.  
  
2.  In the **Add Existing Project** dialog box, browse to locate the project you want to add, and then click **Open**.  
  
3.  The project is added to the solution folder in **Solution Explorer**.  
  
## Remove an Integration Services Project  
 You can only remove a project from a solution when the solution is visible in [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)]. After the solution is visible, you can remove all except one project. As soon as only one project remains, [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)] no longer displays the solution folder and you cannot remove the last project.  
   
1.  In [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], open the solution from which you want to remove an [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] project.  
  
2.  In Solution Explorer, right-click the project, and then click **Unload Project**.  
  
3.  Click **OK** to confirm the removal.  
  
## See also  
 [Integration Services (SSIS) Projects](https://msdn.microsoft.com/library/ms138028.aspx)   
 [Create a New Integration Services Project](../a9retired/create-a-new-integration-services-project.md)  
  
  