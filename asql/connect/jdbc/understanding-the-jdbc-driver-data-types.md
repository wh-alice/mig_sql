---
title: "Understanding the JDBC Driver Data Types | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 7802328d-4d23-4775-9573-4169b127d258
caps.latest.revision: 27
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
# Understanding the JDBC Driver Data Types
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  Microsoft JDBC Driver for SQL Server supports the use of JDBC basic and advanced data types within a Java application that uses SQL Server as its database.  
  
 The JDBC type system mediates the conversion between SQL Server data types and Java language types and objects. The JDBC types are modeled on the SQL-92 and SQL-99 types. The JDBC driver adheres to the JDBC specification and is designed to provide the right balance between predictability and flexibility.  
  
 The topics in this section describe how to use the basic and advanced data types, and how data types can be converted into other data types.  
  
## In This Section  
  
|Topic|Description|  
|-----------|-----------------|  
|[Using Basic Data Types](../../connect/jdbc/using-basic-data-types.md)|Describes the JDBC basic data types. Includes examples of how to work with the data types by using result sets, parameterized queries, and stored procedures.|  
|[Configuring How java.sql.Time Values are Sent to the Server](../../connect/jdbc/configuring-how-java.sql.time-values-are-sent-to-the-server.md)|Describes how the JDBC Driver generates dates.|  
|[Using Advanced Data Types](../../connect/jdbc/using-advanced-data-types.md)|Describes the JDBC advanced data types.|  
|[Understanding Data Type Differences](../../connect/jdbc/understanding-data-type-differences.md)|Describes differences between the various JDBC driver data types.|  
|[Understanding Data Type Conversions](../../connect/jdbc/understanding-data-type-conversions.md)|Describes how data type conversion is handled when using getter and setter methods.|  
|[National Character Set Support](../../connect/jdbc/national-character-set-support.md)|Describes the support for the national character set types.|  
|[Supporting XML Data](../../connect/jdbc/supporting-xml-data.md)|Describes the SQLXML interface. Also describes how to read and write an XML data from and to the relational database with the **SQLXML** Java data type.|  
|[Wrappers and Interfaces](../../connect/jdbc/wrappers-and-interfaces.md)|Discusses the interfaces that have the Microsoft JDBC Driver for SQL Server specific methods and constants that allow an application server to create a proxy of the class, Also discusses supports for the the java.sql.Wrapper interface.|  
  
## See Also  
 [Overview of the JDBC Driver](../../connect/jdbc/overview-of-the-jdbc-driver.md)  
  
  