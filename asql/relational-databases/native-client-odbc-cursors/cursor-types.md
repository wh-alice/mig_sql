---
title: "Cursor Types | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "SQL Server Native Client ODBC driver, cursors"
  - "ODBC applications, cursors"
  - "cursors [ODBC], types"
  - "ODBC cursors, types"
ms.assetid: 3a916cc7-f352-42cb-8b83-f78e06cef991
caps.latest.revision: 28
ms.author: "jhubbard"
manager: "jhubbard"
---
# Cursor Types
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  ODBC defines four cursor types supported by Microsoft [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client ODBC driver. These cursors vary in their ability to detect changes to the result set and in the resources they consume, such as memory and space in **tempdb**. A cursor can detect changes to rows only when it tries to refetch those rows; there is no way for the data source to notify the cursor of changes to the currently fetched rows. A cursor's ability to detect changes that were not made through the cursor is also influenced by the transaction isolation level.  
  
 These are the four ODBC cursor types supported by [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]:  
  
-   Forward-only cursors do not support scrolling; they only support fetching rows serially from the start to the end of the cursor.  
  
-   Static cursors are built in **tempdb** when the cursor is opened. They always display the result set as it was when the cursor was opened. They never reflect changes to the data. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] static cursors are always read-only. Because a static server cursor is built as a work table in **tempdb**, the size of the cursor result set cannot exceed the maximum row size allowed by [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
-   Keyset-driven cursors have the membership and order of rows in the result set fixed when the cursor is opened. Changes to nonkey columns are visible through the cursor.  
  
-   Dynamic cursors are the opposite of static cursors. Dynamic cursors reflect all changes made to the rows in their result set. The data values, order, and membership of the rows in the result set can change on each fetch.  
  
## See Also  
 [Using Cursors &#40;ODBC&#41;](../../relational-databases/native-client-odbc-cursors/using-cursors-odbc.md)  
  
  