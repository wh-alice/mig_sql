---
title: "ISSAbort::Abort (OLE DB) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "reference"
apiname: 
  - "ISSAbort::Abort (OLE DB)"
apitype: "COM"
helpviewer_keywords: 
  - "Abort method"
ms.assetid: a5bca169-694b-4895-84ac-e8fba491e479
caps.latest.revision: 17
ms.author: "jhubbard"
manager: "jhubbard"
---
# ISSAbort::Abort (OLE DB)
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  Cancels the current rowset plus any batched commands associated with the current command.  
  
The **ISSAbort** interface, which is exposed in the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider, provides the **ISSAbort::Abort** method that is used to cancel the current rowset plus any commands batched with the command that initially generated the rowset, and that have not yet completed execution.  
  
 **ISSAbort** is a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client provider-specific interface available by using **QueryInterface** on the **IMultipleResults** object returned by **ICommand::Execute** or **IOpenRowset::OpenRowset**.  
  
## Syntax  
  
```  
  
HRESULT Abort(void);  
```  
  
## Remarks  
 If the command being aborted is in a stored procedure, execution of the stored procedure (and any procedures which had called that procedure) will be terminated as well as the command batch which contains the stored procedure call. If the server is in the process of transferring a result set to the client, this will be stopped. If the client does not want to consume a result set, calling **ISSAbort::Abort** before releasing the rowset will speed up the rowset release, but if there is an open transaction and XACT_ABORT is ON, the transaction will be rolled back when **ISSAbort::Abort** is called  
  
 After **ISSAbort::Abort** returns S_OK, the associated **IMultipleResults** interface enters a unusable state and returns DB_E_CANCELED to all method calls (except for methods defined by the **IUnknown** interface) until it is released. If an **IRowset** had been obtained from **IMultipleResults** prior to a call to **Abort**, it also enters an unusable state and returns DB_E_CANCELED to all method calls (except for methods defined by the **IUnknown** interface and **IRowset::ReleaseRows**) until it is released after a successful call to **ISSAbort::Abort**.  
  
> [!NOTE]  
>  Beginning with [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)], if the server XACT_ABORT state is ON, executing **ISSAbort::Abort** will terminate and roll back any current implicit or explicit transaction when connected to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Earlier versions of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] will not abort the current transaction.  
  
## Arguments  
 None.  
  
## Return Code Values  
 S_OK  
 The **ISSAbort::Abort** method returns S_OK if the batch was canceled and DB_E_CANTCANCEL otherwise. If the batch has already been canceled, DB_E_CANCELED is returned.  
  
 DB_E_CANCELED  
 The batch has already been canceled.  
  
 DB_E_CANTCANCEL  
 The batch was not canceled.  
  
 E_FAIL  
 A provider specific error occurred; for detailed information, use the [ISQLServerErrorInfo](../Topic/ISQLServerErrorInfo%20\(OLE%20DB\).md) interface.  
  
 E_UNEXPECTED  
 The call to the method was unexpected. For example, the object is in a zombie state because **ISSAbort::Abort** has already been called.  
  
 E_OUTOFMEMORY  
 Out of memory error.  
  
## See Also  
 [ISSAbort &#40;OLE DB&#41;](../Topic/ISSAbort%20\(OLE%20DB\).md)  
  
  