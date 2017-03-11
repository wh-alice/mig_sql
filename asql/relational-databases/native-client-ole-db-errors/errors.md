---
title: "Errors | Microsoft Docs"
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
  - "OLE/COM errors"
  - "errors [OLE DB]"
  - "OLE DB error handling, about error handling"
  - "OLE DB error handling"
ms.assetid: bd0612f4-96ef-4919-b0f9-b5447210fe93
caps.latest.revision: 37
ms.author: "jhubbard"
manager: "jhubbard"
---
# Errors
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  OLE/COM objects report errors through the HRESULT return code of object member functions. An OLE/COM HRESULT is a bit-packed structure. OLE provides macros that dereference structure members.  
  
 OLE/COM specifies the **IErrorInfo** interface. The interface exposes methods such as **GetDescription**. This allows clients to extract error details from OLE/COM servers. OLE DB extends **IErrorInfo** to support the return of multiple error information packets on a single-member function execution.  
  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] can return multiple errors. An application can retrieve server errors one at a time by calling [IMultipleResults::GetResult](http://go.microsoft.com/fwlink/?LinkId=129630) combined with ISQLErrorInfo and IErrorRecords.  
  
 The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider exposes the OLE DB record-enhanced **IErrorInfo**, the custom **ISQLErrorInfo**, and the provider-specific [ISQLServerErrorInfo](http://msdn.microsoft.com/library/a8323b5c-686a-4235-a8d2-bda43617b3a1) error object interfaces.  
  
 For information about tracing errors, see [Data Access Tracing](http://go.microsoft.com/fwlink/?LinkId=125805). For information about enhancements to error tracing added in [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)], see [Accessing Diagnostic Information in the Extended Events Log](../../relational-databases/native-client/features/accessing-diagnostic-information-in-the-extended-events-log.md).  
  
## In This Section  
  
-   [Return Codes](../../relational-databases/native-client-ole-db-errors/return-codes.md)  
  
-   [Information in Error Interfaces](../../relational-databases/native-client-ole-db-errors/information-in-error-interfaces.md)  
  
-   [SQL Server Error Detail](../../relational-databases/native-client-ole-db-errors/sql-server-error-detail.md)  
  
-   [Retrieving Error Information](../../relational-databases/native-client-ole-db-errors/retrieving-error-information.md)  
  
-   [SQL Server Message Results](../../relational-databases/native-client-ole-db-errors/sql-server-message-results.md)  
  
## See Also  
 [SQL Server Native Client &#40;OLE DB&#41;](../../relational-databases/native-client/ole-db/sql-server-native-client-ole-db.md)  
  
  