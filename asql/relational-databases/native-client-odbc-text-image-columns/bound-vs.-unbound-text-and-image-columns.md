---
title: "Bound vs. Unbound Text and Image Columns | Microsoft Docs"
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
  - "text columns [ODBC]"
  - "SQL Server Native Client ODBC driver, image columns"
  - "SQL Server Native Client ODBC driver, text columns"
  - "data types [ODBC], image"
  - "data types [ODBC], text"
  - "columns [ODBC]"
  - "ODBC data types, image columns"
  - "ODBC data types, text columns"
  - "image columns [ODBC]"
ms.assetid: ffd3442e-d880-46e9-b848-2365a09a2406
caps.latest.revision: 29
ms.author: "jhubbard"
manager: "jhubbard"
---
# Bound vs. Unbound Text and Image Columns
[!INCLUDE[SNAC_Deprecated](../../a9retired/includes/snac-deprecated.md)]

  When using server cursors, the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client ODBC driver is optimized to not transmit the data for unbound **text**, **ntext**, or **image** columns at the time **SQLFetch** is performed. The **text**, **ntext**, or **image** data is not actually retrieved from the server until the application issues [SQLGetData](../../relational-databases/extended-stored-procedures-reference/sqlgetdata.md) for the column.  
  
 Many applications can be written so that no **text**, **ntext**, or **image** data is displayed while a user is simply scrolling up and down in a cursor. When a user selects a row to get more detail, the application can then call **SQLGetData** to retrieve the **text**, **ntext**, or **image** data. This will prevent transmitting the **text**, **ntext**, or **image** data for any of the rows the user does not select, and can therefore prevent the transmission of very large amounts of data.  
  
## See Also  
 [Managing Text and Image Columns](../../relational-databases/native-client-odbc-text-image-columns/managing-text-and-image-columns.md)   
 [Cursor Behaviors](../../relational-databases/native-client-odbc-cursors/cursor-behaviors.md)  
  
  