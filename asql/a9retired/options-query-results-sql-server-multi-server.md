---
title: "Options (Query Results - SQL Server - Multi-Server) | Microsoft Docs"
ms.custom: ""
ms.date: "02/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.swb.sqleditors.multiserverresultssettings"
  - "VS.ToolsOptionsPages.QueryResults.SqlServer.SQLMultiServerResults"
ms.assetid: d6768bd8-9cb5-4606-a726-a33a1df9e1bb
caps.latest.revision: 10
ms.author: "rickbyh"
manager: "jhubbard"
---
# Options (Query Results - SQL Server - Multi-Server)
  When you are querying multiple servers at the same time, use this page to specify the options for displaying result sets. Merge results combines the result sets from all servers into a single result set. When merging results, the first server to respond sets the schema for the result set. To merge the result sets, the query must return the same number of columns with the same column names from each server. When merging results, a message is displayed for each server that does not match the schema (column count and column names) that is returned by the first server to return results.  
  
 When you do not merge results, the result set from each server will be displayed in its own grid with its own schema.  
  
## UIElement List  
 **Merge results**  
 Select this check box to combine the result sets from several servers into the same grid.  
  
 **Add server name to the results**  
 Select this check box to include an additional column that provides the name of the server that produced each row.  
  
 **Add login name to the results**  
 Select this check box to include an additional column that provides the login that was used to connect to the server that provided each row.  
  
## See Also  
 [Create a Central Management Server and Server Group &#40;SQL Server Management Studio&#41;](../tools/sql-server-management-studio/da265482-3953-440a-ac23-0ab7e42a55eb.md)   
 [Execute Statements Against Multiple Servers Simultaneously &#40;SQL Server Management Studio&#41;](../tools/sql-server-management-studio/197760f3-0a06-43de-8162-69c27d3fbe56.md)  
  
  