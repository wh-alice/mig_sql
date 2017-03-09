---
title: "Restrictions on Regular and Context Connections | Microsoft Docs"
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
  - "context connections [CLR integration]"
  - "regular connections [CLR integration]"
ms.assetid: 0c6fe4cb-d846-40b5-8884-35a9c770f5e8
caps.latest.revision: 24
ms.author: "jhubbard"
manager: "jhubbard"
---
# Context Connections and Regular Connections - Restrictions
  This topic discusses the restrictions associated with code executing in the [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] process through context and regular connections.  
  
## Restrictions on Context Connections  
 When developing your application, take into account the following restrictions that apply to context connections:  
  
-   You can have only one context connection open at a given time for a given connection. If you have multiple statements running concurrently in separate connections, each one of them can get their own context connection. The restriction does not affect concurrent requests from different connections; it only affects a given request on a given connection.  
  
-   Multiple Active Result Sets (MARS) is not supported in a context connection.  
  
-   The **SqlBulkCopy** class does not operate in a context connection.  
  
-   Update batching in a context connection is not supported  
  
-   **SqlNotificationRequest** cannot be used with commands that execute against a context connection.  
  
-   Canceling commands that are running against the context connection is not supported. The **SqlCommand.Cancel** method silently ignores the request.  
  
-   No other connection string keywords can be used when you use "context connection=true".  
  
-   The **SqlConnection.DataSource** property returns null if the connection string for the **SqlConnection** is "context connection=true", instead of the name of the instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
-   Setting the **SqlCommand.CommandTimeout** property has no effect when the command is executed against a context connection.  
  
## Restrictions on Regular Connections  
 When developing your application, take into account the following restrictions that apply to regular connections:  
  
-   Asynchronous command execution against internal servers is not supported. Including "async=true" in the connection string of a command, and then executing the command, results in **System.NotSupportedException** being thrown. This message appears: "Asynchronous processing is not supported when running inside the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] process."  
  
-   **SqlDependency** object is not supported.  
  
## See Also  
 [Context Connection](../../../relational-databases/clr-integration/data-access/context-connection.md)  
  
  