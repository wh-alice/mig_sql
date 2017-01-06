---
title: "User Defined Types | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 19a71b27-b788-43a3-a76d-fe3001a6f016
caps.latest.revision: 9
ms.author: "genemi"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "sv-se"
  - "zh-cn"
  - "zh-tw"
---
# User Defined Types
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  User-defined types (UDTs) were introduced in SQL Server 2005 to allow a developer to extend the server's scalar type system by storing common language runtime (CLR) objects in a SQL Server database. UDTs can contain multiple elements and can have behaviors, unlike the traditional alias data types, that consist of a single SQL Server system data type. Previously, UDTs were restricted to a maximum size of 8 kilobytes. In SQL Server 2008, support was added for UDTs larger than 64 kilobytes. Beginning in version 3.0, the JDBC Driver also supports UDTs larger than 64 kilobytes when you specify the UserDefined format.  
  
 There is no behavior change for UDTs that are less than or equal to 8,000 bytes, but larger UDTs are supported and report their size as "unlimited".  
  
## See Also  
 [Understanding the JDBC Driver Data Types](../../connect/jdbc/understanding-the-jdbc-driver-data-types.md)  
  
  