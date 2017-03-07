---
title: "Connecting to a Windows Azure SQL Database Using SQL Server Native Client | Microsoft Docs"
ms.custom: 
  - "MSDN content"
  - "MSDN - SQL DB"
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.service: "sql-database"
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
ms.assetid: 0dc20bb6-b142-4259-b87b-427d2ba798af
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
---
# Connecting to a Windows Azure SQL Database Using SQL Server Native Client
[!INCLUDE[SNAC_Deprecated](../../../a9retired/includes/snac-deprecated.md)]

  For a sample that shows how to connect to a [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)] using [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client, see [Development: How-to Topics (Windows Azure SQL Database)](http://msdn.microsoft.com/library/ee621787.aspx).  
  
## Known Issues When Connecting to a SQL Database  
 The following are known issues when connecting to a [!INCLUDE[ssSDS](../../../a9retired/includes/sssds-md.md)] using [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client:  
  
-   A connection made with **SQLBrowseConnect** may be rejected if **SQLBrowseConnect** is used in stages.  For example, if the driver name is sent in the first call, server and credentials (user and password) sent in the second call, establishing the connection, and a database name and a language in the third call.  The third call will cause [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client to issue a USE statement to change databases. However, the USE statement is not supported in [!INCLUDE[ssSDS](../../../a9retired/includes/sssds-md.md)], generating the following error:  
  
    ```  
    [Microsoft][SQL Server Native Client 11.0][SQL Server]USE statement is not supported to switch between databases. Use a new connection to connect to a different Database.  
    ```  
  
## See Also  
 [Building Applications with SQL Server Native Client](../../../relational-databases/native-client/applications/building-applications-with-sql-server-native-client.md)  
  
  