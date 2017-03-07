---
title: "Named Pipes Properties | Microsoft Docs"
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
  - "pipes [SQL Server]"
  - "listening [SQL Server], pipes"
  - "pipes [SQL Server], listening on pipes"
  - "Named Pipes [SQL Server], listening on pipes"
ms.assetid: a5fd5b8e-f889-485b-89e3-d4010ec4c6ec
caps.latest.revision: 32
ms.author: "rickbyh"
manager: "jhubbard"
---
# Named Pipes Properties
  Use the **Protocol**page on the **Named Pipes Properties** dialog box to view or change the named pipe that [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] listens to, when using the Named Pipes protocol.  
  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] must be restarted to enable or disable the protocol, or change the named pipe.  
  
## Options  
 **Enabled**  
 Possible values are **Yes** and **No**.  
  
 **Pipe Name**  
 Specifies the named pipe on which [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] listens. By default, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] listens on: `\\.\pipe\sql\query` for the default instance and `\\.\pipe\MSSQL$<instancename>\sql\query` for a named instance. This field is limited to 2047 characters.  
  
## Creating an Alternate Named Pipe  
 To change the named pipe, type the new pipe name in the **Pipe Name** box and then stop and restart [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Since **sql\query** is well known as the named pipe used by [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], changing the pipe can help reduce the risk of attack by malicious programs.  
  
### Example  
 Type **\\\\.\pipe\unit\app** to listen on the **unit\app** pipe.  
  
 Type **\\\\.\pipe\acct** to listen on the **acct** pipe.  
  
## See Also  
 [Enable or Disable a Server Network Protocol](../../database-engine/configure/windows/enable-or-disable-a-server-network-protocol.md)   
 [Choosing a Network Protocol](../Topic/Choosing%20a%20Network%20Protocol.md)   
 [Creating a Valid Connection String Using Named Pipes](../Topic/Creating%20a%20Valid%20Connection%20String%20Using%20Named%20Pipes.md)  
  
  