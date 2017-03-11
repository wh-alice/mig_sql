---
title: "Server Properties (Connections Page) | Microsoft Docs"
ms.custom: ""
ms.date: "03/02/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.swb.serverproperties.connections.f1"
ms.assetid: 33be8ac5-12dd-4b8a-99e0-68261c219dd2
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# Server Properties - Connections Page
  Use this page to view or modify your connection options.  
  
## Connections  
 **Maximum number of concurrent connections (0 = unlimited)**  
 If set to a value other than zero, limits the number of connections that [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] will allow.  
  
> [!CAUTION]  
>  Setting this to a small value, such as 1 or 2, can prevent administrators from connecting to administer the server; however, the Dedicated Admin Connection can always connect.  
  
## Default Connection Options  
 **Default connection options**  
 Specifies the default connection options, as described in the following table.  
  
|Configuration option|Description|  
|--------------------------|-----------------|  
|**disable deferred constraint checking**|Controls interim or deferred constraint checking.|  
|**implicit transactions**|Controls whether a transaction is started implicitly when a statement is run.|  
|**cursor close on commit**|Controls behavior of cursors after a commit operation has been performed.|  
|**ansi warnings**|Controls truncation and NULL in aggregate warnings.|  
|**ansi padding**|Controls padding of fixed-length variables.|  
|**ansi nulls**|Controls `NULL` handling when using equality operators.|  
|**arithmetic abort**|Terminates a query when an overflow or divide-by-zero error occurs during query execution.|  
|**arithmetic ignore**|Returns NULL when an overflow or divide-by-zero error occurs during a query.|  
|**quoted identifier**|Differentiates between single and double quotation marks when evaluating an expression.|  
|**no count**|Turns off the message returned at the end of each statement that states how many rows were affected.|  
|**ansi null default on**|Alters the session's behavior to use ANSI compatibility for nullability. New columns defined without explicit nullability are defined to allow nulls.|  
|**ansi null default off**|Alters the session's behavior not to use ANSI compatibility for nullability. New columns defined without explicit nullability are defined not to allow nulls.|  
|**concat null yields null**|Returns NULL when concatenating a NULL value with a string.|  
|**numeric round abort**|Generates an error when a loss of precision occurs in an expression.|  
|**xact abort**|Rolls back a transaction if a Transact-SQL statement raises a run-time error.|  
  
 For more information on connection options, search Books Online for the specific option.  
  
## Remote Server Connections  
 **Allow remote connections to this server**  
 Controls the execution of stored procedures from remote servers running instances of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Selecting this check box has the same effect as setting the **sp_configureremote access** option to 1. Clearing it prevents execution of stored procedures from a remote server.  
  
 **Remote query timeout (in seconds, 0 = no timeout)**  
 Specifies how long (in seconds) a remote operation may take before [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] times out. The default is 600 seconds, or a 10-minute wait.  
  
 **Require distributed transactions for server-to-server communication**  
 Protects the actions of a server-to-server procedure through a [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Distributed Transaction Coordinator (MS DTC) transaction. For more information, see [Configure the remote proc trans Server Configuration Option](../../../database-engine/configure/windows/configure-the-remote-proc-trans-server-configuration-option.md).  
  
## Property Page Display Options  
 **Configured Values**  
 Displays the configured values for the options on this pane. If you change these values, click **Running Values** to see whether the changes have taken effect. If they have not, the instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] must be restarted first.  
  
 **Running Values**  
 View the currently running values for the options on this pane. These values are read-only.  
  
## See Also  
 [Options &#40;Query Execution: SQL Server: Advanced Page&#41;](http://msdn.microsoft.com/library/3ec788c7-22c3-4216-9ad0-81a168d17074)   
 [Server Configuration Options &#40;SQL Server&#41;](../../../database-engine/configure/windows/server-configuration-options-sql-server.md)  
  
  