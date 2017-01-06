---
title: "Connect to Server (Connection Properties Page) Database Engine | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.swb.connecttoce.connectionproperties.f1"
  - "sql13.swb.connecttosqlserver.connectionproperties.f1"
ms.assetid: edc1143c-6a47-4b02-92ab-441bdea8ea8a
caps.latest.revision: 4
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
# Connect to Server (Connection Properties Page) Database Engine
Use this tab to view or specify options when connecting to an instance of Microsoft SQL Server Database Engine or registering Database Engine in **Registered Servers**. **Connect** and **Options** only appear in this dialog box when connecting to an instance of the Database Engine. **Test** and **Save** only appear in this dialog box when registering Database Engine.  
  
## Options  
**Connect to database**  
Select a database to connect to from the list. If you select **<default>**, you will be connected to the default database for the server. If you select **<Browse server>**, you can browse the server for the database to which to connect.  
  
When connecting to an instance of the SQL Server Database Engine through Azure SQL Database, you must use SQL Server Authentication and specify a database in the **Connect to Server** dialog box, on the **Connection Properties** tab. Ensure that you select the **Encrypt connection** checkbox.  
  
By default, SQL Server connects to **master**. If you specify a user database, you will only see that database and its objects in Object Explorer. If you connect to **master**, you will be able to see all databases. For more information, see the [Windows Azure SQL Database Overview](http://go.microsoft.com/fwlink/?LinkId=163948).  
  
**Network protocol**  
Select a protocol from the list. The available client protocols are those that you configured using the Client Network Configuration in Computer Management.  
  
**Network packet size**  
Enter the size of the network packets to be sent. The default is 4096 bytes.  
  
**Connection timeout**  
Enter the number of seconds to wait for a connection to be established before timing out. The default value is 15 seconds.  
  
**Execution timeout**  
Enter the amount of time in seconds to wait before execution of a task is completed on the server. The default value is zero seconds, which indicates there is no time-out.  
  
**Encrypt connection**  
Forces encryption of the connection.  
  
**Use custom color**  
Select to specify the background color for the status bar in a Database Engine Query Editor window. To specify the color, click **Select**. In the **Color** dialog box, select a predefined color from the **Basic Colors** grid or click **Define Custom Colors** to define and use a custom color.  
  
-   When you specify a color for a server entry in the **Object Explorer** pane, that color is used when you open a Query Editor window. To open a Query Editor window, either right-click the server entry and select **New Query**; or, when the **Object Explorer** pane is active and focused on this server, click **New Query** on the toolbar.  
  
-   When you specify a color for a server entry in the **Registered Servers** pane, that color is used when you open a Query Editor window. To open a Query Editor window, either right-click the server entry and select **New Query**; or, when the **Registered Server** pane is active and focused on this server, click **New Query** on the toolbar.  
  
-   On the **File** menu, when you click **New** and then **Database Engine Query**, the color you that you specify in the **Connect to Server** dialog box applies to that Query Editor window.  
  
**Reset All**  
Replace all manually entered connection property values with their defaults.  
  
**Connect**  
Attempt a connection using the listed values.  
  
**Options**  
Click to change the dialog box and hide the additional server connection options, such as remembering the password.  
  
**Test**  
When registering Database Engine in **Registered Servers**, click to test the connection.  
  
**Save**  
Saves the settings in **Registered Servers**.  
  
## See Also  
[Connection Properties Dialog Box](../ssms/connection-properties-dialog-box.md)  
  
