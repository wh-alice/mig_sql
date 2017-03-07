---
title: "ODBC Connection Manager | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "connections [Integration Services], ODBC"
  - "ODBC connection manager"
  - "data sources [Integration Services], connections"
  - "connection managers [Integration Services], ODBC"
ms.assetid: e8c77aa7-6772-485e-918e-cef9eeb18c58
caps.latest.revision: 41
ms.author: "douglasl"
manager: "jhubbard"
---
# ODBC Connection Manager
  An ODBC connection manager enables a package to connect to a variety of database management systems using the Open Database Connectivity specification (ODBC).  
  
 When you add an ODBC connection to a package and set the connection manager properties, [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] creates a connection manager and adds the connection manager to the **Connections** collection of the package. At run time the connection manager is resolved as a physical ODBC connection.  
  
 The **ConnectionManagerType** property of the connection manager is set to **ODBC**.  
  
 You can configure the ODBC connection manager in the following ways:  
  
-   Provide a connection string that references a user or system data source name.  
  
-   Specify the server to connect to.  
  
-   Indicate whether the connection is retained at run time.  
  
## Configuration of the ODBC Connection Manager  
 You can set properties through [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] Designer or programmatically.  
  
 For more information about the properties that you can set in [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] Designer, click one of the following topic:  
  
-   [ODBC Connection Manager UI Reference](../../integration-services/connection-manager/odbc-connection-manager-ui-reference.md)  
  
 For information about configuring a connection manager programmatically, see <xref:Microsoft.SqlServer.Dts.Runtime.ConnectionManager> and [Adding Connections Programmatically](../../integration-services/building-packages-programmatically/adding-connections-programmatically.md).  
  
## See Also  
 [Integration Services &#40;SSIS&#41; Connections](../../integration-services/connection-manager/integration-services-ssis-connections.md)  
  
  