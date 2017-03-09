---
title: "View or Change Server Properties (SQL Server) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "viewing server properties"
  - "server properties [SQL Server]"
  - "displaying server properties"
  - "servers [SQL Server], viewing"
ms.assetid: 55f3ac04-5626-4ad2-96bd-a1f1b079659d
caps.latest.revision: 32
ms.author: "rickbyh"
manager: "jhubbard"
---
# View or Change Server Properties (SQL Server)
  This topic describes how to view or change the properties of an instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] by using [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)], or SQL Server Configuration Manager.  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Limitations and Restrictions](#Restrictions)  
  
     [Security](#Security)  
  
-   **To view or change server properties, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
     [SQL Server Configuration Manager](#PowerShellProcedure)  
  
-   **Follow Up:**  [After you change server properties](#FollowUp)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Restrictions"></a> Limitations and Restrictions  
  
-   When using sp_configure, you must run either RECONFIGURE or RECONFIGURE WITH OVERRIDE after setting a configuration option. The RECONFIGURE WITH OVERRIDE statement is usually reserved for configuration options that should be used with extreme caution. However, RECONFIGURE WITH OVERRIDE works for all configuration options, and you can use it in place of RECONFIGURE.  
  
    > [!NOTE]  
    >  RECONFIGURE executes within a transaction. If any of the reconfigure operations fail, none of the reconfigure operations will take effect.  
  
-   Some property pages present information obtained via Windows Management Instrumentation (WMI). To display those pages, WMI must be installed on the computer running [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 For more information, see [Server-Level Roles](../../../relational-databases/security/authentication-access/server-level-roles.md).  
  
 Execute permissions on **sp_configure** with no parameters or with only the first parameter are granted to all users by default. To execute **sp_configure** with both parameters to change a configuration option or to run the RECONFIGURE statement, a user must be granted the ALTER SETTINGS server-level permission. The ALTER SETTINGS permission is implicitly held by the **sysadmin** and **serveradmin** fixed server roles.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To view or change server properties  
  
1.  In Object Explorer, right-click a server, and then click **Properties**.  
  
2.  In the **Server Properties** dialog box, click a page to view or change server information about that page. Some properties are read-only.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To view server properties by using the SERVERPROPERTY built-in function  
  
1.  Connect to the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. This example uses the [SERVERPROPERTY](../../../t-sql/functions/serverproperty-transact-sql.md) built-in function in a `SELECT` statement to return information about the current server. This scenario is useful when there are multiple instances of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] installed on a Windows-based server, and the client must open another connection to the same instance that is used by the current connection.  
  
    ```tsql  
    SELECT CONVERT( sysname, SERVERPROPERTY('servername'));  
    GO  
    ```  
  
#### To view server properties by using the sys.servers catalog view  
  
1.  Connect to the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. This example queries the [sys.servers](../../../relational-databases/reference/system-catalog-views/sys.servers-transact-sql.md) catalog view to return the name (`name`) and ID (`server_id`) of the current server, and the name of the OLE DB provider (`provider`) for connecting to a linked server.  
  
    ```tsql  
    USE AdventureWorks2012;   
    GO  
    SELECT name, server_id, provider  
    FROM sys.servers ;   
    GO  
  
    ```  
  
#### To view server properties by using the sys.configurations catalog view  
  
1.  Connect to the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. This example queries the [sys.configurations](../../../relational-databases/reference/system-catalog-views/sys.configurations-transact-sql.md) catalog view to return information about each server configuration option on the current server. The example returns the name (`name`) and description (`description`) of the option and whether the option is an advanced option (`is_advanced`).  
  
    ```wmimof  
    USE AdventureWorks2012;   
    GO  
    SELECT name, description, is_advanced  
    FROM sys.configurations ;   
    GO  
  
    ```  
  
#### To change a server property by using sp_configure  
  
1.  Connect to the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. This example shows how to use [sp_configure](../../../relational-databases/reference/system-stored-procedures/sp-configure-transact-sql.md) to change a server property. The example changes the value of the `fill factor` option to `100`. The server must be restarted before the change can take effect.  
  
```tsql  
Use AdventureWorks2012;  
GO  
sp_configure 'show advanced options', 1;  
GO  
RECONFIGURE;  
GO  
sp_configure 'fill factor', 100;  
GO  
RECONFIGURE;  
GO  
```  
  
 For more information, see [Server Configuration Options &#40;SQL Server&#41;](../../../database-engine/configure/windows/server-configuration-options-sql-server.md).  
  
##  <a name="PowerShellProcedure"></a> Using SQL Server Configuration Manager  
 Some server properties can be viewed or changed by using SQL Server Configuration Manager. For example, you can view the version and edition of the instance of SQL Server, or change the location where error log files are stored. These properties can also be viewed by querying the [Server-Related Dynamic Management Views and Functions](../../../relational-databases/reference/system-dynamic-management-views/server-related-dynamic-management-views-and-functions-transact-sql.md).  
  
#### To view or change server properties  
  
1.  On the **Start** menu, point to **All Programs**, point to [!INCLUDE[ssCurrentUI](../../../analysis-services/instances/install/windows/includes/sscurrentui-md.md)], point to **Configuration Tools**, and then click **SQL Server Configuration Manager**.  
  
2.  In **SQL Server Configuration Manager**, click **SQL Server Services**.  
  
3.  In the details pane, right-click **SQL Server (\<***instancename***>)**, and then click **Properties**.  
  
4.  In the **SQL Server (\<***instancename***>) Properties** dialog box, change the server properties on the **Service** tab or the **Advanced** tab, and then click **OK**.  
  
##  <a name="FollowUp"></a> Follow Up: After you change server properties  
 For some properties, the server might have to be restarted before the change can take effect.  
  
## See Also  
 [Server Configuration Options &#40;SQL Server&#41;](../../../database-engine/configure/windows/server-configuration-options-sql-server.md)   
 [SET Statements &#40;Transact-SQL&#41;](../../../t-sql/statements/set-statements-transact-sql.md)   
 [SERVERPROPERTY &#40;Transact-SQL&#41;](../../../t-sql/functions/serverproperty-transact-sql.md)   
 [sp_configure &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-configure-transact-sql.md)   
 [RECONFIGURE &#40;Transact-SQL&#41;](../../../t-sql/language-elements/reconfigure-transact-sql.md)   
 [SELECT &#40;Transact-SQL&#41;](../../../t-sql/queries/select-transact-sql.md)   
 [Configure WMI to Show Server Status in SQL Server Tools](../Topic/Configure%20WMI%20to%20Show%20Server%20Status%20in%20SQL%20Server%20Tools.md)   
 [SQL Server Configuration Manager](../../../relational-databases/sql-server-configuration-manager.md)   
 [Configuration Functions &#40;Transact-SQL&#41;](../../../t-sql/functions/configuration-functions-transact-sql.md)   
 [Server-Related Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/server-related-dynamic-management-views-and-functions-transact-sql.md)  
  
  