---
title: "Options (Query Execution/SQL Server/General Page) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-22"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "VS.ToolsOptionsPages.QueryExecution.SqlServer.SqlExecutionGeneral"
ms.assetid: 3f8d59bc-3f97-4e5d-8b86-5ac670d20780
caps.latest.revision: 36
ms.author: "rickbyh"
manager: "jhubbard"
---
# Options (Query Execution/SQL Server/General Page)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Use this page to specify the options for running [!INCLUDE[ssNoVersion_md](../a9notintoc/includes/ssnoversion-md.md)] queries. Changes to these options are only applied to new [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] queries. To change the options for a current query, click **Query Options** on the **Query** menu, or in a [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Query window right-click and select **Query Options**.  
  
## Options  
 **SET ROWCOUNT**  
 The default value of 0 indicates that [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] will wait for results until all results are received. Provide a value greater than 0 if you want [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] to halt the query after obtaining the specified number of rows. To turn this option off (so that all rows are returned), specify SET ROWCOUNT 0.  
  
 **SET TEXTSIZE**  
 The default value of 2,147,483,647 bytes indicates that [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] will provide complete data fields up to the limit of **text** and **ntext** data fields. Provide a smaller number to limit results in the case of large values. Columns greater than the number provided will be truncated.  
  
 **Execution time-out**  
 Sets the default value in the **New Connection** dialog box. Use this spin box to tell [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] the number of seconds to wait before canceling the query. A value of 0 indicates an infinite wait, or no time-out. This value is 0 on a new installation.  
  
 **Batch separator**  
 Type a word that you use to separate [!INCLUDE[tsql](../a9notintoc/includes/tsql-md.md)] statements into batches. The default is `GO`.  
  
 **By default, open new queries in SQLCMD Mode**  
 Select this check box to open new queries in SQLCMD mode. For more information about SQLCMD mode, see [Edit SQLCMD Scripts with Query Editor](../relational-databases/scripting/edit-sqlcmd-scripts-with-query-editor.md).  
  
 When you select this option, be aware of the following limitations:  
  
-   IntelliSense in the [!INCLUDE[ssDE](../a9notintoc/includes/ssde-md.md)] Query Editor is turned off.  
  
-   Because Query Editor does not run from the command line, you cannot pass in command-line parameters such as variables.  
  
-   Because Query Editor cannot respond to operating-system prompts, you must be careful not to run interactive statements.  

**Prompt to save unsaved T-SQL query windows on close**  
Controls whether the save prompt dialog is displayed for ad-hoc query windows on close.

 **Reset to Default**  
 Resets all values on this page to the original default values.  
 
  
## See Also  
[sqlcmd Utility](../tools/sqlcmd-utility.md)   
  
  