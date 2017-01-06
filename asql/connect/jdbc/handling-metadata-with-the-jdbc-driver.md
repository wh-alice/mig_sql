---
title: "Handling Metadata with the JDBC Driver | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 5cfb35d4-ddcd-40a2-8091-f29cddc32552
caps.latest.revision: 12
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
# Handling Metadata with the JDBC Driver
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  The Microsoft JDBC Driver for SQL Server can be used to work with metadata in a SQL Server database in a variety of ways. The JDBC driver can be used to get metadata about the database, a result set, or parameters.  
  
 The JDBC driver provides three classes for retrieving metadata from a SQL Server database:  
  
-   [SQLServerDatabaseMetaData](../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md), which is used to return information about the database that is currently connected.  
  
-   [SQLServerResultSetMetaData](../../connect/jdbc/reference/sqlserverresultsetmetadata-class.md), which is used to return information about the result set.  
  
-   [SQLServerParameterMetaData](../../connect/jdbc/reference/sqlserverparametermetadata-class.md), which is used to return information about the parameters of prepared and callable statements.  
  
 The topics in this section describe how you can use each of the three metadata classes to work with metadata in a SQL Server database.  
  
> [!NOTE]  
>  The metadata methods discussed in this section are generally expensive in terms of application performance, so care should be taken with their usage.  
  
## In This Section  
  
|Topic|Description|  
|-----------|-----------------|  
|[Using Database Metadata](../../connect/jdbc/using-database-metadata.md)|Describes how to retrieve metadata information about the currently connected database.|  
|[Using Result Set Metadata](../../connect/jdbc/using-result-set-metadata.md)|Describes how to retrieve metadata information about the current result set.|  
|[Using Parameter Metadata](../../connect/jdbc/using-parameter-metadata.md)|Describes how to retrieve metadata information about the parameters of prepared and callable statements.|  
  
## See Also  
 [Overview of the JDBC Driver](../../connect/jdbc/overview-of-the-jdbc-driver.md)  
  
  