---
title: "Updating Large Data Sample | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 76ecc05f-a77d-40a2-bab9-91a7fcf17347
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
# Updating Large Data Sample
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  This Microsoft JDBC Driver for SQL Server sample application demonstrates how to update a large column in a database.  
  
 The code file for this sample is named updateLargeData.java, and can be found in the following location:  
  
 \<*installation directory*>\sqljdbc_\<*version*>\\<*language*>\samples\adaptive  
  
## Requirements  
 To run this sample application, you will need access to the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database. You must also set the classpath to include the sqljdbc4.jar file. If the classpath is missing an entry for sqljdbc4.jar, the sample application will throw the common "Class not found" exception. For more information about how to set the classpath, see [Using the JDBC Driver](../../connect/jdbc/using-the-jdbc-driver.md).  
  
> [!NOTE]  
>  The Microsoft JDBC Driver for SQL Server provides sqljdbc.jar, sqljdbc4.jar, sqljdbc41.jar, or sqljdbc42.jar class library files to be used depending on your preferred Java Runtime Environment (JRE) settings. This sample uses the [isWrapperFor](../../connect/jdbc/reference/iswrapperfor-method--sqlserverstatement-.md) and [unwrap](../../connect/jdbc/reference/unwrap-method--sqlserverstatement-.md) methods, which are introduced in the JDBC 4.0 API, to access the driver-specific response buffering methods. In order to compile and run this sample, you will need sqljdbc4.jar class library, which provides support for JDBC 4.0. For more information about which JAR file to choose, see [System Requirements for the JDBC Driver](../../connect/jdbc/system-requirements-for-the-jdbc-driver.md).  
  
## Example  
 In the following example, the sample code makes a connection to the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) database. Then, the sample code creates a Statement object and uses the [isWrapperFor](../../connect/jdbc/reference/iswrapperfor-method--sqlserverstatement-.md) method to check whether the Statement object is a wrapper for the specified [SQLServerStatement](../../connect/jdbc/reference/sqlserverstatement-class.md) class. The [unwrap](../../connect/jdbc/reference/unwrap-method--sqlserverstatement-.md) method is used to access the driver-specific response buffering methods.  
  
 Next, the sample code sets the response buffering mode as "**adaptive**" by using the [setResponseBuffering](../../connect/jdbc/reference/setresponsebuffering-method--sqlserverstatement-.md) method of the [SQLServerStatement](../../connect/jdbc/reference/sqlserverstatement-class.md) class and also demonstrates how to get the adaptive buffering mode.  
  
 Then, it runs the SQL statement, and places the data that it returns into an updateable [SQLServerResultSet](../../connect/jdbc/reference/sqlserverresultset-class.md) object.  
  
 Finally, the sample code iterates through the rows of data that are contained in the result set. If it finds an empty document summary, it uses the combination of [updateString](../../connect/jdbc/reference/updatestring-method--sqlserverresultset-.md) and [updateRow](../../connect/jdbc/reference/updaterow-method--sqlserverresultset-.md) methods to update the row of data and again persist it to the database. If there is already data, it uses the [getString](../../connect/jdbc/reference/getstring-method--sqlserverresultset-.md) method to display some of the data that it contains.  
  
 The default behavior of the driver is "**adaptive.**" However, for the forward-only updatable result sets and when the data in the result set is larger than the application memory, the application has to set the adaptive buffering mode explicitly by using the [setResponseBuffering](../../connect/jdbc/reference/setresponsebuffering-method--sqlserverstatement-.md) method of the [SQLServerStatement](../../connect/jdbc/reference/sqlserverstatement-class.md) class.  
  
 [!code[JDBC#UsingAdaptiveBuffering3](../../connect/jdbc/codesnippet/Java/updating-large-data-sample_1.java)]  
  
## See Also  
 [Working with Large Data](../../connect/jdbc/working-with-large-data.md)  
  
  