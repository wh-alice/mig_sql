---
title: "Error Messages | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "SQL Server Native Client ODBC driver, errors"
  - "messages [ODBC], types"
  - "ODBC error handling, message types"
  - "errors [ODBC], types"
ms.assetid: 46c0c22e-d105-4d5b-bb9d-5694472e8651
caps.latest.revision: 34
ms.author: "jhubbard"
manager: "jhubbard"
---
# Error Messages
[!INCLUDE[SNAC_Deprecated](../../a9retired/includes/snac-deprecated.md)]

  The text of messages returned by the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client ODBC driver is placed in the *MessageText* parameter of **SQLGetDiagRec**. The source of an error is indicated by the header of the message:  
  
 [Microsoft][ODBC Driver Manager]  
 These errors are raised by the ODBC Driver Manager.  
  
 [Microsoft][ODBC Cursor Library]  
 These errors are raised by the ODBC cursor library.  
  
 [Microsoft][SQL Server Native Client]  
 These errors are raised by the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client ODBC driver. If there are no other nodes with either the name of a Net-Library or [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], then the error was encountered in the driver.  
  
 [Microsoft][SQL Server Native Client][*Net-Transportname*]  
 These errors are raised by the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Net-Library, where *Net-Transportname* is the display name of a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] client network transport (for example, Named Pipes, Shared Memory, TCP/IP Sockets, or VIA). The remainder of the error message contains the Net-Library function called and the function called in the underlying network API by the TDS function. The *pfNative* error code returned with these errors is the error code from the underlying network protocol stack.  
  
 [Microsoft][SQL Server Native Client][[!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]]  
 These errors are raised by [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. The remainder of the error message is the text of the error message from [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. The *pfNative* code returned with these errors is the error number from [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. For more information about a list of error messages (and their numbers) that can be returned by [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], see the description and error columns of the **sysmessages** system table in the **master** database in [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)].  
  
## See Also  
 [Handling Errors and Messages](../../relational-databases/native-client-odbc-error-messages/handling-errors-and-messages.md)  
  
  