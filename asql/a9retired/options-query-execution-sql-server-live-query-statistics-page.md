---
title: "Options (Query Execution/SQL Server/Live Query Statistics Page) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-26"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql12.swb.sqleditors.livequerystatisticssettings"
  - "VS.TOOLSOPTIONSPAGES.QUERY_EXECUTION.SQL_SERVER.LIVE_QUERY_STATISTICS"
  - "sql13.swb.sqleditors.livequerystatisticssettings"
ms.assetid: c96aa09a-b399-428d-bbe3-0cd2da714e1d
caps.latest.revision: 6
ms.author: "rickbyh"
manager: "jhubbard"
---
# Options (Query Execution/SQL Server/Live Query Statistics Page)
  This page configures the options for live query statistics. The live query plan displays the overall query progress and the run-time execution statistics (e.g. elapsed time, progress, etc.) for the query plan operators. The query progress information and execution statistics are periodically updated while query execution is in progress. Use this information to understand the overall query execution process and to debug long running queries, queries that run indefinitely, queries that cause tempdb overflow, and timeout issues. For more information, see [Live Query Statistics](https://msdn.microsoft.com/library/dn831878.aspx).  
  
## UIElement List  
 **Compilation Polling Interval (milliseconds)**  
 Configures the frequency of the aggregation and updating of the live query statistics.  
  
 **Node Polling Interval (milliseconds)**  
 Configures the frequency that live query statistics checks for more information.  
  
  