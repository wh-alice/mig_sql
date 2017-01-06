---
title: "Connect to SQL Server (DB2ToSQL) | Microsoft Docs"
ms.custom: ""
ms.date: "07/11/2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "sql-ssma"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "Azure SQL Database"
  - "SQL Server"
ms.assetid: bc14a072-8949-4ee0-a4b4-ada55fe8df5c
caps.latest.revision: 3
ms.author: "lonnyb"
manager: "lonnyb"
---
# Connect to SQL Server (DB2ToSQL)
Use the **Connect to SQL Server** dialog box to connect to the instance of SQL Server that you want to migrate to. To access the **Connect to SQL Server** dialog box, on the **File** menu, click **Connect to SQL Server**.  
  
## Options  
**Server name**  
Enter or select the instance of SQL Server to connect to. By default, the instance that you connected to most recently is displayed.  
  
-   If you are connecting to the default instance on the local computer, you can enter either **localhost** or a dot (**.**).  
  
-   If you are connecting to the default instance on another computer, enter the name of the computer.  
  
-   If you are connecting to a named instance on another computer, enter the computer name, a backslash, and the instance name, such as *MyServer*\\*MyInstance*.  
  
**Server port**  
If your instance of SQL Server is not configured to accept connections on the default port (1433), enter the port number. Otherwise, leave this value blank.  
  
**Database**  
Specify the database to migrate objects and data to. This option is not available when reconnecting to SQL Server.  
  
**Authentication**  
Select the authentication method that is used to connect to SQL Server. To use your current Windows account, select Windows Authentication. To specify a SQL Server login and password, select SQL Server Authentication.  
  
**User name**  
If you are using SQL Server Authentication, enter the login for that instance of SQL Server. If you are using Windows Authentication, this option is not available.  
  
**Password**  
If you are using SQL Server Authentication, enter the password for the login on that instance of SQL Server. If you are using Windows Authentication, this option is not available.  
  
**Encrypt Connection**  
If you want to securely connect to SQL Server, make use of Encrypt connection by checking the **Encrypt connection** checkbox.  
  
**Trust Server Certificate**  
If you want to use this option, select the **Trust Server Certificate** checkbox.  
  
> [!NOTE]  
> To enable **Trust Server Certificate**, “Encrypt” must be set to **True**.  
  
