---
title: "IBCPSession (OLE DB) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
apitype: "COM"
helpviewer_keywords: 
  - "IBCPSession interface"
ms.assetid: 00d0311f-8b71-4ad6-824d-0e89119347a3
caps.latest.revision: 28
ms.author: "jhubbard"
manager: "jhubbard"
---
# IBCPSession (OLE DB)
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  The **IBCPSession** interface exposes support for [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] file-based bulk copy operations. The **IBCPSession** interface is exposed in the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider under the same level as Sessions. In the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider, data source objects are factories for Session objects, and bulk copy operations are specified in the connection property SSPROP_ENABLEBULKCOPY. In addition, the SSPROP_ENABLEFASTLOAD property should be set to true.  
  
 Calling the **IDBCreateSession::CreateSession** method will then result in the creation of a **BulkCopySession** object. All the file-based bulk copy methods exposed through the **IBCPSession** object are then callable with nearly similar signatures on this **IBCPSession** object's **IBCPSession** interface.  
  
> [!NOTE]  
>  The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider supports memory-based bulk copy operations through the [IRowsetFastLoad](../../relational-databases/native-client-ole-db-interfaces/irowsetfastload-ole-db.md) interface.  
  
 For more information about using the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider for bulk copy operations, see [Performing Bulk Copy Operations](../../relational-databases/native-client/features/performing-bulk-copy-operations.md).  
  
 For a sample showing how to use the **IBCPSession** interface, see [IBCPSession::BCPDone &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-interfaces/ibcpsession-bcpdone-ole-db.md).  
  
## In This Section  
  
|Method|Description|  
|------------|-----------------|  
|[IBCPSession::BCPColFmt &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-interfaces/ibcpsession-bcpcolfmt-ole-db.md)|Creates a binding between program variables and [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] columns.|  
|[IBCPSession::BCPColumns &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-interfaces/ibcpsession-bcpcolumns-ole-db.md)|Sets the number of fields that are to be bound to the columns in a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] table.|  
|[IBCPSession::BCPControl &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-interfaces/ibcpsession-bcpcontrol-ole-db.md)|Sets the options for a bulk copy operation.|  
|[IBCPSession::BCPDone &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-interfaces/ibcpsession-bcpdone-ole-db.md)|Commits the remaining rows to be sent to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].|  
|[IBCPSession::BCPExec &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-interfaces/ibcpsession-bcpexec-ole-db.md)|Performs the bulk copy operation.|  
|[IBCPSession::BCPInit &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-interfaces/ibcpsession-bcpinit-ole-db.md)|Initializes the bulk copy structure, performs some error checking, verifies that the data and format file names are correct, and then opens them.|  
|[IBCPSession::BCPReadFmt &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-interfaces/ibcpsession-bcpreadfmt-ole-db.md)|Reads format information for each column from the format file.|  
|[IBCPSession::BCPWriteFmt &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-interfaces/ibcpsession-bcpwritefmt-ole-db.md)|Writes format information for each column to the format file.|  
  
## See Also  
 [Interfaces &#40;OLE DB&#41;](http://msdn.microsoft.com/library/34c33364-8538-45db-ae41-5654481cda93)  
  
  