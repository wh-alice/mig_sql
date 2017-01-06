---
title: "Options (Environment - General Page) | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "VS.TOOLSOPTIONSPAGES.ENVIRONMENT.GENERAL"
  - "VS.ToolsOptionsPages.Environment.SQLEnvironmentOptions"
  - "DevLang-TSQL"
ms.assetid: c32ccdb8-2cf8-4c78-b474-a3abd3dbbd13
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
# Options (Environment - General Page)
Use the **Options** dialog box to configure Microsoft SQL Server Management Studio startup actions, general window management options, and other general settings. On the **Tools** menu, click **Options**, expand the **Environment** folder, and then click **General**.  
  
## UIElement List  
**At startup**  
Select the action for SQL Server Management Studio to perform when it is started. The options are:  
  
-   **Open Object Explorer** prompts for a connection and then opens Object Explorer.  
  
-   **Open new query window** prompts for a connection and then opens SQL Query Editor.  
  
-   **Open Object Explorer and new query** prompts for a connection, then opens both Object Explorer and SQL Query Editor with that connection.  
  
-   **Open empty environment** opens SQL Server Management Studio without a SQL Query editor window and without connecting Object Explorer to a server.  
  
**Hide system objects in Object Explorer**  
Select this check box to remove the system databases, system tables, system views, and system stored procedures from tree view in Object Explorer. System functions and system data types are not hidden. This option only applies to instances of SQL Server and does not affect servers already connected in Object Explorer.  
  
## Environment Layout  
You must close and reopen SQL Server Management Studio to change between tabbed document and multiple-document interface (MDI) environment mode.  
  
**Tabbed documents**  
Select this option to display document windows that are tabbed together within editors. Tabbed document windows are useful for organizing and switching between multiple open documents.  
  
**MDI environment**  
Select this option to open documents in a MDI environment. MDI document windows are useful for gaining the screen space that is otherwise taken up by the tabs in the tabbed documents environment. When working in MDI mode, you can switch between documents by pressing CTRL+TAB, or you can use the tile options located on the **Window** menu.  
  
## Docked Tool Window Behavior  
**Close button affects active tab only**  
Specifies that when this check box is selected, only the tool window that has focus currently is closed and not all of the tool windows in the docked set. By default, this check box is selected.  
  
**Auto Hide button affects active tab only**  
Specifies that when this check box is selected, only the tool window that has focus currently is hidden automatically, not all of the tool windows in the docked set. By default, this check box is cleared.  
  
## Display  
**Display n files in recently used list**  
Customizes the number of recent projects and recent files that appear on the **File** menu. Type a number between 1 and 24. The default is 4. This is an easy way to retrieve recently used script projects and files and script projects.  
  
