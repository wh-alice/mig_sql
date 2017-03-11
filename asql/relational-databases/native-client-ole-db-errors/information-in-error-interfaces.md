---
title: "Information in Error Interfaces | Microsoft Docs"
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
  - "IErrorRecords interface"
  - "IErrorInfo interface"
  - "OLE DB error handling, error interfaces"
  - "ISQLErrorInfo interface"
  - "errors [OLE DB], error interfaces"
ms.assetid: 4620f03f-1193-43e7-ba19-ad022737d300
caps.latest.revision: 31
ms.author: "jhubbard"
manager: "jhubbard"
---
# Information in Error Interfaces
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider reports some error and status information in the OLE DB-defined error interfaces **IErrorInfo**, **IErrorRecords**, and **ISQLErrorInfo**.  
  
 The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider supports **IErrorInfo** member functions as follows.  
  
|Member function|Description|  
|---------------------|-----------------|  
|**GetDescription**|Descriptive error message string.|  
|**GetGUID**|GUID of the interface that defined the error.|  
|**GetHelpContext**|Not supported. Always returns zero.|  
|**GetHelpFile**|Not supported. Always returns NULL.|  
|**GetSource**|String "Microsoft SQL Server Native Client".|  
  
 The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider supports consumer-available **IErrorRecords** member functions as follows.  
  
|Member function|Description|  
|---------------------|-----------------|  
|**GetBasicErrorInfo**|Fills an ERRORINFO structure with basic information about an error. An ERRORINFO structure contains members that identify the HRESULT return value for the error, and the provider and interface to which the error applies.|  
|**GetCustomErrorObject**|Returns a reference on interfaces **ISQLErrorInfo,** and [ISQLServerErrorInfo](http://msdn.microsoft.com/library/a8323b5c-686a-4235-a8d2-bda43617b3a1).|  
|**GetErrorInfo**|Returns a reference on an **IErrorInfo** interface.|  
|**GetErrorParameters**|The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider does not return parameters to the consumer through **GetErrorParameters**.|  
|**GetRecordCount**|Count of error records available.|  
  
 The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider supports **ISQLErrorInfo::GetSQLInfo** parameters as follows.  
  
|Parameter|Description|  
|---------------|-----------------|  
|*pbstrSQLState*|Returns a SQLSTATE value for the error. SQLSTATE values are defined in the SQL-92, ODBC and ISO SQL, and API specifications. Neither [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] nor the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider defined implementation-specific SQLSTATE values.|  
|*plNativeError*|Returns the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] error number from **master.dbo.sysmessages** when available. Native errors are available after a successful attempt to initialize a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider data source. Prior to the attempt, the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider always returns zero.|  
  
## See Also  
 [Errors](../../relational-databases/native-client-ole-db-errors/errors.md)  
  
  