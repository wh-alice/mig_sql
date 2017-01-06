---
title: "Reading Large Data with Stored Procedures Sample | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 58c76635-a117-4661-8781-d6cb231c5809
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
# Reading Large Data with Stored Procedures Sample
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  This Microsoft JDBC Driver for SQL Server sample application demonstrates how to retrieve a large OUT parameter from a stored procedure.  
  
 The code file for this sample is named executeStoredProcedure.java, and can be found in the following location:  
  
 \<*installation directory*>\sqljdbc_\<*version*>\\<*language*>\samples\adaptive  
  
## Requirements  
 To run this sample application, you will need access to the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database. You must also set the classpath to include the sqljdbc.jar file or sqljdbc4.jar file. If the classpath is missing an entry for sqljdbc.jar or sqljdbc4.jar, the sample application will throw the common "Class not found" exception. For more information about how to set the classpath, see [Using the JDBC Driver](../../connect/jdbc/using-the-jdbc-driver.md).  
  
> [!NOTE]  
>  The Microsoft JDBC Driver for SQL Server provides sqljdbc.jar and sqljdbc4.jar class library files to be used depending on your preferred Java Runtime Environment (JRE) settings. For more information about which JAR file to choose, see [System Requirements for the JDBC Driver](../../connect/jdbc/system-requirements-for-the-jdbc-driver.md).  
  
 You must also create the following stored procedure in the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database:  
  
```  
CREATE PROCEDURE GetLargeDataValue   
  (@Document_ID int,   
   @Document_ID_out int OUTPUT,   
   @Document_Title varchar(50) OUTPUT,  
   @Document_Summary nvarchar(max) OUTPUT)  
  
AS   
BEGIN    
   SELECT @Document_ID_out = DocumentID,   
          @Document_Title = Title,  
          @Document_Summary = DocumentSummary   
    FROM  Production.Document  
    WHERE DocumentID = @Document_ID  
END  
```  
  
## Example  
 In the following example, the sample code makes a connection to the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) database. Next, the sample code creates sample data and updates the Production.Document table by using a parameterized query. Then, the sample code gets the adaptive buffering mode by using the [getResponseBuffering](../../connect/jdbc/reference/getresponsebuffering-method--sqlserverstatement-.md) method of the [SQLServerStatement](../../connect/jdbc/reference/sqlserverstatement-class.md) class and executes the GetLargeDataValue stored procedure. Note that starting with the JDBC driver version 2.0 release, the responseBuffering connection property is set to "adaptive" by default.  
  
 Finally, the sample code displays the data returned with the OUT parameters and also demonstrates how to use the `mark` and `reset` methods on the stream to re-read any portion of the data.  
  
 [!code[JDBC#UsingAdaptiveBuffering2](../../connect/jdbc/codesnippet/Java/reading-large-data-with-stored-procedures-sample_1.java)]  
  
## See Also  
 [Working with Large Data](../../connect/jdbc/working-with-large-data.md)  
  
  