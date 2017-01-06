---
title: "Files That Manage Solutions and Projects | Microsoft Docs"
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
  - "projects [SQL Server Management Studio], files"
  - ".ssmssln files"
  - ".ssmsmobileproj files"
  - ".ssmsasproj files"
  - ".ssmssqlproj files"
  - ".sqlsuo files"
  - "files [SQL Server Management Studio], projects"
ms.assetid: e19d2859-0b97-4727-ac27-c4c226d86b2f
caps.latest.revision: 4
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
# Files That Manage Solutions and Projects
This topic describes the file types that are specific to Microsoft SQL Server Management Studio. By default, all solutions and their projects are created in \My Documents\SQL Server Management Studio Projects.  
  
## Management Studio Solution Files  
SQL Server Management Studio uses different file types than Microsoft SQL Server Data Tools (SSDT) or Microsoft Visual Studio. This means you cannot open a SQL Server Management Studio solution in SQL Server Data Tools (SSDT) or in Visual Studio. SQL Server Management Studio solution files allow Solution Explorer to display a graphical interface for managing your files.  
  
|Extension|File type|Description|Created by|  
|-------------|-------------|---------------|--------------|  
|.ssmssln|SQL Server Management Studio Solution Object|Provides the environment with references to the location on disk of Microsoft SQL Server projects, project items, and solution|SQL Server Management Studio|  
  
## Management Studio Project Files  
In the same way that solutions contain solution files that manage objects in a solution, projects contain project files. The type of project file that SQL Server Management Studio creates for a project depends on the template used to create the project. The following table describes the type of file created for each project.  
  
|Extension|Project template|  
|-------------|--------------------|  
|.ssmssqlproj|SQL Server Scripts Project|  
|.ssmsasproj|Analysis Services Scripts Project|  
  
## Location of Solution-Level Files  
By default, solution-level files are created in the physical directory of the first project that is created with the solution. You can specify a directory for the solution by creating a solution, or you can specify the directory when you create a new project.  
  
If you have a directory structure similar to the logical structure shown in Solution Explorer, project and solution files are easier to locate and share with other developers on a team.  
  
## See Also  
[Manage Files with Encoding](../ssms/manage-files-with-encoding.md)  
[Miscellaneous Files](../ssms/miscellaneous-files.md)  
[Solution Explorer](../ssms/solution-explorer.md)  
[Solutions &#40;SQL Server Management Studio&#41;](../ssms/solutions--sql-server-management-studio-.md)  
[Projects &#40;SQL Server Management Studio&#41;](../ssms/projects--sql-server-management-studio-.md)  
[Solution Explorer Source Control](https://msdn.microsoft.com/en-us/library/ms173879.aspx)  
  
