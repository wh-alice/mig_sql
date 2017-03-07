---
title: "Return Codes | Microsoft Docs"
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
  - "OLE DB error handling, return codes"
  - "SQL Server Native Client OLE DB provider, errors"
  - "failed function [OLE DB]"
  - "successful function [OLE DB]"
  - "S_FALSE"
  - "IS_ERROR macro"
  - "DB_S_ERRORSOCCURRED return"
  - "return codes [OLE DB]"
  - "S_OK"
  - "FAILED macro"
  - "errors [OLE DB], return codes"
ms.assetid: 7f7457e9-fce4-400c-82e5-ee02e9e811c6
caps.latest.revision: 33
ms.author: "jhubbard"
manager: "jhubbard"
---
# Return Codes
[!INCLUDE[SNAC_Deprecated](../../a9retired/includes/snac-deprecated.md)]

  At the most basic level, a member function either succeeds or fails. At a somewhat more precise level, a function can succeed, but its success may not be what the application developer intended.  
  
 For more information about OLE DB return codes, see [Return Codes (OLE DB)](http://go.microsoft.com/fwlink/?LinkId=101631).  
  
 When a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider member function returns S_OK, the function succeeded.  
  
 When a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider member function does not return S_OK, the OLE/COM HRESULT-unpacking FAILED and IS_ERROR macros can determine the overall success or failure of a function.  
  
 If FAILED or IS_ERROR returns TRUE, the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider consumer is assured that member function execution failed. When FAILED or IS_ERROR return FALSE and the HRESULT does not equal S_OK, the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider consumer is assured that the function succeeded in some sense. The consumer can retrieve detailed information on this "success with information" return from the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider error interfaces. Also, in the case where a function clearly fails (the FAILED macro returns TRUE), extended error information is available from the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider error interfaces.  
  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider consumers commonly encounter the DB_S_ERRORSOCCURRED "success with information" HRESULT return. Typically, member functions that return DB_S_ERRORSOCCURRED define one or more parameters that deliver status values to the consumer. No error information may be available to the consumer other than that returned in status-value parameters, so consumers should implement application logic to retrieve status values when they are available.  
  
 The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider member functions do not return the success code S_FALSE. All [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB provider member functions always return S_OK to indicate success.  
  
## See Also  
 [Errors](../../relational-databases/native-client-ole-db-errors/errors.md)  
  
  