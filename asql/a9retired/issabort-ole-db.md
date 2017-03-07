---
title: "ISSAbort (OLE DB) | Microsoft Docs"
ms.custom: ""
ms.date: "02/21/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
apitype: "COM"
helpviewer_keywords: 
  - "ISSAbort interface"
ms.assetid: 7c4df482-4a83-4da0-802b-3637b507693a
caps.latest.revision: 12
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# ISSAbort (OLE DB)
[!INCLUDE[SNAC_Deprecated](../a9retired/includes/snac-deprecated.md)]

  The **ISSAbort** interface, which is exposed in the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider, provides the [ISSAbort::Abort](../relational-databases/native-client-ole-db-interfaces/issabort-abort-ole-db.md) method that is used to cancel the current rowset plus any commands batched with the command that initially generated the rowset, and that have not yet completed execution.  
  
 **ISSAbort** is a [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Native Client provider-specific interface available by using **QueryInterface** on the **IMultipleResults** object returned by **ICommand::Execute** or **IOpenRowset::OpenRowset**.  
  
## In This Section  
  
|Method|Description|  
|------------|-----------------|  
|[ISSAbort::Abort &#40;OLE DB&#41;](../relational-databases/native-client-ole-db-interfaces/issabort-abort-ole-db.md)|Cancels the current rowset plus any batched commands associated with the current command.|  
  
## See Also  
 [Interfaces &#40;OLE DB&#41;](../a9retired/interfaces-ole-db.md)  
  
  