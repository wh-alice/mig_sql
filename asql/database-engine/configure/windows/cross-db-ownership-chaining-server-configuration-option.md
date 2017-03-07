---
title: "cross db ownership chaining Server Configuration Option | Microsoft Docs"
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
  - "cross-database ownership chaining"
  - "cross db ownership chaining option"
  - "chaining ownership"
ms.assetid: 7b2d49f2-b91c-4aee-a52b-6cc49bed03af
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# cross db ownership chaining Server Configuration Option
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Use the **cross db ownership chaining** option to configure cross-database ownership chaining for an instance of [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 This server option allows you to control cross-database ownership chaining at the database level or to allow cross-database ownership chaining for all databases:  
  
-   When **cross db ownership chaining** is off (0) for the instance, cross-database ownership chaining is disabled for all databases.  
  
-   When **cross db ownership chaining** is on (1) for the instance, cross-database ownership chaining is on for all databases.  
  
-   You can set cross-database ownership chaining for individual databases using the SET clause of the ALTER DATABASE statement. If you are creating a new database, you can set the cross-database ownership chaining option for the new database using the CREATE DATABASE statement.  
  
     Setting **cross db ownership chaining** to 1 is not recommended unless all of the databases hosted by the instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] must participate in cross-database ownership chaining and you are aware of the security implications of this setting.  
  
## Controlling Cross-Database Ownership Chaining  
 Before turning cross-database ownership chaining on or off, consider the following:  
  
-   You must be a member of the **sysadmin** fixed server role to turn cross-database ownership chaining on or off.  
  
-   Before turning off cross-database ownership chaining on a production server, fully test all applications, including third-party applications, to ensure that the changes do not affect application functionality.  
  
-   You can change the **cross db ownership chaining** option while the server is running if you specify RECONFIGURE with **sp_configure**.  
  
-   If you have databases that require cross-database ownership chaining, the recommended practice is to turn off the **cross db ownership chaining** option for the instance using **sp_configure**; then turn on cross-database ownership chaining for individual databases that require it using the ALTER DATABASE statement.  
  
## See Also  
 [ALTER DATABASE &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-database-transact-sql.md)   
 [CREATE DATABASE &#40;SQL Server Transact-SQL&#41;](../../../t-sql/statements/create-database-sql-server-transact-sql.md)   
 [Server Configuration Options &#40;SQL Server&#41;](../../../database-engine/configure/windows/server-configuration-options-sql-server.md)   
 [sp_configure &#40;Transact-SQL&#41;](../../../relational-databases/system-stored-procedures/sp-configure-transact-sql.md)   
 [RECONFIGURE &#40;Transact-SQL&#41;](../../../t-sql/language-elements/reconfigure-transact-sql.md)  
  
  