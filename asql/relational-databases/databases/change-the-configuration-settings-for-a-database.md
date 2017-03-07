---
title: "Change the Configuration Settings for a Database | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "database configuration [SQL Server]"
  - "configuration options [SQL Server], databases"
  - "modifying database configuration settings"
ms.assetid: c29c3385-5043-400f-bb4e-044a4c9a9a4b
caps.latest.revision: 29
ms.author: "rickbyh"
manager: "jhubbard"
---
# Change the Configuration Settings for a Database
  This topic describes how to change database-level options in [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)]. These options are unique to each database and do not affect other databases.  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Limitations and Restrictions](#Restrictions)  
  
     [Security](#Security)  
  
-   **To change the option settings for a database, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Restrictions"></a> Limitations and Restrictions  
  
-   Only the system administrator, database owner, members of the **sysadmin** and **dbcreator** fixed server roles and **db_owner** fixed database roles can modify these options.  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Requires ALTER permission on the database.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To change the option settings for a database  
  
1.  In Object Explorer, connect to a [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] instance, expand the server, expand **Databases**, right-click a database, and then click **Properties**.  
  
2.  In the **Database Properties** dialog box, click **Options** to access most of the configuration settings. File and filegroup configurations, mirroring and log shipping are on their respective pages.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To change the option settings for a database  
  
1.  Connect to the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. This example sets the recovery model and data page verification options for the [!INCLUDE[ssSampleDBobject](../../a9retired/includes/sssampledbobject-md.md)] sample database.  
  
 [!code-sql[DatabaseDDL#AlterDatabase7](../../relational-databases/databases/codesnippet/tsql/change-the-configuration_1.sql)]  
  
 For more examples, see [ALTER DATABASE SET Options &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql-set-options.md).  
  
## See Also  
 [ALTER DATABASE Compatibility Level &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql-compatibility-level.md)   
 [ALTER DATABASE Database Mirroring &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql-database-mirroring.md)   
 [ALTER DATABASE SET HADR &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql-set-hadr.md)   
 [Rename a Database](../../relational-databases/databases/rename-a-database.md)   
 [Shrink a Database](../../relational-databases/databases/shrink-a-database.md)  
  
  