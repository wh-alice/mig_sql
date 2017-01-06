---
title: "Working with Data Types (JDBC) | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: b39f44d0-3710-4bc6-880c-35bd8c10a734
caps.latest.revision: 18
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
# Working with Data Types (JDBC)
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  The primary function of the Microsoft JDBC Driver for SQL Server is to allow Java developers to access data contained in SQL Server databases. To accomplish this, the JDBC driver mediates the conversion between SQL Server data types and Java language types and objects.  
  
> [!NOTE]  
>  For a detailed discussion of the SQL Server and JDBC driver data types, including their differences and how they are converted to Java language data types, see [Understanding the JDBC Driver Data Types](../../connect/jdbc/understanding-the-jdbc-driver-data-types.md).  
  
 In order to work with SQL Server data types, the JDBC driver provides get\<Type> and set\<Type> methods for the [SQLServerPreparedStatement](../../connect/jdbc/reference/sqlserverpreparedstatement-class.md) and [SQLServerCallableStatement](../../connect/jdbc/reference/sqlservercallablestatement-class.md) classes, and it provides get\<Type> and update\<Type> methods for the [SQLServerResultSet](../../connect/jdbc/reference/sqlserverresultset-class.md) class. Which method you use depends on the type of data that you are working with, and whether you are using result sets or queries.  
  
 The topics in this section describe how to use the JDBC driver data types to access SQL Server data in your Java applications.  
  
## In This Section  
  
|Topic|Description|  
|-----------|-----------------|  
|[Basic Data Types Sample](../../connect/jdbc/basic-data-types-sample.md)|Describes how to use result set getter methods to retrieve basic SQL Server data type values, and how to use result set update methods to update those values.|  
|[SQLXML Data Type Sample](../../connect/jdbc/sqlxml-data-type-sample.md)|Describes how to store an XML data in a relational database, how to retrieve an XML data from a database, and how to parse an XML data with the **SQLXML** Java data type.|  
  
## See Also  
 [Sample JDBC Driver Applications](../../connect/jdbc/sample-jdbc-driver-applications.md)  
  
  