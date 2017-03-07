---
title: "Log In to an Instance of SQL Server (Command Prompt) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "logins [SQL Server], named instance of SQL Server"
  - "log ins [SQL Server]"
  - "logins [SQL Server], default instance of SQL Server"
  - "command prompt [SQL Server], logins"
  - "logging in [SQL Server]"
ms.assetid: f67c11e3-c519-40c9-82c1-07efa9d9985e
caps.latest.revision: 26
ms.author: "rickbyh"
manager: "jhubbard"
---
# Log In to an Instance of SQL Server (Command Prompt)
  This topic describes how to test connectivity to an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], use the **sqlcmd** utility.  
  
##  <a name="SSMSProcedure"></a>  
  
#### To log in to the default instance of SQL Server  
  
1.  From a command prompt, enter the following command to connect by using Windows Authentication:  
  
    ```  
    sqlcmd [ /E ] [ /S servername ]  
  
    ```  
  
#### To log in to a named instance of SQL Server  
  
1.  From a command prompt, enter the following command to connect by using Windows Authentication:  
  
    ```  
    sqlcmd [ /E ] /S servername\instancename  
  
    ```  
  
## See Also  
 [sqlcmd Utility](../../../tools/sqlcmd-utility.md)   
 [osql Utility](../../../tools/osql-utility.md)  
  
  