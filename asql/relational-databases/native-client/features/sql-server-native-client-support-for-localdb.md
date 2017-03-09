---
title: "SQL Server Native Client Support for LocalDB | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
ms.assetid: 127569d1-a9f7-49bf-a561-c084986a8871
caps.latest.revision: 7
ms.author: "jhubbard"
manager: "jhubbard"
---
# SQL Server Native Client Support for LocalDB
[!INCLUDE[SNAC_Deprecated](../../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  Beginning in [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)], a lightweight version of SQL Server, called LocalDB, will be available. This topic discusses how to connect to a database in a LocalDB instance.  
  
## Remarks  
 For more information about LocalDB, including how to install LocalDB and configure your LocalDB instance, see:  
  
-   [SQL Server Express LocalDB Reference](../../../relational-databases/sql-server-express-localdb-reference.md)  
  
-   [SQL Server 2016 Express LocalDB](../../../database-engine/configure/windows/sql-server-2016-express-localdb.md)  
  
 To summarize, LocalDB allows you to:  
  
-   Use **sqllocaldb.exe i** to discover the name of the default instance.  
  
-   Use the **AttachDBFilename** connection string keyword to specify which database file the server should attach. When using **AttachDBFilename**, if you do not specify the name of the database with the **Database** connection string keyword, the database will be removed from the LocalDB instance when the application closes.  
  
-   Specify a LocalDB instance in your connection string:  
  
```  
SERVER=(localdb)\v11.0  
```  
  
 If necessary, you can create a LocalDB instance with sqllocaldb.exe. You can also use sqlcmd.exe to add and modify databases in a LocalDB instance. For example, **sqlcmd -S (localdb)\v11.0**.  
  
## See Also  
 [SQL Server Native Client Features](../../../relational-databases/native-client/features/sql-server-native-client-features.md)  
  
  