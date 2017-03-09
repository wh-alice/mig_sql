---
title: "Programming Extended Stored Procedures | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "gateway applications [SQL Server]"
  - "extended stored procedures [SQL Server], about extended stored procedures"
  - "Open Data Services [SQL Server]"
  - "ODS [SQL Server]"
ms.assetid: 561305cd-c803-48af-9eec-2c19f4d311ce
caps.latest.revision: 42
ms.author: "jhubbard"
manager: "jhubbard"
---
# Database Engine Extended Stored Procedures - Programming
    
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureDontUse](../../database-engine/availability-groups/windows/includes/ssnotedepfuturedontuse-md.md)] Use CLR integration instead.  
  
 In the past, Open Data Services was used to write server applications, such as gateways to non-SQL Server database environments. [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] does not support the obsolete portions of the Open Data Services API. The only part of the original Open Data Services API still supported by [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] are the extended stored procedure functions, so the API has been renamed to the Extended Stored Procedure API.  
  
 With the emergence of newer and more powerful technologies, such as distributed queries and CLR Integration, the need for Extended Stored Procedure API applications has largely been replaced.  
  
> [!NOTE]  
>  If you have existing gateway applications, you cannot use the opends60.dll that ships with [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to run the applications. Gateway applications are no longer supported.  
  
## Extended Stored Procedures vs. CLR Integration  
 In earlier releases of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], extended stored procedures (XPs) provided the only mechanism that was available for database application developers to write server-side logic that was either hard to express or impossible to write in [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)]. CLR Integration provides a more robust alternative to writing such stored procedures. Furthermore, with CLR Integration, logic that used to be written in the form of stored procedures is often better expressed as table-valued functions, which allow the results constructed by the function to be queried in SELECT statements by embedding them in the FROM clause.  
  
## See Also  
 [Common Language Runtime &#40;CLR&#41; Integration Overview](../../relational-databases/clr-integration/common-language-runtime-integration-overview.md)   
 [CLR Table-Valued Functions](../../relational-databases/clr-integration-database-objects-user-defined-functions/clr-table-valued-functions.md)  
  
  