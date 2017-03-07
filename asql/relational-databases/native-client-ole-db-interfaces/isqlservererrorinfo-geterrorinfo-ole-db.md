---
title: "ISQLServerErrorInfo::GetErrorInfo (OLE DB) | Microsoft Docs"
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
  - "ISQLServerErrorInfo::GetErrorInfo (OLE DB)"
apitype: "COM"
helpviewer_keywords: 
  - "GetErrorInfo method"
ms.assetid: 83265c9c-eaf9-41f0-9f73-b0ae0972f0d5
caps.latest.revision: 30
ms.author: "jhubbard"
manager: "jhubbard"
---
# ISQLServerErrorInfo::GetErrorInfo (OLE DB)
[!INCLUDE[SNAC_Deprecated](../../a9retired/includes/snac-deprecated.md)]

  Returns a pointer to a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider SSERRORINFO structure containing the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] error details.  
  
 The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider defines the **ISQLServerErrorInfo** error interface. This interface returns details from a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] error, including its severity and state.  

  
## Syntax  
  
```  
  
HRESULT GetErrorInfo(  
   SSERRORINFO**ppSSErrorInfo,  
   OLECHAR**ppErrorStrings);  
```  
  
## Arguments  
 *ppSSErrorInfo*[out]  
 A pointer to a SSERRORINFO structure. If the method fails or there is no [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] information associated with the error, the provider does not allocate any memory, and ensures that the *ppSSErrorInfo* argument is a null pointer on output.  
  
 *ppErrorStrings*[out]  
 A pointer to a Unicode character-string pointer. If the method fails or there is no [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] information associated with an error, the provider does not allocate any memory, and ensures that the *ppErrorStrings* argument is a null pointer on output. Freeing the *ppErrorStrings* argument with the **IMalloc::Free** method frees the three individual string members of the returned SSERRORINFO structure, as the memory is allocated in a block.  
  
## Return Code Values  
 S_OK  
 The method succeeded.  
  
 E_INVALIDARG  
 Either the *ppSSErrorInfo* or the *ppErrorStrings* argument was NULL.  
  
 E_OUTOFMEMORY  
 The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider could not allocate sufficient memory to complete the request.  
  
## Remarks  
 The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider allocates memory for the SSERRORINFO and OLECHAR strings returned through the pointers passed by the consumer. The consumer must deallocate this memory by using the **IMalloc::Free** method when it no longer requires access to the error data.  
  
 The SSERRORINFO structure is defined as follows:  
  
```  
typedef struct tagSSErrorInfo  
   {  
   LPOLESTR pwszMessage;  
   LPOLESTR pwszServer;  
   LPOLESTR pwszProcedure;  
   LONG lNative;  
   BYTE bState;  
   BYTE bClass;  
   WORD wLineNumber;  
   }  
SSERRORINFO;  
```  
  
|Member|Description|  
|------------|-----------------|  
|*pwszMessage*|The error message from [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. The message is returned through the **IErrorInfo::GetDescription** method.|  
|*pwszServer*|The name of the instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] on which the error occurred.|  
|*pwszProcedure*|The name of the stored procedure generating the error if the error occurred in a stored procedure; otherwise, an empty string.|  
|*lNative*|The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] error number. The error number is identical to that returned in the *plNativeError* parameter of the **ISQLErrorInfo::GetSQLInfo** method.|  
|*bState*|The state of the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] error.|  
|*bClass*|The severity of the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] error.|  
|*wLineNumber*|When applicable, the line of a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] stored procedure that generated the error message. If no procedure is involved, the default value is 1.|  
  
 Pointers in the structure reference addresses in the string returned in the *ppErrorStrings* argument.  
  
## See Also  
 [ISQLServerErrorInfo &#40;OLE DB&#41;](../../a9retired/isqlservererrorinfo-ole-db.md)   
 [RAISERROR &#40;Transact-SQL&#41;](../../t-sql/language-elements/raiserror-transact-sql.md)  
  
  