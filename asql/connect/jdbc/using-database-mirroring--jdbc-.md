---
title: "Using Database Mirroring (JDBC) | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 4ff59218-0d3b-4274-b647-9839c4955865
caps.latest.revision: 25
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
# Using Database Mirroring (JDBC)
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  Database mirroring is primarily a software solution for increasing database availability and data redundancy. The Microsoft JDBC Driver for SQL Server provides implicit support for database mirroring, so that the developer does not need to write any code or take any other action when it has been configured for the database.  
  
 Database mirroring, which is implemented on a per-database basis, keeps a copy of a SQL Server production database on a standby server. This server is either a hot or warm standby server, depending on the configuration and state of the database mirroring session. A hot standby server supports rapid failover without a loss of committed transactions, and a warm standby server supports forcing service (with possible data loss).  
  
 The production database is called the *principal* database, and the standby copy is called the *mirror* database. The principal database and mirror database must reside on separate instances of SQL Server (server instances), and they should reside on separate computers, if it is possible.  
  
 The production server instance, referred to as the principal server, communicates with the standby server instance, referred to as the mirror server. The principal and mirror servers act as partners within a database mirroring session. If the principal server fails, the mirror server can make its database into the principal database through a process called *failover*. For example, Partner_A and Partner_B are two partner servers, with the principal database initially on Partner_A as principal server, and the mirror database residing on Partner_B as the mirror server. If Partner_A goes offline, the database on Partner_B can fail over to become the current principal database. When Partner_A rejoins the mirroring session, it becomes the mirror server and its database becomes the mirror database.  
  
 In the case where the Partner_A server is irreparably damaged, a Partner_C server can be brought online to act as the mirror server for Partner_B, which is now the principal server. However, in this scenario, the client application must include programming logic to ensure that the connection string properties are updated with the new server names used in the database mirroring configuration. Otherwise, the connection to the servers may fail.  
  
 Alternative database mirroring configurations offer different levels of performance and data safety, and support different forms of failover. For more information, see "Overview of Database Mirroring" in SQL Server Books Online.  
  
## Programming Considerations  
 When the principal database server fails, the client application receives errors in response to API calls, which indicate that the connection to the database has been lost. When this occurs, any uncommitted changes to the database are lost and the current transaction is rolled back. If this occurs, the application should close the connection (or release the data source object) and try to reopen it. On connection, the new connection is transparently re-directed to the mirror database, which now acts as the principal server, without the client having to modify the connection string or data source object.  
  
 When a connection is initially established, the principal server sends the identity of its failover partner to the client that will be used when failover occurs. When an application tries to establish an initial connection with a failed principal server, the client does not know the identity of the failover partner. To allow clients the opportunity to cope with this scenario, the failoverPartner connection string property, and optionally the [setFailoverPartner](../../connect/jdbc/reference/setfailoverpartner-method--sqlserverdatasource-.md) data source method, allows the client to specify the identity of the failover partner on its own. The client property is used only in this scenario; if the principal server is available, it is not used.  
  
> [!NOTE]  
>  When a failoverPartner is specified in either the connection string or with a data source object, the databaseName property must also be set or else an exception will be thrown. If the failoverPartner and databaseName are not specified explicitly, the application will not attempt to failover when the principal database server fails. In other words, the transparent redirection only works for connections that explicitly specify the failoverPartner and databaseName. For more information about failoverPartner and other connection string properties, see [Setting the Connection Properties](../../connect/jdbc/setting-the-connection-properties.md).  
  
 If the failover partner server supplied by the client does not refer to a server acting as a failover partner for the specified database, and if the server/database referred to is in a mirroring arrangement, the connection is refused by the server. Although the [SQLServerDataSource](../../connect/jdbc/reference/sqlserverdatasource-class.md) class provides the [getFailoverPartner](../../connect/jdbc/reference/getfailoverpartner-method--sqlserverdatasource-.md) method, this method only returns the name of the failover partner specified in the connection string or the setFailoverPartner method. To retrieve the name of the actual failover partner that is currently being used, use the following Transact-SQL statement:  
  
```  
SELECT m.mirroring_role_DESC, m.mirroring_state_DESC,  
m.mirroring_partner_instance FROM sys.databases as db,  
sys.database_mirroring AS m WHERE db.name = 'MirroringDBName'  
AND db.database_id = m.database_id  
```  
  
> [!NOTE]  
>  You will need to change this statement to use the name of your mirroring database.  
  
 You should consider caching the partner information to update the connection string or devise a retry strategy in case the first attempt at making a connection fails.  
  
## Example  
 In the following example, an attempt is first made to connect to the principle server. If that fails and an exception is thrown, an attempt is made to connect to the mirror server, which may have been promoted to the new principle server. Note the use of the failoverPartner property in the connection string.  
  
```  
import java.sql.*;  
  
public class clientFailover {  
  
   public static void main(String[] args) {  
  
      // Create a variable for the connection string.  
      String connectionUrl = "jdbc:sqlserver://serverA:1433;" +  
         "databaseName=AdventureWorks;integratedSecurity=true;" +  
         "failoverPartner=serverB";  
  
      // Declare the JDBC objects.  
      Connection con = null;  
      Statement stmt = null;  
  
      try {  
         // Establish the connection to the principal server.  
         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
         con = DriverManager.getConnection(connectionUrl);  
         System.out.println("Connected to the principal server.");  
  
         // Note that if a failover of serverA occurs here, then an  
         // exception will be thrown and the failover partner will  
         // be used in the first catch block below.  
  
         // Create and execute an SQL statement that inserts some data.  
         stmt = con.createStatement();  
  
         // Note that the following statement assumes that the   
         // TestTable table has been created in the AdventureWorks  
         // sample database.  
         stmt.executeUpdate("INSERT INTO TestTable (Col2, Col3) VALUES ('a', 10)");  
      }  
  
      // Handle any errors that may have occurred.  
      catch (SQLException se) {  
         try {  
            // The connection to the principal server failed,  
            // try the mirror server which may now be the new  
            // principal server.  
            System.out.println("Connection to principal server failed, " +  
            "trying the mirror server.");  
            con = DriverManager.getConnection(connectionUrl);  
            System.out.println("Connected to the new principal server.");  
            stmt = con.createStatement();  
            stmt.executeUpdate("INSERT INTO TestTable (Col2, Col3) VALUES ('a', 10)");  
         }  
         catch (Exception e) {  
            e.printStackTrace();  
         }  
      }  
      catch (Exception e) {  
         e.printStackTrace();  
      }  
      // Close the JDBC objects.  
      finally {  
         if (stmt != null) try { stmt.close(); } catch(Exception e) {}  
         if (con != null) try { con.close(); } catch(Exception e) {}  
      }  
   }  
}  
```  
  
## See Also  
 [Connecting to SQL Server with the JDBC Driver](../../connect/jdbc/connecting-to-sql-server-with-the-jdbc-driver.md)  
  
  