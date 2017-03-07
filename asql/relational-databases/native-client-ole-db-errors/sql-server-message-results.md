---
title: "SQL Server Message Results | Microsoft Docs"
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
  - "SQL Server Native Client OLE DB provider, errors"
  - "errors [OLE DB], SQL Server message results"
  - "OLE DB error handling, SQL Server message results"
ms.assetid: 6663c6f9-def1-4d9e-845b-2085e5efc401
caps.latest.revision: 29
ms.author: "jhubbard"
manager: "jhubbard"
---
# SQL Server Message Results
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  The following [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements do not generate [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider rowsets or a count of affected rows when executed:  
  
-   PRINT  
  
-   RAISERROR with a severity of 10 or lower  
  
-   DBCC  
  
-   SET SHOWPLAN  
  
-   SET STATISTICS  
  
 These statements either return one or more informational messages or cause [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to return informational messages in place of rowset or count results. On successful execution, the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider returns S_OK, and the messages are available to the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider consumer.  
  
 The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider returns S_OK and has one or more informational messages available following the execution of many [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements or the consumer execution of a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider member function.  
  
 The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider consumer allowing dynamic specification of query text should check error interfaces after every member function execution regardless of the value of the return code, the presence or absence of a returned **IRowset** or **IMultipleResults** interface reference, or a count of affected rows.  
  
## See Also  
 [Errors](../../relational-databases/native-client-ole-db-errors/errors.md)  
  
  