---
title: "Solution Explorer | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "SQL Server Management Studio [SQL Server], solutions"
  - "projects [SQL Server Management Studio], about projects"
  - "SQL Server Management Studio [SQL Server], projects"
  - "solutions [SQL Server Management Studio], about solutions"
  - "SQL Server Management Studio [SQL Server], items"
  - "items [SQL Server]"
ms.assetid: 0df09843-0d4f-4925-bc6c-99265035a0c1
caps.latest.revision: 3
ms.author: "sstein"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "zh-cn"
  - "zh-tw"
---
# Solution Explorer
The Solution Explorer pane in Microsoft SQL Server Management Studio provides containers called projects for managing items such as database scripts, queries, data connections, and files. One or more projects that are related to each other can be combined in a container called a solution.  
  
A solution includes one or more projects, plus files and metadata that help define the solution as a whole. A project is a set of files, plus related metadata such as connection information. Solutions and projects contain items that represent the scripts, queries, connection information and files that you need to create your database solution.  
  
> [!IMPORTANT]  
> This feature will be removed in a future version of Microsoft SQL Server. Avoid using this feature in new development work, and plan to modify applications that currently use this feature.  
  
## Benefits of Using Solutions  
Use these containers to:  
  
-   Implement source control on queries and scripts.  
  
-   Manage settings for your solution as a whole or for individual projects.  
  
-   Handle the details of file management while you focus on items that make up your database solution.  
  
-   Add items that are useful to multiple projects in the solution or to the solution without referencing the item in each project.  
  
-   Work on miscellaneous files that are independent from solutions or projects.  
  
The items contained in projects depend on the project type and whether you are using SQL Server Management Studio.  
  
## Related Tasks  
Use the following topics to get started with SQL Server Solutions:  
  
|||  
|-|-|  
|**Description**|**Topic**|  
|Describes how to collect one or more projects in a solution.|[Solutions &#40;SQL Server Management Studio&#41;](../ssms/solutions--sql-server-management-studio-.md)|  
|Describes how to create a project and add items like scripts and connections.|[Projects &#40;SQL Server Management Studio&#41;](../ssms/projects--sql-server-management-studio-.md)|  
|Provides information about the files used by SQL Server Management Studio to manage solutions and files.|[Files That Manage Solutions and Projects](../ssms/files-that-manage-solutions-and-projects.md)|  
  
