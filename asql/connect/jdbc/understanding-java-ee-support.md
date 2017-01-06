---
title: "Understanding Java EE Support | Microsoft Docs"
ms.custom: ""
ms.date: "12/30/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: a9448b80-b7a3-49cf-8bb4-322c73676005
caps.latest.revision: 26
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
# Understanding Java EE Support
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  The following sections document how the Microsoft JDBC Driver for SQL Server provides support for the Java Platform, Enterprise Edition (Java EE) and JDBC 3.0 optional API features. The source code examples provided in this Help system provide a good reference for getting started with these features.  
  
 First, make sure that your Java environment (JDK, JRE) includes the javax.sql package. This is a required package for any JDBC application that uses the optional API. JDK 1.5 and later versions already contain this package, so you do not have to install it separately.  
  
## Driver Name  
 The driver class name is **com.microsoft.sqlserver.jdbc.SQLServerDriver**. The driver is contained in the sqljdbc.jar, sqljdbc4.jar, sqljdbc41.jar, or sqljdbc42.jar file.  
  
 The class name is used whenever you load the driver with the JDBC DriverManager class. It is also used whenever you must specify the class name of the driver in any driver configuration. For example, configuring a data source within a Java EE application server might require that you enter the driver class name.  
  
## Data Sources  
 The JDBC driver provides support for Java EE / JDBC 3.0 data sources. The JDBC driver [SQLServerXADataSource](../../connect/jdbc/reference/sqlserverxadatasource-class.md) class is implemented by **com.microsoft.sqlserver.jdbc.SQLServerXADataSource**.  
  
### Datasource Names  
 You can make database connections by using data sources. The data sources available with JDBC driver are described in the following table:  
  
|DataSource Type|Class Name|Description|  
|---------------------|----------------|-----------------|  
|DataSource|com.microsoft.sqlserver.jdbc.SQLServerDataSource|The non pooling data source.|  
|ConnectionPoolDataSource|com.microsoft.sqlserver.jdbc.SQLServerConnectionPoolDataSource|The data source to configure JAVA EE application server connection pools. Typically used when the application runs within a JAVA EE application server.|  
|XADataSource|com.microsoft.sqlserver.jdbc.SQLServerXADataSource|The data source to configure JAVA EE XA data sources. Typically used when the application runs within a JAVA EE application server and an XA transaction manager.|  
  
### Data Source Properties  
 All data sources support the ability to set and get any property that is associated with the underlying driver's property set.  
  
 Examples:  
  
 `setServerName("localhost");`  
  
 `setDatabaseName("AdventureWorks");`  
  
 The following shows how an application connects by using a data source:  
  
```  
initialize JNDI ..  
Context ctx = new InitialContext(System.getProperties());  
...  
DataSource ds = (DataSource) ctx.lookup("MyDataSource");  
Connection c = ds.getConnection("user", "pwd");  
```  
  
 For more information about the data source properties, see [Setting the Data Source Properties](../../connect/jdbc/setting-the-data-source-properties.md).  
  
## See Also  
 [Overview of the JDBC Driver](../../connect/jdbc/overview-of-the-jdbc-driver.md)  
  
  