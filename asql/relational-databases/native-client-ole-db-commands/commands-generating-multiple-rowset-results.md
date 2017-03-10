---
title: "Commands Generating Multiple-Rowset Results | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "multiple rowsets"
  - "rowsets [OLE DB], multiple"
  - "SQL Server Native Client OLE DB provider, commands"
  - "SQL Server Native Client OLE DB provider, multiple rowsets"
  - "commands [OLE DB]"
  - "multiple-rowset results"
ms.assetid: 4567668d-35fd-4162-b61f-f7536862cdcb
caps.latest.revision: 30
ms.author: "jhubbard"
manager: "jhubbard"
---
# Commands Generating Multiple-Rowset Results
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider can return multiple rowsets from [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] statements. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] statements return multiple-rowset results under the following conditions:  
  
-   Batched SQL statements are submitted as a single command.  
  
-   Stored procedures implement a batch of SQL statements.  
  
## Batches  
 The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider recognizes the semicolon character as a batch delimiter for SQL statements:  
  
```  
WCHAR*       wSQLString = L"SELECT * FROM Categories; "  
                          L"SELECT * FROM Products";  
```  
  
 Sending multiple SQL statements in one batch is more efficient than executing each SQL statement separately. Sending one batch reduces the network round trips from the client to the server.  
  
## Stored Procedures  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] returns a result set for each statement in a stored procedure, so most [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] stored procedures return multiple result sets.  
  
## In This Section  
  
-   [Using IMultipleResults to Process Multiple Result Sets](../../relational-databases/native-client-ole-db-commands/using-imultipleresults-to-process-multiple-result-sets.md)  
  
## See Also  
 [Commands](../../relational-databases/native-client-ole-db-commands/commands.md)  
  
  