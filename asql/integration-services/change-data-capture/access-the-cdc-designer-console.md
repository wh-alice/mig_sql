---
title: "Access the CDC Designer Console | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "accMsDes"
ms.assetid: b168c64e-c1b5-42d4-a92a-84de1dd0324e
caps.latest.revision: 9
ms.author: "douglasl"
manager: "jhubbard"
---
# Access the CDC Designer Console
  You can access the CDC Designer Console from the computer where you installed the console. For more information about installation, see Installation.  
  
 When you open the CDC Designer Console, the Connect to SQL Server dialog box opens.  
  
 The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login that accesses the CDC Designer must have UPDATE permissions on the MSXDBCDC database. In addition, the login must also have the `dbcreator` fixed-server role to create new Oracle CDC Instances. It is recommended that the login also have SELECT access to the CDC databases being used or the user will not be able to view the state of those databases.  
  
 Enter the following information in the Connect to SQL Server dialog box.  
  
### Server Name  
 Type the name of the server where the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is located.  
  
### Authentication  
 Select one of the following:  
  
-   **Windows Authentication**  
  
-   **SQL Server Authentication**: If you select this option, you must type the **Login** and **Password** for the user in the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] you are connecting to.  
  
 The login must have a database role that allows access to the MSXCDCDB database. It is recommended that the login also have access to any additional databases being used or the user will not be able to view the data in those databases.  
  
### Options  
 Click the arrow to view available options to be configured. You can choose to leave these options with their default value. The available options are:  
  
 **Connection Timeout**  
 Type the time (in seconds) that the CDC Service for Oracle waits for a connection to the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] before timing out. The default value is **15**.  
  
 **Execution Timeout**  
 Type the time (in seconds) that the Oracle CDC Windows Service waits for a command to execute before timing out. The default value is **30**.  
  
 **Encrypt Connection**  
 Select **Encrypt Connection** for communication between the Oracle CDC Service and the target [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance using an encrypted connection.**Advanced**: Click **Advanced** and type any additional connection properties into the Advanced Connection Properties dialog box, if necessary.  
  
 **Advanced**  
 Click **Advanced** and type any additional connection properties into the Advanced Connection Properties dialog box, if necessary.  
  
 For information about the Advanced Connection Properties dialog box, see [Advanced Connection Properties](../../integration-services/change-data-capture/advanced-connection-properties.md).  
  
## See Also  
 [SQL Server Connection Required Permissions for the CDC Designer](../../integration-services/change-data-capture/sql-server-connection-required-permissions-for-the-cdc-designer.md)  
  
  