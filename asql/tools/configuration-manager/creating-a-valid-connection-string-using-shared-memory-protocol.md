---
title: "Creating a Valid Connection String Using Shared Memory Protocol | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "connection strings [Database Engine], shared memory"
  - "aliases [SQL Server], shared memory"
ms.assetid: 5fff42e8-377f-4b40-b0c8-b02393f8a1af
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
---
# Creating a Valid Connection String Using Shared Memory Protocol
  Connections to [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] from a client running on the same computer use the shared memory protocol. Shared memory has no configurable properties. Shared memory is always tried first, and cannot be moved from the top position of the **Enabled Protocols** list in the **Client Protocols Properties** list. The Shared Memory protocol can be disabled, which is useful when troubleshooting one of the other protocols.  
  
 You cannot create an alias using the shared memory protocol, but if shared memory is enabled, then connecting to the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] by name, creates a shared memory connection. A shared memory connection string uses the format `lpc:<servername>[\instancename]`.  
  
## Connecting to the Local Server  
 When connecting to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] running on the same computer as the client, you can use **(local)** as the server name. This is not encouraged as it leads to ambiguity, however it can be useful when the client is known to be running on the intended computer. For instance, when creating an application for mobile disconnected users, such as a sales force, where [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] will run on laptop computers and store project data, a client connecting to **(local)** would always connect to the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] running on the laptop. The word **localhost** or a period (**.**) can be used in place of **(local)**.  
  
## Verifying your Connection Protocol  
 The following query will return the protocol used for the current connection.  
  
```  
SELECT net_transport   
FROM sys.dm_exec_connections   
WHERE session_id = @@SPID;  
  
```  
  
## Examples:  
 The following names will connect to the local computer with the shared memory protocol if it is enabled:  
  
 `<servername>`  
  
 `<servername>\<instancename>`  
  
 `(local)`  
  
 `localhost`  
  
 You cannot create an alias for a shared memory connection.  
  
> [!NOTE]  
>  Specifying an IP Address in the **Server** box will result in a TCP/IP connection.  
  
## See Also  
 [Creating a Valid Connection String Using TCP IP](../../tools/configuration-manager/creating-a-valid-connection-string-using-tcp-ip.md)   
 [Creating a Valid Connection String Using Named Pipes](../Topic/Creating%20a%20Valid%20Connection%20String%20Using%20Named%20Pipes.md)   
 [Choosing a Network Protocol](../Topic/Choosing%20a%20Network%20Protocol.md)  
  
  