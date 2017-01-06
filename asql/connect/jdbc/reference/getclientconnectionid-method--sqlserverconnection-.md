---
title: "getClientConnectionID Method (SQLServerConnection) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: bee39c11-733a-461f-92cc-33efcb2af87d
caps.latest.revision: 6
ms.author: "genemi"
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
  - "sv-se"
  - "zh-cn"
  - "zh-tw"
---
# getClientConnectionID Method (SQLServerConnection)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Gets the connection ID of the most recent connection attempt, regardless of whether the attempt succeeded or failed.  
  
## Syntax  
  
```vb  
public Java.util.UUID SQLServerConnection.getClientConnectionID();  
```  
  
## Return Value  
 A 16-byte GUID representing the connection ID of the most recent connection attempt. Or, NULL if there is a failure after the connection request is initiated and the pre-login handshake.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 For more information about accessing diagnostic information in the extended events log, see [Accessing Diagnostic Information in the Extended Events Log](../../../connect/jdbc/accessing-diagnostic-information-in-the-extended-events-log.md).  
  
 The following sample shows how to get the connection ID:  
  
```  
Connection con = DriverManager.getConnection(connectionUrl);  
UUID id = ((ISQLServerConnection)con).getClientConnectionId();  
```  
  
 The following sample shows another way to get the connection ID:  
  
```  
SQLServerConnectionPoolDataSource ds = new SQLServerConnectionPoolDataSource();  
ds.setUser("…");  
ds.setPassword("…");  
ds.setServerName("…");  
PooledConnection pcon= ds.getPooledConnection();  
Connection cn = pcon.getConnection();  
UUID conid = ((ISQLServerConnection)cn).getClientConnectionId();  
```  
  
 **getClientConnectionID** works regardless of which version of the server you connect to, but extended events logs and entry on connectivity ring buffer errors will not be present in SQL Server 2008 R2 and earlier.  
  
 You can locate the connection ID in the extended events log to see if the failure was on the server if the extended event for logging connection ID is enabled. You can also locate the connection ID in the connection ring buffer ([Connectivity troubleshooting in SQL Server 2008 with the Connectivity Ring Buffer](http://go.microsoft.com/fwlink/?LinkId=207752)) for certain connection errors. If the connection ID is not in the connection ring buffer, you can assume a network error.  
  
## See Also  
 [SQLServerConnection Members](../../../connect/jdbc/reference/sqlserverconnection-members.md)   
 [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md)  
  
  