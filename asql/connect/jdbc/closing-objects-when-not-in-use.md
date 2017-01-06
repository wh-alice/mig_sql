---
title: "Closing Objects when Not In Use | Microsoft Docs"
ms.custom: ""
ms.date: "12/30/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: ce8f9b35-c761-4b0c-9a46-985eef2c2e0b
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
# Closing Objects when Not In Use
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  When you work with objects of Microsoft JDBC Driver for SQL Server, particularly the [SQLServerResultSet](../../connect/jdbc/reference/sqlserverresultset-class.md) or one of the Statement objects such as [SQLServerStatement](../../connect/jdbc/reference/sqlserverstatement-class.md), [SQLServerPreparedStatement](../../connect/jdbc/reference/sqlserverpreparedstatement-class.md) or [SQLServerCallableStatement](../../connect/jdbc/reference/sqlservercallablestatement-class.md), you should explicitly close them by using their close methods when they are no longer needed. This improves performance by freeing up driver and server resources as soon as possible, instead of waiting for the Java Virtual Machine garbage collector to do it for you.  
  
 Closing objects is particularly crucial to maintaining good concurrency on the server when you are using scroll locks. Scroll locks in the last accessed fetch buffer are held until the result set is closed. Similarly, statement prepared handles are held until the statement is closed. If you are reusing a connection for multiple statements, closing the statements before you let them go out of scope will allow the server to clean up the prepared handles earlier.  
  
## See Also  
 [Improving Performance and Reliability with the JDBC Driver](../../connect/jdbc/improving-performance-and-reliability-with-the-jdbc-driver.md)  
  
  