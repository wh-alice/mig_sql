---
title: "Using Parameter Metadata | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: db2c1957-91c6-4989-a07b-9f8be6d2033a
caps.latest.revision: 17
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
# Using Parameter Metadata
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  To query a [SQLServerPreparedStatement](../../connect/jdbc/reference/sqlserverpreparedstatement-class.md) or a [SQLServerCallableStatement](../../connect/jdbc/reference/sqlservercallablestatement-class.md) object about the parameters that they contain, the Microsoft JDBC Driver for SQL Server implements the [SQLServerParameterMetaData](../../connect/jdbc/reference/sqlserverparametermetadata-class.md) class. This class contains numerous fields and methods that return information in the form of a single value.  
  
 To create a SQLServerParameterMetaData object, you can use the [getParameterMetaData](../../connect/jdbc/reference/getparametermetadata-method--sqlserverpreparedstatement-.md) methods of the SQLServerPreparedStatement and SQLServerCallableStatement classes.  
  
 In the following example, an open connection to the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database is passed in to the function, the getParameterMetaData method of the SQLServerCallableStatement class is used to return a SQLServerParameterMetaData object, and then various methods of the SQLServerParameterMetaData object are used to display information about the type and mode of the parameters that are contained within the HumanResources.uspUpdateEmployeeHireInfo stored procedure.  
  
 [!code[JDBC#UsingParamMetaData1](../../connect/jdbc/codesnippet/Java/using-parameter-metadata_1.java)]  
    
> [!NOTE]  
There are some limitations when using the SQLServerParameterMetaData class with prepared statements. 
**With Microsoft JDBC Driver 6.0 (or higher) for SQL Server**: 
When using SQL Server 2008 or 2008 R2, the JDBC driver supports SELECT, DELETE, INSERT, and UPDATE statements as long as these statements does not contain subqueries and/or joins. MERGE queries are also not supported for  SQLServerParameterMetaData class when using SQL Server 2008 or 2008 R2. For SQL Server 2012 and higher versions parameter metadata with complex queries are supported. Retrieval of parameter metadata for encrypted columns are not supported. **With Microsoft JDBC Driver 4.0, 4.1 or 4.2 for SQL Server**: The JDBC driver supports SELECT, DELETE, INSERT, and UPDATE statements as long as these statements does not contain subqueries and/or joins. MERGE queries are also not supported for  SQLServerParameterMetaData class.  

## See Also  
 [Handling Metadata with the JDBC Driver](../../connect/jdbc/handling-metadata-with-the-jdbc-driver.md)  
  
  