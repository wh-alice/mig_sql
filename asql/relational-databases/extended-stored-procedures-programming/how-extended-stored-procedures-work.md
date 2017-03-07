---
title: "How Extended Stored Procedures Work | Microsoft Docs"
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
  - "extended stored procedures [SQL Server], about extended stored procedures"
ms.assetid: 6e946d8c-3268-4b59-8a1c-1637909cd701
caps.latest.revision: 33
ms.author: "jhubbard"
manager: "jhubbard"
---
# How Extended Stored Procedures Work
    
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureDontUse](../../database-engine/availability-groups/windows/includes/ssnotedepfuturedontuse-md.md)] Use CLR Integration instead.  
  
 The process by which an extended stored procedure works is:  
  
1.  When a client executes an extended stored procedure, the request is transmitted in tabular data stream (TDS) or Simple Object Access Protocol (SOAP) format from the client application to [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)].  
  
2.  [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] searches for the DLL associated with the extended stored procedure, and loads the DLL if it is not already loaded.  
  
3.  [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] calls the requested extended stored procedure (implemented as a function inside the DLL).  
  
4.  The extended stored procedure passes result sets and return parameters back to the server by through the Extended Stored Procedure API.  
  
## See Also  
 [Database Engine Extended Stored Procedure Programming](../../relational-databases/database-engine-extended-stored-procedure-programming.md)  
  
  