---
title: "IBCPSession::BCPWriteFmt (OLE DB) | Microsoft Docs"
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
  - "IBCPSession::BCPWriteFmt (OLE DB)"
apitype: "COM"
helpviewer_keywords: 
  - "BCPWriteFmt method"
ms.assetid: add50425-2ed6-411a-a391-4ce63c364892
caps.latest.revision: 24
ms.author: "jhubbard"
manager: "jhubbard"
---
# IBCPSession::BCPWriteFmt (OLE DB)
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  Writes format information for each column to the format file.  
  
## Syntax  
  
```  
  
HRESULT BCPWriteFmt(   
      const wchar_t *pwszFormatFile);  
```  
  
## Remarks  
 The format file specifies the data format of a data file created by bulk copy. Calls to the [IBCPSession::BCPColumns](../../relational-databases/native-client-ole-db-interfaces/ibcpsession-bcpcolumns-ole-db.md) and [IBCPSession::BCPColFmt](../../relational-databases/native-client-ole-db-interfaces/ibcpsession-bcpcolfmt-ole-db.md) methods define the format of the data file. The **BCPWriteFmt** method saves this definition in the file referenced by the pwszFormatFile argument.  
  
 The **BCPWriteFmt** method can save the format files in either xml or text format. This must be indicated by using the BCP_OPTION_XML control option with the [IBCPSession::BCPControl](../../relational-databases/native-client-ole-db-interfaces/ibcpsession-bcpcontrol-ole-db.md) method.  
  
 To load a saved format file, use the [IBCPSession::BCPReadFmt](../../relational-databases/native-client-ole-db-interfaces/ibcpsession-bcpreadfmt-ole-db.md) method.  
  
## Arguments  
 *pwszFormatFile*[in]  
 The path and file name of the file containing the format values for the data file.  
  
## Return Code Values  
 S_OK  
 The method succeeded.  
  
 E_FAIL  
 A provider-specific error occurred; for detailed information, use the [ISQLServerErrorInfo](http://msdn.microsoft.com/library/a8323b5c-686a-4235-a8d2-bda43617b3a1) interface.  
  
 E_OUTOFMEMORY  
 Out-of-memory error.  
  
 E_UNEXPECTED  
 The call to the method was unexpected. For example, the [IBCPSession::BCPInit](../../relational-databases/native-client-ole-db-interfaces/ibcpsession-bcpinit-ole-db.md) method was not called before calling this method.  
  
## See Also  
 [IBCPSession &#40;OLE DB&#41;](../../relational-databases/native-client-ole-db-interfaces/ibcpsession-ole-db.md)   
 [Performing Bulk Copy Operations](../../relational-databases/native-client/features/performing-bulk-copy-operations.md)  
  
  