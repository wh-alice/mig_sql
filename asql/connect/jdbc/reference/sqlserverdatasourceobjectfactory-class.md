---
title: "SQLServerDataSourceObjectFactory Class | Microsoft Docs"
ms.custom: ""
ms.date: "12/30/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: b616632b-5987-470d-b36c-b22fa9213145
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
# SQLServerDataSourceObjectFactory Class
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Represents an object factory to materialize data sources from the Java Naming and Directory Interface (JNDI).  
  
 **Package:** com.microsoft.sqlserver.jdbc  
  
 **Extends:** java.lang.Object  
  
 **Implements:** javax.naming.spi.ObjectFactory  
  
## Syntax  
  
```  
  
public class SQLServerDataSourceObjectFactory  
```  
  
## Remarks  
 This method is inherited by all the data source classes. As part of its support for the Referenceable interface, Microsoft JDBC Driver for SQL Server exposes this class that implements an ObjectFactory. Java Application Servers will call getReference on a data source class, and this will create a Reference object that internally uses the class name as its class factory.  
  
 When the Java Application Server has to dereference the Reference object, it creates an instance of the SQLServerDataSourceObjectFactory object and calls the [getObjectInstance](../../../connect/jdbc/reference/getobjectinstance-method--sqlserverdatasourceobjectfactory-.md) method, passing in the Reference object, to retrieve the data source instance.  
  
## See Also  
 [SQLServerDataSourceObjectFactory Members](../../../connect/jdbc/reference/sqlserverdatasourceobjectfactory-members.md)   
 [JDBC Driver API Reference](../../../connect/jdbc/reference/jdbc-driver-api-reference.md)  
  
  