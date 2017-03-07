---
title: "contained database authentication Server Configuration Option | Microsoft Docs"
ms.custom: ""
ms.date: "2017-03-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "contained database, enabling"
  - "contained database authentication option"
ms.assetid: b80768d2-ac20-4035-a335-d9adb74b3f6e
caps.latest.revision: 11
ms.author: "rickbyh"
manager: "jhubbard"
---
# contained database authentication Server Configuration Option
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Use the **contained database authentication** option to enable contained databases on the instance of [!INCLUDE[ssDEnoversion](../../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)].  
  
 This server option allows you to control **contained database authentication**.  
  
-   When **contained database authentication** is off (0) for the instance, contained databases cannot be created, or attached to the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
-   When **contained database authentication** is on (1) for the instance, contained databases can be created, or attached to the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
 A contained database includes all database settings and metadata required to define the database and has no configuration dependencies on the instance of the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] where the database is installed. Users can connect to the database without authenticating a login at the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] level. Isolating the database from the Database Engine makes it possible to easily move the database to another instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Including all the database settings in the database enables database owners to manage all the configuration settings for the database. For more information about contained databases, see [Contained Databases](../../../relational-databases/databases/contained-databases.md).  

> [!NOTE]
> Contained databases are always enabled for [!INCLUDE[ssSDS_md](../../../analysis-services/multidimensional-models/includes/sssds-md.md)] and [!INCLUDE[ssSDW_md](../../../database-engine/configure/windows/includes/sssdw-md.md)] and cannot be disabled.
  
 If an instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] has any contained databases the **contained database authentication** setting can be set to 0 by using the **RECONFIGURE WITH OVERRIDE** statement. Setting **contained database authentication** to 0 will disable contained database authentication for the contained databases.  
  
> [!IMPORTANT]  
>  When contained databases are enabled, database users with the ALTER ANY USER permission, such as members of the db_owner and db_accessadmin database roles, can grant access to databases and by doing so, grant access to the instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. This means that control over access to the server is no longer limited to members of the sysadmin and securityadmin fixed server role, and logins with the server level CONTROL SERVER and ALTER ANY LOGIN permission. Before allowing contained databases, you should understand the risks associated with contained databases. For more information, see [Security Best Practices with Contained Databases](../../../relational-databases/databases/security-best-practices-with-contained-databases.md).  
  
## Examples  
 The following example enables contained databases on the instance of the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
```tsql  
sp_configure 'contained database authentication', 1;  
GO  
RECONFIGURE;  
GO  
```  
  
## See Also  
 [sp_configure &#40;Transact-SQL&#41;](../../../relational-databases/system-stored-procedures/sp-configure-transact-sql.md)   
 [RECONFIGURE &#40;Transact-SQL&#41;](../../../t-sql/language-elements/reconfigure-transact-sql.md)   
 [Server Configuration Options &#40;SQL Server&#41;](../../../database-engine/configure/windows/server-configuration-options-sql-server.md)  
  
  