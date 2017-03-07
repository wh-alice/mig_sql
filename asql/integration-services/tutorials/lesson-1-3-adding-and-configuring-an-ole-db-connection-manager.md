---
title: "Step 3: Adding and Configuring an OLE DB Connection Manager | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: e7b74cba-a0e5-4478-af12-3f81b9484e9e
caps.latest.revision: 19
ms.author: "douglasl"
manager: "jhubbard"
---
# Lesson 1-3 - Adding and Configuring an OLE DB Connection Manager
After you have added a Flat File connection manager to connect to the data source, the next task is to add an OLE DB connection manager to connect to the destination. An OLE DB connection manager enables a package to extract data from or load data into any OLE DB–compliant data source. Using the OLE DB Connection manager, you can specify the server, the authentication method, and the default database for the connection.  
  
In this lesson, you will create an OLE DB connection manager that uses Windows Authentication to connect to the local instance of **AdventureWorksDB2012**. The OLE DB connection manager that you create will also be referenced by other components that you will create later in this tutorial, such as the Lookup transformation and the OLE DB destination.  
  
### Add and configure an OLE DB Connection Manager to the SSIS package  
  
1.  Right-click anywhere in the **Connection Managers** area, and then click **New OLE DB Connection**.  
  
2.  In the **Configure OLE DB Connection Manager** dialog box, click **New**.  
  
3.  For **Server name**, enter **localhost**.  
  
    When you specify localhost as the server name, the connection manager connects to the default instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] on the local computer. To use a remote instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], replace localhost with the name of the server to which you want to connect.  
  
4.  In the **Log on to the server** group, verify that **Use Windows Authentication** is selected.  
  
5.  In the **Connect to a database** group, in the **Select or enter a database name** box, type or select **AdventureWorksDW2012**.  
  
6.  Click **Test Connection** to verify that the connection settings you have specified are valid.  
  
7.  Click **OK**.  
  
8.  Click **OK**.  
  
9. In the **Data Connections** pane of the **Configure OLE DB Connection Manager** dialog box, verify that **localhost.AdventureWorksDW2012** is selected.  
  
10. Click **OK**.  
  
## Next Task in Lesson  
[Step 4: Adding a Data Flow Task to the Package](../Topic/Step%204:%20Adding%20a%20Data%20Flow%20Task%20to%20the%20Package.md)  
  
## See Also  
[OLE DB Connection Manager](../../integration-services/connection-manager/ole-db-connection-manager.md)  
  
