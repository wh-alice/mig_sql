---
title: "Register a Connected Server (SQL Server Management Studio) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-07-28"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.swb.registerserver.f1"
helpviewer_keywords: 
  - "Registered Servers [SQL Server], register connected servers"
  - "connected server registrations [SQL Server]"
ms.assetid: 77deb5f5-0f80-484f-8b8b-29afa67ec18f
caps.latest.revision: 23
ms.author: "jhubbard"
manager: "jhubbard"
---
# Register a Connected Server (SQL Server Management Studio)
  This topic describes how to register a connected server in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] (SSMS). By registering the server, you can save the connection information for servers that you access frequently. A server can be registered before connecting, or at the time of connection from Object Explorer.  You can view your registered servers in SSMS by navigating to **View**\\**Registered Servers** from the menu.
  
 **In This Topic**  
  
-   **To register a server, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To register a connected server  
  
In Object Explorer, right-click a server to which you already are connected, and then click **Register**.
  
**Server name**  
This field defaults to the server name you connected to.  Optionally, you can type a server name or choose one from the drop-down list.

**Authentication**  
Two authentication modes are available when connecting to an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. 

-    **Windows Authentication**  
Windows Authentication mode allows a user to connect through a [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows user account. 

-    **SQL Server Authentication**   
When a user connects with a specified login name and password from a nontrusted connection, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] performs the authentication itself by checking whether a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login account has been set up and whether the specified password matches the one previously recorded. If [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] does not have a login account set, authentication fails, and the user receives an error message.

     > [!IMPORTANT]  
     > [!INCLUDE[ssNoteWinAuthentication](../../integration-services/includes/ssnotewinauthentication-md.md)] For more information, see [Choose an Authentication Mode](../../relational-databases/security/choose-an-authentication-mode.md).  

     -    **User name**  
Shows the current user name you are connecting with. This read-only option is only available if you have selected to connect using Windows Authentication. To change **User names**, log in to the computer as a different user. 

     -    **Login**  
Enter the login to connect with. This option is available only if you have selected to connect using [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Authentication.  

     -    **Password**  
Enter the password for the login. This option can be edited only if you have selected to connect by using [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Authentication. 

     -    **Remember password**  
Select to have [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] encrypt and store the password you have entered. This option is displayed only if you have selected to connect using [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Authentication.  

          > [!NOTE]  
          > If you have stored the password and want to stop storing it, clear this check box, and then click **Save**.  

**Registered server name**  
The name you want to appear in Registered Servers. This name does not have to match the **Server name** box.  
  
**Registered server description**  
Enter an optional description of the server.  
  
**Test**  
Click to test the connection to the server selected in **Server name**.  
  
**Save**  
Click to save the registered server settings. 

## See Also  
[Create a New Registered Server (SQL Server Management Studio)](../../tools/sql-server-management-studio/create-a-new-registered-server-sql-server-management-studio.md)
  
  