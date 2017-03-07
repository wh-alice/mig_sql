---
title: "MSSQLSERVER_233 | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "233"
helpviewer_keywords: 
  - "233 (Database Engine error)"
ms.assetid: 201665dc-7ac8-4c19-90d3-33354c5caa72
caps.latest.revision: 13
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSSQLSERVER_233
  
## Details  
  
|||  
|-|-|  
|Product Name|SQL Server|  
|Event ID|233|  
|Event Source|MSSQLSERVER|  
|Component|SQLEngine|  
|Symbolic Name||  
|Message Text|A connection was successfully established with the server, but then an error occurred during the login process. (provider: Shared Memory Provider, error: 0 - No process is on the other end of the pipe.) (Microsoft SQL Server, Error: 233)|  
  
## Explanation  
The [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] client cannot connect to the server. This error could occur because the server is not configured to accept remote connections.  
  
## User Action  
Use the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Configuration Manager tool to allow [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] to accept remote connections.  
  
## See Also  
[Network Protocols and Network Libraries](../sql-server/install/network-protocols-and-network-libraries.md)  
[Client Network Configuration](../database-engine/configure/windows/client-network-configuration.md)  
[Configure Client Protocols](../database-engine/configure/windows/configure-client-protocols.md)  
[Enable or Disable a Server Network Protocol](../database-engine/configure/windows/enable-or-disable-a-server-network-protocol.md)  
  
