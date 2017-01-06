---
title: "Working with Result Sets | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 4fc4b1c6-3075-4ad7-9244-865d9ede7ae6
caps.latest.revision: 10
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
# Working with Result Sets
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  When you work with the data contained in a SQL Server database, one method of manipulating the data is to use a result set. The Microsoft JDBC Driver for SQL Server supports the use of result sets through the [SQLServerResultSet](../../connect/jdbc/reference/sqlserverresultset-class.md) object. By using the SQLServerResultSet object, you can retrieve the data returned from an SQL statement or stored procedure, update the data as needed, and then persist that data back to the database.  
  
 In addition, the SQLServerResultSet object provides methods for navigating through its rows of data, getting or setting the data that it contains, and for establishing various levels of sensitivity to changes in the underlying database.  
  
> [!NOTE]  
>  For more information about managing result sets, including their sensitivity to changes, see [Managing Result Sets with the JDBC Driver](../../connect/jdbc/managing-result-sets-with-the-jdbc-driver.md).  
  
 The topics in this section describe different ways that you can use a result set to manipulate the data contained in a SQL Server database.  
  
## In This Section  
  
|Topic|Description|  
|-----------|-----------------|  
|[Retrieving Result Set Data Sample](../../connect/jdbc/retrieving-result-set-data-sample.md)|Describes how to use a result set to retrieve data from a SQL Server database and display it.|  
|[Modifying Result Set Data Sample](../../connect/jdbc/modifying-result-set-data-sample.md)|Describes how to use a result set to insert, retrieve, and modify data in a SQL Server database.|  
|[Caching Result Set Data Sample](../../connect/jdbc/caching-result-set-data-sample.md)|Describes how to use a result set to retrieve large amounts of data from a SQL Server database, and to control how that data is cached on the client.|  
  
## See Also  
 [Sample JDBC Driver Applications](../../connect/jdbc/sample-jdbc-driver-applications.md)  
  
  