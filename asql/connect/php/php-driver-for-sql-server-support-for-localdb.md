---
title: "PHP Driver for SQL Server Support for LocalDB | Microsoft Docs"
ms.custom: ""
ms.date: "07/18/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: d315ad6a-0d50-4093-80c2-2f11217237c2
caps.latest.revision: 14
ms.author: "annemill"
manager: "jhubbard"
---
# PHP Driver for SQL Server Support for LocalDB
![Download](../../ssdt/media/download.png)[Download PHP Driver](https://www.microsoft.com/download/details.aspx?id=20098)

Beginning in SQL Server 2012, a lightweight version of SQL Server, called LocalDB, will be available. This topic discusses how to connect to a database in a LocalDB instance.  
  
## Remarks  
For more information about LocalDB, including how to install LocalDB and configure your LocalDB instance, see the SQL Server Books Online topic on SQL Server 2012 Express LocalDB.  
  
To summarize, LocalDB allows you to:  
  
-   Use **sqllocaldb.exe i** to discover the name of the default instance.  
  
-   Use the **AttachDBFilename** connection string keyword to specify which database file the server should attach. When using **AttachDBFilename**, if you do not specify the name of the database with the **Database** connection string keyword, the database will be removed from the LocalDB instance when the application closes.  
  
-   Specify a LocalDB instance in your connection string. For example, here is a sample SQLSRV connection string:  
  
    ```  
    $conn = sqlsrv_connect( '(localdb)\v11.0', array( 'Database'=>'myData'));  
    $conn = sqlsrv_connect( '(localdb)\v11.0', array('AttachDBFileName'=>'c:\myData.MDF','Database'=>'myData'));  
    $conn = sqlsrv_connect( '(localdb)\v11.0', array('AttachDBFileName'=>'c:\myData.MDF'));  
    ```  
  
    Here is a sample PDO_SQLSRV connection string:  
  
    ```  
    $conn = new PDO( 'sqlsrv:server=(localdb)\v11.0;Database=myData', NULL, NULL);   
    $conn = new PDO( 'sqlsrv:server=(localdb)\v11.0;AttachDBFileName=c:\myData.MDF;Database=myData ', NULL, NULL);  
    $conn = new PDO( 'sqlsrv:server=(localdb)\v11.0;AttachDBFileName=c:\myData.MDF', NULL, NULL);  
    ```  
  
If necessary, you can create a LocalDB instance with sqllocaldb.exe. You can also use sqlcmd.exe to add and modify databases in a LocalDB instance. For example, `sqlcmd -S (localdb)\v11.0`. (When running in IIS, you need to run under the correct account to get the same results as when you run at the command line; see [Using LocalDB with Full IIS, Part 2: Instance Ownership](http://blogs.msdn.com/b/sqlexpress/archive/2011/12/09/using-localdb-with-full-iis-part-2-instance-ownership.aspx) for more information.)  
  
The following are example connection strings using the SQLSRV driver that connect to a database in a LocalDB named instance called myInstance:  
  
```  
$conn = sqlsrv_connect( '(localdb)\myInstance', array( 'Database'=>'myData'));  
```  
  
The following are example connection strings using the PDO_SQLSRV driver that connect to a database in a LocalDB named instance called myInstance:  
  
```  
$conn = new PDO( 'sqlsrv:server=(localdb)\myInstance;database=myData', NULL, NULL);  
```  
  
You can download LocalDB from the [SQL Server 2012 feature pack page](http://go.microsoft.com/fwlink/?LinkID=236805), or from the SQL Server 2012 Express edition. If you will use sqlcmd.exe to modify data in your LocalDB instance, you will need sqlcmd from SQL Server 2012, which you can get from the Command Line Utilities download in the SQL Server 2012 Feature Pack page.  
  
## See Also  
[Connecting to the Server](../../connect/php/connecting-to-the-server.md)  
  
