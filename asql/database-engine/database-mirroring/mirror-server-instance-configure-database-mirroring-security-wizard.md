---
title: "Mirror Server Instance (Configure Database Mirroring Security Wizard) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-high-availability"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.swb.configdbmsecurwiz.mirrorsrvr.f1"
ms.assetid: 53223432-615e-440f-904d-925d33ec2144
caps.latest.revision: 42
ms.author: "mikeray"
manager: "jhubbard"
---
# Mirror Server Instance (Configure Database Mirroring Security Wizard)
  Use this page to specify information about the server instance with the mirror database.  
  
> [!IMPORTANT]  
>  The mirror server instance must be running the same edition of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], either Standard or Enterprise, as the principal server instance. Also, we strongly recommend that they run on comparable systems that can handle identical workloads.  
  
 **To configure database mirroring by using SQL Server Management Studio**  
  
-   [Establish a Database Mirroring Session Using Windows Authentication &#40;SQL Server Management Studio&#41;](../../database-engine/database-mirroring/establish-database-mirroring-session-windows-authentication.md)  
  
-   [Start the Configuring Database Mirroring Security Wizard &#40;SQL Server Management Studio&#41;](../../database-engine/database-mirroring/start-the-configuring-database-mirroring-security-wizard.md)  
  
## Options  
 **Mirror server instance**  
 If a mirror server instance is already specified (on the **Mirroring** page of the **Database Properties** dialog box), that instance is displayed; for more information, see [Database Properties &#40;Mirroring Page&#41;](../../relational-databases/databases/database-properties-mirroring-page.md).  
  
 Otherwise, enter the name of the mirror server instance. Note that the mirror server instance cannot be the same as the principal server instance.  
  
 **Connect**  
 If a mirror server instance has not been specified, click **Connect**. This displays the **Connect to Server** dialog box in which you can specify the server instance and establish a connection.  
  
 If the instance has been specified, but the wizard lacks a connection with sufficient permission to check for the existence of the endpoint, click **Connect**. This displays the **Connect to Server** dialog box with the server instance pre-selected and unchangeable. Specify a domain account with sufficient permission, and connect to the server instance.  
  
> [!NOTE]  
>  When connecting to the server instance, the Configure Database Mirroring Security Wizard uses the credentials provided in the **Connect to Server** dialog box. These are different from the credentials of a mirroring session, which uses the credentials of the startup account where the server instance is running as a service.  
  
 **Listener Port**  
 The behavior of this option depends on whether the mirroring endpoint exists for this server instance, as follows:  
  
-   If a listener port does not exist for the server instance, port number 5022 is displayed in the **Port** text box. You can use any available port number, such as 7022.  
  
-   When the mirroring endpoint already exists, the port number from that endpoint is displayed. If you need to change the port, use an ALTER ENDPOINT command. For more information, see [ALTER ENDPOINT &#40;Transact-SQL&#41;](../../t-sql/statements/alter-endpoint-transact-sql.md).  
  
    > [!NOTE]  
    >  A port number is required.  
  
 **Endpoint name**  
 If the mirroring endpoint exists for this server instance, the endpoint name is displayed here. If the endpoint does not exist, you can specify the name of the endpoint.  
  
 **Encrypt data sent through this endpoint**  
 By default, encryption is enabled. When enabled, encryption is required (not merely supported) and uses the default values for all of the encryption options. For more information, see [CREATE ENDPOINT &#40;Transact-SQL&#41;](../../t-sql/statements/create-endpoint-transact-sql.md).  
  
 To disable encryption, clear the check box. To re-enable encryption, select the check box.  
  
## See Also  
 [The Database Mirroring Endpoint &#40;SQL Server&#41;](../../database-engine/database-mirroring/the-database-mirroring-endpoint-sql-server.md)   
 [Database Properties &#40;Mirroring Page&#41;](../../relational-databases/databases/database-properties-mirroring-page.md)   
 [Create a Database Mirroring Endpoint for Windows Authentication &#40;Transact-SQL&#41;](../../database-engine/database-mirroring/create-a-database-mirroring-endpoint-for-windows-authentication-transact-sql.md)   
 [Start Database Mirroring Monitor &#40;SQL Server Management Studio&#41;](../../database-engine/database-mirroring/start-database-mirroring-monitor-sql-server-management-studio.md)   
 [Database Mirroring &#40;SQL Server&#41;](../../database-engine/database-mirroring/database-mirroring-sql-server.md)  
  
  