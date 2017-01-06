---
title: "Connection URL Sample | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 96fabc42-59d1-4cc0-93c5-db00cbe55e95
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
# Connection URL Sample
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  This Microsoft JDBC Driver for SQL Server sample application demonstrates how to connect to a SQL Server database by using a connection URL. It also demonstrates how to retrieve data from a SQL Server database by using an SQL statement.  
  
 The code file for this sample is named connectURL.java, and it can be found in the following location:  
  
 \<*installation directory*>\sqljdbc_\<*version*>\\<*language*>\samples\connections  
  
## Requirements  
 To run this sample application, you must set the classpath to include the sqljdbc.jar file or sqljdbc4.jar file. If the classpath is missing an entry for sqljdbc.jar or sqljdbc4.jar, the sample application will throw the common "Class not found" exception. You will also need access to the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database. For more information about how to set the classpath, see [Using the JDBC Driver](../../connect/jdbc/using-the-jdbc-driver.md).  
  
> [!NOTE]  
>  The Microsoft JDBC Driver for SQL Server provides sqljdbc.jar and sqljdbc4.jar class library files to be used depending on your preferred Java Runtime Environment (JRE) settings. For more information about which JAR file to choose, see [System Requirements for the JDBC Driver](../../connect/jdbc/system-requirements-for-the-jdbc-driver.md).  
  
## Example  
 In the following example, the sample code sets various connection properties in the connection URL, and then calls the getConnection method of the DriverManager class to return a [SQLServerConnection](../../connect/jdbc/reference/sqlserverconnection-class.md) object.  
  
 Next, the sample code uses the [createStatement](../../connect/jdbc/reference/createstatement-method--sqlserverconnection-.md) method of the SQLServerConnection object to create a [SQLServerStatement](../../connect/jdbc/reference/sqlserverstatement-class.md) object, and then the [executeQuery](../../connect/jdbc/reference/executequery-method--sqlserverstatement-.md) method is called to execute the SQL statement.  
  
 Finally, the sample uses the [SQLServerResultSet](../../connect/jdbc/reference/sqlserverresultset-class.md) object returned from the executeQuery method to iterate through the results returned by the SQL statement.  
  
```java  
import java.sql.*;  
  
public class connectURL {  
  
   public static void main(String[] args) {  
  
      // Create a variable for the connection string.  
      String connectionUrl = "jdbc:sqlserver://localhost:1433;" +  
         "databaseName=AdventureWorks;user=UserName;password=*****";  
  
      // Declare the JDBC objects.  
      Connection con = null;  
      Statement stmt = null;  
      ResultSet rs = null;  
  
      try {  
         // Establish the connection.  
         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
         con = DriverManager.getConnection(connectionUrl);  
  
         // Create and execute an SQL statement that returns some data.  
         String SQL = "SELECT TOP 10 * FROM Person.Contact";  
         stmt = con.createStatement();  
         rs = stmt.executeQuery(SQL);  
  
         // Iterate through the data in the result set and display it.  
         while (rs.next()) {  
            System.out.println(rs.getString(4) + " " + rs.getString(6));  
         }  
      }  
  
      // Handle any errors that may have occurred.  
      catch (Exception e) {  
         e.printStackTrace();  
      }  
      finally {  
         if (rs != null) try { rs.close(); } catch(Exception e) {}  
         if (stmt != null) try { stmt.close(); } catch(Exception e) {}  
         if (con != null) try { con.close(); } catch(Exception e) {}  
      }  
   }  
}  
```  
  
## See Also  
 [Connecting and Retrieving Data](../../connect/jdbc/connecting-and-retrieving-data.md)  
  
  