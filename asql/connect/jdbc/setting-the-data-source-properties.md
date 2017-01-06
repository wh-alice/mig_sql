---
title: "Setting the Data Source Properties | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: f3363d05-07fc-4bf8-ae5e-2a7a968808ad
caps.latest.revision: 20
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
# Setting the Data Source Properties
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  Data sources are the preferred mechanism by which to create JDBC connections in a Java Platform, Enterprise Edition (Java EE) environment. Data sources provide connections, pooled connections, and distributed connections without hard-coding connection properties into Java code. All Microsoft JDBC Driver for SQL Server data sources can set or get the value of any property by using the appropriate setter and getter methods, respectively.  
  
 Java EE products, such as application servers and servlet/JSP engines, typically let you configure data sources for database access. Any property listed in the [Setting the Connection Properties](../../connect/jdbc/setting-the-connection-properties.md) topic can be specified wherever the configuration lets you enter a property as a property=value pair.  
  
 For more information about SQL Server data sources, see the [SQLServerDataSource](../../connect/jdbc/reference/sqlserverdatasource-class.md) class. For an example of how to use the SQLServerDataSource class to make a connection to a SQL Server database, see [Data Source Sample](../../connect/jdbc/data-source-sample.md).  
  
## See Also  
 [Connecting to SQL Server with the JDBC Driver](../../connect/jdbc/connecting-to-sql-server-with-the-jdbc-driver.md)  
  
  