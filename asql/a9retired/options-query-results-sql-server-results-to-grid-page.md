---
title: "Options (Query Results/SQL Server/Results to Grid Page) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2015-10-29"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "VS.ToolsOptionsPages.QueryResults.SqlServer.SQLResultsToGrid"
ms.assetid: f88a0f5c-e800-473b-ae23-c3943de5ed63
caps.latest.revision: 29
ms.author: "rickbyh"
manager: "jhubbard"
---
# Options (Query Results/SQL Server/Results to Grid Page)
  Use this page to specify the options for displaying a query result set in grid format. Changes to these options are applied only to new [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] queries. To change the options for the current queries, click **Query Options** on the **Query** menu, or right-click in the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Query window and select **Query Options**. In the left pane of the **Query Options** dialog box, under **Results**, click **Grid**.  
  
## UIElement List  
 **Include the query in the result set**  
 Returns the text of the query as part of the query output.  
  
 **Include column headers when copying or saving the results**  
 Select this check box to include column headers when results are copied to the clipboard, or saved in a file. Clear this check box if you want saved or copied result data to have only the data and not the column headings.  
  
 **Retain CR/LF on copy or save**  
 Select this check box if you want to keep Carriage Return/Line Feed (newline characters) when copying or saving text from the results grid. Clear this box if you want to copy or save text as it appears in the grid (with CR/LF replaced by spaces).  
  
 **Discard results after execution**  
 Prevents query results from being displayed in the reviewing pane. The results are discarded immediately after execution. Specifying this option helps save memory.  
  
 **Display results in a separate tab**  
 Select this check box to display the result set in a new tab, instead of at the bottom of the query document window.  
  
 **Switch to results tab after the query executes**  
 Click to automatically set the screen focus to the results pane upon execution of a query.  
  
 **Maximum Characters Retrieved**  
 **Non XML data**:  
  
 Enter a number from 1 through 65535 to specify the maximum number of characters that will be displayed in each cell.  
  
> **NOTE:** Specifying a large number of characters may cause data in the result set to appear truncated. The maximum number of characters displayed in each cell is dependent on the font size. When large result sets are returned, a high value in this box can cause [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)] to run low on memory and hinder system performance.  
  
 **XML data**:  
  
 Select **1 MB**, **2 MB**, or **5 MB**. Select **Unlimited** to retrieve all characters.  
  
 **Reset to Default**  
 Resets all values on this page to the original default values.  
  
  