---
title: "ISSAsynchStatus (OLE DB) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "reference"
apiname: 
  - "ISSAsynchStatus (OLE DB)"
apitype: "COM"
helpviewer_keywords: 
  - "ISSAsynchStatus interface"
ms.assetid: c643f09f-9ccc-4d8b-9243-3cde86c2bd46
caps.latest.revision: 33
ms.author: "jhubbard"
manager: "jhubbard"
---
# ISSAsynchStatus (OLE DB)
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  **ISSAsynchStatus** exposes support for [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] asynchronous operations. This is an optional interface that inherits from the core OLE DB interface **IDBAsynchStatus**. In addition to the **Abort** and **GetStatus** methods inherited from **IDBAsynchStatus**, **ISSAsynchStatus** provides one new method that is used to wait until an asynchronous operation has completed or a time-out occurs.  
  
|Method|Description|  
|------------|-----------------|  
|[ISSAsynchStatus::Abort &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-interfaces/issasynchstatus-abort-ole-db.md)|Cancels an asynchronously executing operation.|  
|[ISSAsynchStatus::GetStatus &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-interfaces/issasynchstatus-getstatus-ole-db.md)|Returns the status of an asynchronously executing operation.|  
|[ISSAsynchStatus::WaitForAsynchCompletion &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-interfaces/issasynchstatus-waitforasynchcompletion-ole-db.md)|Waits until the asynchronously executing operation is complete or a time-out occurs.|  
  
## Remarks  
 The **ISSAsynchStatus** implementation of the **ISSAsynchStatus::GetStatus** method is the same as the **IDBAsynchStatus::GetStatus** method except that if the initialization of a data source object is aborted, E_UNEXPECTED is returned rather than DB_E_CANCELED (although **ISSAsynchStatus::WaitForAsynchCompletion** returns DB_E_CANCELED). This is because the data source object is not left in the usual state following an abort operation, so that further initialization operations may be attempted.  
  
 The following methods support the use of asynchronous execution in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]:  
  
-   **ICommand::Execute**  
  
-   **IOpenRowset::OpenRowset**  
  
-   **IMultipleResults::GetResult**  
  
## See Also  
 [Interfaces &#40;OLE DB&#41;](../Topic/Interfaces%20\(OLE%20DB\).md)   
 [Performing Asynchronous Operations](../../relational-databases/native-client/features/performing-asynchronous-operations.md)  
  
  