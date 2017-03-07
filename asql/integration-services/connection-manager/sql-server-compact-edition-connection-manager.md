---
title: "SQL Server Compact Edition Connection Manager | Microsoft Docs"
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
  - "SQL Server Compact, connection manager"
  - "connections [Integration Services], SQL Server Compact"
  - "connection managers [Integration Services], SQL Server Compact"
ms.assetid: ba627d4d-41f4-49fc-a921-f534cde67770
caps.latest.revision: 33
ms.author: "douglasl"
manager: "jhubbard"
---
# SQL Server Compact Edition Connection Manager
  A [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact connection manager enables a package to connect to a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact database. The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact destination that [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] includes uses this connection manager to load data into a table in a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact database.  
  
> [!NOTE]  
>  On a 64-bit computer, you must run packages that connect to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact data sources in 32-bit mode. The [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact provider that [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] uses to connect to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact data sources is available only in a 32-bit version.  
  
## Configuration the SQL Server Compact Edition Connection Manager  
 When you add a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact connection manager to a package, [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] creates a connection manager that will resolve to a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact connection at run time, sets the connection manager properties, and adds the connection manager to the **Connections** collection on the package.  
  
 The **ConnectionManagerType** property of the connection manager is set to **SQLMOBILE**.  
  
 You can configure the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact connection manager in the following ways:  
  
-   Provide a connection string that specifies the location of the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Compact database.  
  
-   Provide a password for a password-protected database.  
  
-   Specify the server on which the database is stored.  
  
-   Indicate whether the connection that is created from the connection manager is retained at run time.  
  
 You can set properties through [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] Designer or programmatically.  
  
 For more information about the properties that you can set in [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] Designer, click one of the following topics:  
  
-   [SQL Server Compact Edition Connection Manager Editor &#40;Connection Page&#41;](../../integration-services/connection-manager/sql-server-compact-edition-connection-manager-editor-connection-page.md)  
  
-   [SQL Server Compact Edition Connection Manager Editor &#40;All Page&#41;](../../integration-services/connection-manager/sql-server-compact-edition-connection-manager-editor-all-page.md)  
  
 For information about configuring a connection manager programmatically, see <xref:Microsoft.SqlServer.Dts.Runtime.ConnectionManager> and [Adding Connections Programmatically](../../integration-services/building-packages-programmatically/adding-connections-programmatically.md).  
  
  