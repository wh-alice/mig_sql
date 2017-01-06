---
title: "Reading Large Data Sample | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 6c986144-3854-4352-8331-e79eccbefc28
caps.latest.revision: 28
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
# Reading Large Data Sample
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  This Microsoft JDBC Driver for SQL Server sample application demonstrates how to retrieve a large single-column value from a SQL Server database by using the [getCharacterStream](../../connect/jdbc/reference/getcharacterstream-method--sqlserverresultset-.md) method.  
  
 The code file for this sample is named readLargeData.java, and it can be found in the following location:  
  
 \<*installation directory*>\sqljdbc_\<*version*>\\<*language*>\samples\adaptive  
  
## Requirements  
 To run this sample application, you will need access to the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database. You must also set the classpath to include the sqljdbc.jar file or sqljdbc4.jar file. If the classpath is missing an entry for sqljdbc.jar or sqljdbc4.jar, the sample application will throw the common "Class not found" exception. For more information about how to set the classpath, see [Using the JDBC Driver](../../connect/jdbc/using-the-jdbc-driver.md).  
  
> [!NOTE]  
>  The Microsoft JDBC Driver for SQL Server provides sqljdbc.jar and sqljdbc4.jar class library files to be used depending on your preferred Java Runtime Environment (JRE) settings. For more information about which JAR file to choose, see [System Requirements for the JDBC Driver](../../connect/jdbc/system-requirements-for-the-jdbc-driver.md).  
  
## Example  
 In the following example, the sample code makes a connection to the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) database. Next, the sample code creates sample data and updates the Production.Document table by using a parameterized query.  
  
 In addition, the sample code demonstrates how to get the adaptive buffering mode by using the [getResponseBuffering](../../connect/jdbc/reference/getresponsebuffering-method--sqlserverstatement-.md) method of the [SQLServerStatement](../../connect/jdbc/reference/sqlserverstatement-class.md) class. Note that starting with the JDBC driver version 2.0 release, the responseBuffering connection property is set to "adaptive" by default.  
  
 Then, using an SQL statement with the [SQLServerStatement](../../connect/jdbc/reference/sqlserverstatement-class.md) object, the sample code runs the SQL statement and places the data that it returns into a [SQLServerResultSet](../../connect/jdbc/reference/sqlserverresultset-class.md) object.  
  
 Finally, the sample code iterates through the rows of data that are contained in the result set, and uses the [getCharacterStream](../../connect/jdbc/reference/getcharacterstream-method--sqlserverresultset-.md) method to access some of the data that it contains.  
  
 [!code[JDBC#UsingAdaptiveBuffering1](../../connect/jdbc/codesnippet/Java/reading-large-data-sample_1.java)]  
  
## See Also  
 [Working with Large Data](../../connect/jdbc/working-with-large-data.md)  
  
  