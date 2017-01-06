---
title: "Getting the Driver Version | Microsoft Docs"
ms.custom: ""
ms.date: "12/30/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 5e241d72-16da-4ada-ac67-e6308394108f
caps.latest.revision: 21
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
# Getting the Driver Version
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  The version of the installed Microsoft JDBC Driver for SQL Server can be found in the following ways:  
  
-   Call the [SQLServerDatabaseMetaData](../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md) methods [getDriverMajorVersion](../../connect/jdbc/reference/getdrivermajorversion-method--sqlserverdatabasemetadata-.md), [getDriverMinorVersion](../../connect/jdbc/reference/getdriverminorversion-method--sqlserverdatabasemetadata-.md), or [getDriverVersion](../../connect/jdbc/reference/getdriverversion-method--sqlserverdatabasemetadata-.md).  
  
-   The version is displayed in the readme.txt file of the product distribution.  
  
 In addition, the JDBC driver name can be returned from the [getDriverName](../../connect/jdbc/reference/getdrivername-method--sqlserverdatabasemetadata-.md) method call on the SQLServerDatabaseMetaData class. It will return, for example, "Microsoft JDBC Driver 4.0 for SQL Server".  
  
 The following is an example of the output from calls to the methods of the SQLServerDatabaseMetaData class:  
  
 `getDriverName = Microsoft JDBC Driver 4.0 for SQL Server`  
  
 `getDriverMajorVersion = 4`  
  
 `getDriverMinorVersion = 0`  
  
 `getDriverVersion = 4.0.` *xxx.x*  
  
 Where "xxx.x" is the final version number.  
  
## See Also  
 [Diagnosing Problems with the JDBC Driver](../../connect/jdbc/diagnosing-problems-with-the-jdbc-driver.md)  
  
  