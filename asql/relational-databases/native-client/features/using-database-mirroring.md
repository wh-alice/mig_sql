---
title: "Using Database Mirroring | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "database mirroring [SQL Server], interoperability"
  - "SQL Server Native Client, database mirroring"
  - "data access [SQL Server Native Client], database mirroring"
  - "database mirroring [SQL Server], connecting clients to"
  - "SQLNCLI, database mirroring"
  - "SQL Server Native Client ODBC driver, database mirroring"
  - "SQL Server Native Client OLE DB provider, database mirroring"
ms.assetid: 71b15712-7972-4465-9274-e0ddc271eedc
caps.latest.revision: 55
ms.author: "jhubbard"
manager: "jhubbard"
---
# Using Database Mirroring
[!INCLUDE[SNAC_Deprecated](../../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

    
> [!NOTE]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)] instead.  
  
 Database mirroring, introduced in [!INCLUDE[ssVersion2005](../../../analysis-services/data-mining/includes/ssversion2005-md.md)], is a solution for increasing database availability and data redundancy. [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client provides implicit support for database mirroring, so the developer does not need to write any code or take any other action once it has been configured for the database.  
  
 Database mirroring, which is implemented on a per-database basis, keeps a copy of a [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] production database on a standby server. This server is either a hot or warm standby server, depending on the configuration and state of the database mirroring session. A hot standby server supports rapid failover with no loss of committed transactions, and a warm standby server supports forcing service (with possible data loss).  
  
 The production database is called the *principal database*, and the standby copy is called the *mirror database*. The principal database and mirror database must reside on separate instances of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] (server instances), and they should reside on separate computers if possible.  
  
 The production server instance, called the *principal server*, communicates with the standby server instance, called the *mirror server*. The principal and mirror servers act as partners within a database mirroring *session*. If the principal server fails, the mirror server can make its database into the principal database through a process called *failover*. For example, Partner_A and Partner_B are two partner servers, with the principal database initially on Partner_A as principal server, and the mirror database residing on Partner_B as the mirror server. If Partner_A goes offline, the database on Partner_B can fail over to become the current principal database. When Partner_A rejoins the mirroring session, it becomes the mirror server and its database becomes the mirror database.  
  
 Alternative database mirroring configurations offer different levels of performance and data safety, and support different forms of failover. For more information, see [Database Mirroring &#40;SQL Server&#41;](../../../database-engine/database-mirroring/database-mirroring-sql-server.md).  
  
 It is possible to use an alias when specifying the mirror database name.  
  
> [!NOTE]  
>  For information about initial connection attempts and reconnection attempts to a mirrored database, see [Connect Clients to a Database Mirroring Session &#40;SQL Server&#41;](../../../database-engine/database-mirroring/connect-clients-to-a-database-mirroring-session-sql-server.md).  
  
## Programming Considerations  
 When the principal database server fails, the client application receives errors in response to API calls, which indicate that the connection to the database has been lost. When this happens, any uncommitted changes to the database are lost and the current transaction is rolled back. If this occurs, the application should close the connection (or release the data source object) and re-open it. The connection is transparently re-directed to the mirror database, which now acts as the principal server.  
  
 When a connection is established, the principal server sends the identity of its failover partner to the client to be used when failover occurs. Where an application tried to establish a connection after the principal server failed, the client does not know the identity of the failover partner. To allow clients the opportunity to cope with this scenario, an initialization property and an associated connection string keyword allow the client to specify the identity of the failover partner on its own. The client attribute is used only in this scenario; if the principal server is available, it is not used. If the failover partner server supplied by the client does not refer to a server acting as a failover partner, the connection is refused by the server. To allow applications to adapt to configuration changes, the identity of the actual failover partner can be determined by inspecting the attribute after the connection has been established. You should consider caching the partner information to update the connection string or devise a retry strategy in the event that the first attempt at making a connection fails.  
  
> [!NOTE]  
>  You must explicitly specify the database to be used by a connection if you want to use this feature in a DSN, connection string, or connection property/attribute. [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client will not attempt to failover to the partner database if this is not done.  
>   
>  Mirroring is a feature of the database. Applications that use multiple databases might not be able to exploit this feature.  
>   
>  In addition, server names are case insensitive, but database names are case sensitive. You should therefore make sure that you use the same casing in DSNs and connection strings.  
  
## SQL Server Native Client OLE DB Provider  
 The [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider supports database mirroring through connection and connection string attributes. The SSPROP_INIT_FAILOVERPARTNER property has been added to the DBPROPSET_SQLSERVERDBINIT property set, and the **FailoverPartner** keyword is a new connection string attribute for DBPROP_INIT_PROVIDERSTRING. For more information, see [Using Connection String Keywords with SQL Server Native Client](../../../relational-databases/native-client/applications/using-connection-string-keywords-with-sql-server-native-client.md).  
  
 The failover cache is maintained as long as the provider is loaded, which is until **CoUninitialize** is called or as long as the application has a reference to some object managed by the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider such as a data source object.  
  
 For details about [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider support for database mirroring, see [Initialization and Authorization Properties](../../../relational-databases/native-client-ole-db-data-source-objects/initialization-and-authorization-properties.md).  
  
## SQL Server Native Client ODBC Driver  
 The [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client ODBC driver supports database mirroring through connection and connection string attributes. Specifically, the SQL_COPT_SS_FAILOVER_PARTNER attribute has been added for use with the [SQLSetConnectAttr](../../../relational-databases/extended-stored-procedures-reference/sqlsetconnectattr.md) and [SQLGetConnectAttr](../../../relational-databases/extended-stored-procedures-reference/sqlgetconnectattr.md) functions; and the **Failover_Partner** keyword has been added as a new connection string attribute.  
  
 The failover cache is maintained as long as the application has at least one environment handle allocated. Conversely, it is lost when the last environment handle is deallocated.  
  
> [!NOTE]  
>  The ODBC Driver Manager has been enhanced to support the specification of the failover server name.  
  
## See Also  
 [SQL Server Native Client Features](../../../relational-databases/native-client/features/sql-server-native-client-features.md)   
 [Connect Clients to a Database Mirroring Session &#40;SQL Server&#41;](../../../database-engine/database-mirroring/connect-clients-to-a-database-mirroring-session-sql-server.md)   
 [Database Mirroring &#40;SQL Server&#41;](../../../database-engine/database-mirroring/database-mirroring-sql-server.md)  
  
  