---
title: "Projects (SQL Server Management Studio) | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: c13af859-ca66-4e43-b76a-0650ac6566c0
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
# Projects (SQL Server Management Studio)
A Management Studio project is a collection of logically related scripts and files that can be saved together for database administration and development.  
  
## Script Project Overview  
SQL Server script projects are displayed in the Solution Explorer component of Management Studio. A script project can contain zero or more project files. You can add a project to a solution or combine more than one project within a solution.  
  
Projects can include the following:  
  
-   **Connections**. A connection, as persisted within a project, will contain login information, server name, default database, preferred protocol, authentication type, and connection properties. Connection information may optionally be stored with a script (see below).  
  
-   **SQLScripts**. Frequently used SQL scripts for the user. Double-clicking a .sql file within the project will cause the SQL Editor to open the selected script.  
  
-   **MDX, DMX, and XMLAScripts**. Frequently used MDX scripts for the user. Double-clicking an .mdx file within the project will cause the Editor to open the selected script.  
  
-   **Misc**. This folder can be used for files that do not neatly fit into any of the other default node types, such as a text file that contains the project objectives.  
  
Projects can also be integrated into a source code control system.  
  
## Connecting to an Instance of SQL Server from a Script Project  
A script project may contain connections to an instance of SQL Server. You can connect to an instance of SQL Server in a project by clicking the connection. This will open an SQL Script window that is connected to the instance of SQL Server defined in the connection you selected. If you open a SQL Server or MDX script with a connection that uses SQL Server authentication, you will be prompted for the password using the **Connect to SQL Server** dialog box after the Editor has been opened and the script loaded.  
  
The connection will be closed after the corresponding window is closed.  
  
To modify information about a connection, use the properties window in Management Studio.  
  
## Project Tasks  
  
|Task Description|Topic|  
|--------------------|---------|  
|Describes how to create a new project in a solution.|[Create a Project](../ssms/create-a-project.md)|  
|Describes how to add an existing project to a solution.|[Add an Existing Project to a Solution](../ssms/add-an-existing-project-to-a-solution.md)|  
|Describes how to change the default location at which project files are saved.|[Change the Default Location for Projects](../ssms/change-the-default-location-for-projects.md)|  
|Describes how to view the current properties for a project.|[View Project Properties](../ssms/view-project-properties.md)|  
|Describes how to add new items, such as connections or script files, to a project.|[Add New Items to a Project](../ssms/add-new-items-to-a-project.md)|  
|Describes how to establish the connection information for a query.|[Associate a Query with a Connection in a Project](../ssms/associate-a-query-with-a-connection-in-a-project.md)|  
|Describes how to change the connection information for a query.|[Change the Connection Associated with a Query](../ssms/change-the-connection-associated-with-a-query.md)|  
|Describes how to change connection properties.|[View or Change the Properties of a Connection in a Project](../ssms/view-or-change-the-properties-of-a-connection-in-a-project.md)|  
  
## See Also  
[Solution Explorer](../ssms/solution-explorer.md)  
[Solutions &#40;SQL Server Management Studio&#41;](../ssms/solutions--sql-server-management-studio-.md)  
[Solution Explorer Source Control](https://msdn.microsoft.com/en-us/library/ms173879.aspx)  
  
