---
title: "Configure the max worker threads Server Configuration Option | Microsoft Docs"
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
  - "worker threads [SQL Server]"
  - "max worker threads option"
ms.assetid: abeadfa4-a14d-469a-bacf-75812e48fac1
caps.latest.revision: 36
ms.author: "rickbyh"
manager: "jhubbard"
---
# Configure the max worker threads Server Configuration Option
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  This topic describes how to configure the **max worker threads** server configuration option in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] by using [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)]. The **max worker threads** option configures the number of worker threads that are available to [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] processes. [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] uses the native thread services of the operating systems so that one or more threads support each network that [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] supports simultaneously, another thread handles database checkpoints, and a pool of threads handles all users. The default value for **max worker threads** is 0. This enables [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to automatically configure the number of worker threads at startup. The default setting is best for most systems. However, depending on your system configuration, setting **max worker threads** to a specific value sometimes improves performance.  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Limitations and Restrictions](#Restrictions)  
  
     [Recommendations](#Recommendations)  
  
     [Security](#Security)  
  
-   **To configure the max worker threads option, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
-   **Follow Up:**  [After you configure the max worker threads option](#FollowUp)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Restrictions"></a> Limitations and Restrictions  
  
-   When the actual number of query requests is less than the amount set in **max worker threads**, one thread handles each query request. However, if the actual number of query request exceeds the amount set in **max worker threads**, [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] pools the worker threads so that the next available worker thread can handle the request.  
  
###  <a name="Recommendations"></a> Recommendations  
  
-   This option is an advanced option and should be changed only by an experienced database administrator or certified [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] technician.  
  
-   Thread pooling helps optimize performance when large numbers of clients are connected to the server. Usually, a separate operating system thread is created for each query request. However, with hundreds of connections to the server, using one thread per query request can consume large amounts of system resources. The **max worker threads** option enables [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to create a pool of worker threads to service a larger number of query requests, which improves performance.  
  
-   The following table shows the automatically configured number of max worker threads for various combinations of CPUs and versions of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
    |Number of CPUs|32-bit computer|64-bit computer|  
    |--------------------|----------------------|----------------------|  
    |\<= 4 processors|256|512|  
    |8 processors|288|576|  
    |16 processors|352|704|  
    |32 processors|480|960|  
    |64 processors|736|1472|  
    |128 processors|4224|4480|  
    |256 processors|8320|8576|  
  
    > [!NOTE]  
    >  [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] can no longer be installed on a 32-bit operating system. 32-bit computer values are listed for the assistance of customers running [!INCLUDE[ssSQL14](../../../analysis-services/includes/sssql14-md.md)] and earlier.   We recommend 1024 as the maximum number of worker threads for an instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] that is running on a 32-bit computer.  
  
    > [!NOTE]  
    >  For recommendations on using more than 64 CPUs, refer to [Best Practices for Running SQL Server on Computers That Have More Than 64 CPUs](http://technet.microsoft.com/library/ee210547\(SQL.105\).aspx).  
  
-   When all worker threads are active with long running queries, [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] might appear unresponsive until a worker thread completes and becomes available. Although this is not a defect, it can sometimes be undesirable. If a process appears to be unresponsive and no new queries can be processed, then connect to [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] using the dedicated administrator connection (DAC), and kill the process. To prevent this, increase the number of max worker threads.  
  
 The**max worker threads** server configuration option does not take into account threads that are required for all the system tasks such as Availibility Groups, Service Broker, Lock Manager, and others.  If the number of threads configured are being exceeded, the following query will provide information about the system tasks that have spawned the additional threads.  
  
```  
SELECT  
s.session_id,  
r.command,  
r.status,  
r.wait_type,  
r.scheduler_id,  
w.worker_address,  
w.is_preemptive,  
w.state,  
t.task_state,  
t.session_id,  
t.exec_context_id,  
t.request_id  
FROM sys.dm_exec_sessions AS s  
INNER JOIN sys.dm_exec_requests AS r  
    ON s.session_id = r.session_id  
INNER JOIN sys.dm_os_tasks AS t  
    ON r.task_address = t.task_address  
INNER JOIN sys.dm_os_workers AS w  
    ON t.worker_address = w.worker_address  
WHERE s.is_user_process = 0;  
  
```  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Execute permissions on **sp_configure** with no parameters or with only the first parameter are granted to all users by default. To execute **sp_configure** with both parameters to change a configuration option or to run the RECONFIGURE statement, a user must be granted the ALTER SETTINGS server-level permission. The ALTER SETTINGS permission is implicitly held by the **sysadmin** and **serveradmin** fixed server roles.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To configure the max worker threads option  
  
1.  In Object Explorer, right-click a server and select **Properties**.  
  
2.  Click the **Processors** node.  
  
3.  In the **Max worker threads** box, type or select a value from 128 through 32767.  
  
     Use the **max worker threads** option to configure the number of worker threads available to [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] processes. The default setting for **max worker threads** is best for most systems. However, depending on your system configuration, setting **max worker threads** to a smaller value sometimes improves performance.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To configure the max worker threads option  
  
1.  Connect to the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. This example shows how to use [sp_configure](../../../relational-databases/system-stored-procedures/sp-configure-transact-sql.md) to configure the `max worker threads` option to `900`.  
  
```tsql  
USE AdventureWorks2012 ;  
GO  
EXEC sp_configure 'show advanced options', 1;  
GO  
RECONFIGURE ;  
GO  
EXEC sp_configure 'max worker threads', 900 ;  
GO  
RECONFIGURE;  
GO  
  
```  
  
 For more information, see [Server Configuration Options &#40;SQL Server&#41;](../../../database-engine/configure/windows/server-configuration-options-sql-server.md).  
  
##  <a name="FollowUp"></a> Follow Up: After you configure the max worker threads option  
 The change will take effect immediately without requiring the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] to restart.  
  
## See Also  
 [RECONFIGURE &#40;Transact-SQL&#41;](../../../t-sql/language-elements/reconfigure-transact-sql.md)   
 [Server Configuration Options &#40;SQL Server&#41;](../../../database-engine/configure/windows/server-configuration-options-sql-server.md)   
 [sp_configure &#40;Transact-SQL&#41;](../../../relational-databases/system-stored-procedures/sp-configure-transact-sql.md)   
 [Diagnostic Connection for Database Administrators](../../../database-engine/configure/windows/diagnostic-connection-for-database-administrators.md)  
  
  