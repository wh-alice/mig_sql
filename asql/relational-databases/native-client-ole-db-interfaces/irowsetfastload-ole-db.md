---
title: "IRowsetFastLoad (OLE DB) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
apitype: "COM"
helpviewer_keywords: 
  - "IRowsetFastLoad interface"
ms.assetid: d19a7097-48d9-409a-aff9-277891b7aca7
caps.latest.revision: 35
ms.author: "jhubbard"
manager: "jhubbard"
---
# IRowsetFastLoad (OLE DB)
[!INCLUDE[SNAC_Deprecated](../../a9retired/includes/snac-deprecated.md)]

  The **IRowsetFastLoad** interface exposes support for [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] memory-based bulk-copy operations. [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider consumers use the interface to rapidly add data to an existing [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] table.  
  
 If you set SSPROP_ENABLEFASTLOAD to VARIANT_TRUE for a session, you cannot read data from rowsets subsequently returned from that session. When SSPROP_ENABLEFASTLOAD is set to VARIANT_TRUE, all rowsets created on the session will be of type IRowsetFastLoad. IRowsetFastLoad rowsets do not support rowset fetch functionality; therefore, data from these rowsets cannot be read.  
  
## In This Section  
  
|Method|Description|  
|------------|-----------------|  
|[IRowsetFastLoad::Commit &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-interfaces/irowsetfastload-commit-ole-db.md)|Marks the end of a batch of inserted rows and writes the rows to the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] table.|  
|[IRowsetFastLoad::InsertRow &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-interfaces/irowsetfastload-insertrow-ole-db.md)|Adds a row to the bulk copy rowset.|  
  
## See Also  
 [Interfaces &#40;OLE DB&#41;](../../a9retired/interfaces-ole-db.md)   
 [Bulk Copy Data Using IRowsetFastLoad &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-how-to/bulk-copy-data-using-irowsetfastload-ole-db.md)   
 [Send BLOB Data to SQL SERVER Using IROWSETFASTLOAD and ISEQUENTIALSTREAM &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-how-to/send-blob-data-to-sql-server-using-irowsetfastload-and-isequentialstream-ole-db.md)  
  
  