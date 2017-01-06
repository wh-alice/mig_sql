---
title: "Wrappers and Interfaces | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 27fc9b72-9f21-4728-abcb-5c015f28a6ab
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
# Wrappers and Interfaces
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  The Microsoft JDBC Driver for SQL Server supports interfaces that allow you create a proxy of a class, and wrappers that let you access extensions to the JDBC API that are specific to the Microsoft JDBC Driver for SQL Server through a proxy interface.  
  
## Wrappers  
 The Microsoft JDBC Driver for SQL Server supports the java.sql.Wrapper interface. This interface provides a mechanism to access extensions to the JDBC API that are specific to the Microsoft JDBC Driver for SQL Server through a proxy interface.  
  
 The java.sql.Wrapper interface defines two methods: **isWrapperFor** and **unwrap**. The **isWrapperFor** method checks whether the specified input object implements this interface. The **unwrap** method returns an object that implements this interface to allow access to the Microsoft JDBC Driver for SQL Server specific methods.  
  
 **isWrapperFor** and **unwrap** methods are exposed as follows:  
  
-   [isWrapperFor Method &#40;SQLServerCallableStatement&#41;](../../connect/jdbc/reference/iswrapperfor-method--sqlservercallablestatement-.md)  
  
-   [unwrap Method &#40;SQLServerCallableStatement&#41;](../../connect/jdbc/reference/unwrap-method--sqlservercallablestatement-.md)  
  
-   [isWrapperFor Method &#40;SQLServerConnectionPoolDataSource&#41;](../../connect/jdbc/reference/iswrapperfor-method--sqlserverconnectionpooldatasource-.md)  
  
-   [unwrap Method &#40;SQLServerConnectionPoolDataSource&#41;](../../connect/jdbc/reference/unwrap-method--sqlserverconnectionpooldatasource-.md)  
  
-   [isWrapperFor Method &#40;SQLServerDataSource&#41;](../../connect/jdbc/reference/iswrapperfor-method--sqlserverdatasource-.md)  
  
-   [unwrap Method &#40;SQLServerDataSource&#41;](../../connect/jdbc/reference/unwrap-method--sqlserverdatasource-.md)  
  
-   [isWrapperFor Method &#40;SQLServerPreparedStatement&#41;](../../connect/jdbc/reference/iswrapperfor-method--sqlserverpreparedstatement-.md)  
  
-   [unwrap Method &#40;SQLServerPreparedStatement&#41;](../../connect/jdbc/reference/unwrap-method--sqlserverpreparedstatement-.md)  
  
-   [isWrapperFor Method &#40;SQLServerStatement&#41;](../../connect/jdbc/reference/iswrapperfor-method--sqlserverstatement-.md)  
  
-   [unwrap Method &#40;SQLServerStatement&#41;](../../connect/jdbc/reference/unwrap-method--sqlserverstatement-.md)  
  
-   [isWrapperFor Method &#40;SQLServerXADataSource&#41;](../../connect/jdbc/reference/iswrapperfor-method--sqlserverxadatasource-.md)  
  
-   [unwrap Method &#40;SQLServerXADataSource&#41;](../../connect/jdbc/reference/unwrap-method--sqlserverxadatasource-.md)  
  
## Interfaces  
 Beginning in SQL Server JDBC Driver 3.0, interfaces are available for an application server to access a driver specific method from the associated class. The application server can wrap the class by creating a proxy, exposing the Microsoft JDBC Driver for SQL Server-specific functionality from an interface. The Microsoft JDBC Driver for SQL Server supports interfaces that have the Microsoft JDBC Driver for SQL Server specific methods and constants so an application server can create a proxy of the class.  
  
 The interfaces derive from standard Java interfaces so you can use the same object once it is unwrapped to access driver specific functionality or generic Microsoft JDBC Driver for SQL Server functionality.  
  
 The following interfaces are added:  
  
-   [ISQLServerCallableStatement](../../connect/jdbc/reference/isqlservercallablestatement-interface.md)  
  
-   [ISQLServerConnection](../../connect/jdbc/reference/isqlserverconnection-interface.md)  
  
-   [ISQLServerDataSource](../../connect/jdbc/reference/isqlserverdatasource-interface.md)  
  
-   [ISQLServerPreparedStatement](../../connect/jdbc/reference/isqlserverpreparedstatement-interface.md)  
  
-   [ISQLServerResultSet](../../connect/jdbc/reference/isqlserverresultset-interface.md)  
  
-   [ISQLServerStatement](../../connect/jdbc/reference/isqlserverstatement-interface.md)  
  
## Example  
  
### Description  
 This sample demonstrates how to access to a Microsoft JDBC Driver for SQL Server-specific function from a DataSource object. This DataSource class may have been wrapped by an application server. To access the JDBC driver-specific function or constant, you can unwrap the datasource to an ISQLServerDataSource interface and use the functions declared in this interface.  
  
### Code  
  
```  
import javax.sql.*;  
import java.sql.*;  
import com.microsoft.sqlserver.jdbc.*;  
  
public class UnWrapTest {  
   public static void main(String[] args) {  
      // This is a test.  This DataSource object could be something from an appserver   
      // which has wrapped the real SQLServerDataSource with its own wrapper  
      SQLServerDataSource ds = new SQLServerDataSource();  
      checkSendStringParametersAsUnicode(ds);  
   }  
  
   // Unwrap to the ISQLServerDataSource interface to access the getSendStringParametersAsUnicode function  
   static void checkSendStringParametersAsUnicode(DataSource ds) {  
      try {  
         final ISQLServerDataSource sqlServerDataSource = ds.unwrap(ISQLServerDataSource.class);  
         boolean sendStringParametersAsUnicode = sqlServerDataSource.getSendStringParametersAsUnicode();  
  
         System.out.println("Send string as parameter value is:-" + sendStringParametersAsUnicode);  
  
      } catch (SQLException sqlE) {  
         System.out.println("Exception:-" + sqlE);  
      }  
   }  
}  
```  
  
## See Also  
 [Understanding the JDBC Driver Data Types](../../connect/jdbc/understanding-the-jdbc-driver-data-types.md)  
  
  