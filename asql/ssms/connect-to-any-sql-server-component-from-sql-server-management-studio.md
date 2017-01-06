---
title: "Connect to Any SQL Server Component from SQL Server Management Studio | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "connections [SQL Server], SQL Server Management Studio"
  - "saving connections"
  - "components [SQL Server], connections"
  - "SQL Server Management Studio [SQL Server], connections"
ms.assetid: 5eeb41bd-b25b-4d3b-a005-a7d9e4b5978e
caps.latest.revision: 5
ms.author: "sstein"
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
  - "zh-cn"
  - "zh-tw"
---
# Connect to Any SQL Server Component from SQL Server Management Studio
SQL Server Management Studio provides functionality for managing every component of SQL Server. Use Management Studio to connect to:  
  
-   An instance of the SQL Server Database Engine.  
  
-   Analysis Services.  
  
-   Integration Services.  
  
-   Reporting Services.  
  
Although Management Studio allows you to work with queries without first establishing a connection to a data source, most other tasks require a connection. Management Studio provides the **Connect to Server** dialog box to configure connection properties to SQL Server components. When Management Studio starts, it opens the **Connect to Server** dialog box and prompts you to connect to a server. The **Connect to Server** dialog box retains the connection settings from the last time it was used.  
  
> [!NOTE]  
> This feature can be turned off so no connection is automatically initiated. For more information, see [Database Engine Service Startup Options](http://msdn.microsoft.com/en-us/d373298b-f6cf-458a-849d-7083ecb54ef5).  
  
## Saving Connections  
You can save connections to specific servers in Registered Servers, or you can save connections in projects with Solution Explorer.  
  
### Saving Connections in Registered Servers  
When you register a server, Management Studio saves the connection information in Registered Servers. To connect to a registered server, double-click the server name in Registered Servers. Object Explorer then opens a connection to the server.  
  
### Saving Connections in Solution Explorer  
Solution Explorer allows you to store related queries, scripts, connections, and other associated information in a project. Each script project contains a node called **Connections**, where you can save one or more connections. To add a connection, right-click **Connections**, and then click **New Connection**. To access a saved connection, expand **Connections** and double-click the connection. Management Studio opens a query window associated with that connection. When saved, scripts retain their association to a specific connection.  
  
## See Also  
[Use SQL Server Management Studio](../ssms/use-sql-server-management-studio.md)  
[Object Explorer](../ssms/object-explorer.md)  
  
