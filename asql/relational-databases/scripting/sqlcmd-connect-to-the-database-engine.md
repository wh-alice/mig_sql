---
title: "Connect to the Database Engine With sqlcmd | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "sqlcmd utility, Database Engine connections"
  - "Named Pipes [SQL Server], sqlcmd utility"
  - "TCP/IP [SQL Server], client protocols"
  - "network protocols [SQL Server], sqlcmd utility"
  - "protocols [SQL Server], sqlcmd utility"
  - "VIA"
  - "client protocols [SQL Server]"
ms.assetid: 74b0fb71-7f8e-4171-9431-d07528532524
caps.latest.revision: 20
ms.author: "jhubbard"
manager: "jhubbard"
---
# sqlcmd - Connect to the Database Engine
  [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] supports client communication with the TCP/IP network protocol (the default), and the named pipes protocol. The shared memory protocol is also available if the client is connecting to an instance of the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] on the same computer. There are three common methods of selecting the protocol. The protocol used by the **sqlcmd** utility is determined in the following order:  
  
-   **sqlcmd** uses the protocol specified as part of the connection string as described below.  
  
-   If no protocol is specified as part the connection string, **sqlcmd** will use the protocol defined as part of the alias that it is connecting to. To configure **sqlcmd** to use a specific network protocol by creating an alias, see [Create or Delete a Server Alias for Use by a Client &#40;SQL Server Configuration Manager&#41;](../../database-engine/configure/windows/create-or-delete-a-server-alias-for-use-by-a-client.md).  
  
-   If the protocol is not specified in some other way, **sqlcmd** will use the network protocol determined by the protocol order in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager.  
  
 The following examples show various ways of connecting to the default instance of [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] on port 1433, and named instances of [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] presumed to be listening on port 1691. Some of these examples use the IP address of the loopback adapter (127.0.0.1). Test using the IP address of your computer network interface card.  
  
 Connect to the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] by specifying the instance name:  
  
```  
sqlcmd -S ComputerA  
sqlcmd -S ComputerA\instanceB  
```  
  
 Connect to the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] by specifying the IP address:  
  
```  
sqlcmd -S 127.0.0.1  
sqlcmd -S 127.0.0.1\instanceB  
```  
  
 Connect to the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] by specifying the TCP\IP port number:  
  
```  
sqlcmd -S ComputerA,1433  
sqlcmd -S ComputerA,1691  
sqlcmd -S 127.0.0.1,1433  
sqlcmd -S 127.0.0.1,1691  
```  
  
### To connect using TCP/IP  
  
-   Connect using the following general syntax:  
  
    ```  
    sqlcmd -S tcp:<computer name>,<port number>  
    ```  
  
-   Connect to the default instance:  
  
    ```  
    sqlcmd -S tcp:ComputerA,1433  
    sqlcmd -S tcp:127.0.0.1,1433  
    ```  
  
-   Connect to a named instance:  
  
    ```  
    sqlcmd -S tcp:ComputerA,1691  
    sqlcmd -S tcp:127.0.0.1,1691  
    ```  
  
### To connect using named pipes  
  
-   Connect using one of the following general syntax:  
  
    ```  
    sqlcmd -S np:\\<computer name>\<pipe name>  
    ```  
  
-   Connect to the default instance:  
  
    ```  
    sqlcmd -S np:\\ComputerA\pipe\sql\query  
    sqlcmd -S np:\\127.0.0.1\pipe\sql\query  
    ```  
  
-   Connect to a named instance instance:  
  
    ```  
    sqlcmd -S np:\\ComputerA\pipe\MSSQL$<instancename>\sql\query  
    sqlcmd -S np:\\127.0.0.1\pipe\MSSQL$<instancename>\sql\query  
    ```  
  
### To connect using shared memory (a local procedure call) from a client on the server  
  
-   Connect using one of the following general syntax:  
  
    ```  
    sqlcmd -S lpc:<computer name>  
    ```  
  
-   Connect to the default instance:  
  
    ```  
    sqlcmd -S lpc:ComputerA  
    ```  
  
-   Connect to a named instance:  
  
    ```  
    sqlcmd -S lpc:ComputerA\<instancename>  
    ```  
  
  