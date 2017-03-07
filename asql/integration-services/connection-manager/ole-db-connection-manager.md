---
title: "OLE DB Connection Manager | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "OLE DB connection manager"
  - "data sources [Integration Services], connections"
  - "connection managers [Integration Services], OLE DB"
  - "connections [Integration Services], OLE DB"
ms.assetid: 91e3622e-4b1a-439a-80c7-a00b90d66979
caps.latest.revision: 59
ms.author: "douglasl"
manager: "jhubbard"
---
# OLE DB Connection Manager
  An OLE DB connection manager enables a package to connect to a data source by using an OLE DB provider. For example, an OLE DB connection manager that connects to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] can use the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] OLE DB Provider for [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)].    
    
> [!NOTE]    
>  The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client 11.0 OLEDB provider does not support the new connection string key words (MultiSubnetFailover=True) for Multi-Subnet Failover Clustering. For more information, see the [SQL Server Release  Notes](http://go.microsoft.com/fwlink/?LinkId=247824) and the blog post, [Always On Multi-Subnet Failover and SSIS](http://www.mattmasson.com/2012/03/alwayson-multi-subnet-failover-and-ssis/), on www.mattmasson.com.    
    
> [!NOTE]    
>  If the data source is [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Office Excel 2007 or [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Office Access 2007, the data source requires a different data provider than earlier versions of Excel or Access. For more information, see [Connect to an Excel Workbook](../../integration-services/connection-manager/connect-to-an-excel-workbook.md) and [Connect to an Access Database](../../integration-services/connection-manager/connect-to-an-access-database.md).    
    
 Several [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] tasks and data flow components use an OLE DB connection manager. For example, the OLE DB source and OLE DB destination use this connection manager to extract and load data, and the Execute SQL task can use this connection manager to connect to a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] database to run queries.    
    
 The OLE DB connection manager is also used to access OLE DB data sources in custom tasks written in unmanaged code that uses a language such as C++.    
    
 When you add an OLE DB connection manager to a package, [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] creates a connection manager that will resolve to an OLE DB connection at run time, sets the connection manager properties, and adds the connection manager to the **Connections** collection on the package.    
    
 The **ConnectionManagerType** property of the connection manager is set to **OLEDB**.    
    
 The OLE DB connection manager can be configured in the following ways:    
    
-   Provide a specific connection string configured to meet the requirements of the selected provider.    
    
-   Depending on the provider, include the name of the data source to connect to.    
    
-   Provide security credentials as appropriate for the selected provider.    
    
-   Indicate whether the connection that is created from the connection manager is retained at run time.    
    
## Logging    
 You can log the calls that the OLE DB connection manager makes to external data providers. You can use this logging capability to troubleshoot the connections that the OLE DB connection manager makes to external data sources. To log the calls that the OLE DB connection manager makes to external data providers, enable package logging and select the **Diagnostic** event at the package level. For more information, see [Troubleshooting Tools for Package Execution](../../integration-services/troubleshooting/troubleshooting-tools-for-package-execution.md).    
    
## Configuration of the OLEDB Connection Manager    
 You can set properties through [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] Designer or programmatically. For more information about the properties that you can set in [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] Designer, see [Configure OLE DB Connection Manager](../../integration-services/connection-manager/configure-ole-db-connection-manager.md). For information about configuring a connection manager programmatically, see the documentation for **T:Microsoft.SqlServer.Dts.Runtime.ConnectionManager** class in the Developer Guide.    
    
## Related Content    
    
-   Wiki article, [SSIS with Oracle Connectors](http://go.microsoft.com/fwlink/?LinkId=220670) on social.technet.microsoft.com.    
    
-   Technical article, [Connection Strings for OLE DB Providers](http://go.microsoft.com/fwlink/?LinkId=220744), on carlprothman.net.    
    
## See Also    
 [OLE DB Source](../../integration-services/data-flow/ole-db-source.md)     
 [OLE DB Destination](../../integration-services/data-flow/ole-db-destination.md)     
 [Execute SQL Task](../../integration-services/control-flow/execute-sql-task.md)     
 [Integration Services &#40;SSIS&#41; Connections](../../integration-services/connection-manager/integration-services-ssis-connections.md)    
    
  