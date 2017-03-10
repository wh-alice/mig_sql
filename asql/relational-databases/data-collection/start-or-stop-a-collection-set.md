---
title: "Start or Stop a Collection Set | Microsoft Docs"
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
  - "collection sets [SQL Server], stopping"
  - "collection sets [SQL Server], starting"
ms.assetid: 48a7b2fe-6bc3-4278-a7ec-1babc1290345
caps.latest.revision: 20
ms.author: "jhubbard"
manager: "jhubbard"
---
# Start or Stop a Collection Set
  This topic describes how to start or stop a collection set in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)].  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Limitations and Restrictions](#Restrictions)  
  
     [Prerequisites](#Prerequisites)  
  
     [Recommendations](#Recommendations)  
  
     [Security](#Security)  
  
-   **To start or stop a collection set, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Restrictions"></a> Limitations and Restrictions  
  
-   Data Collector stored procedures and catalog views are stored in the **msdb** database.  
  
-   Unlike regular stored procedures, the parameters for data collector stored procedures are strictly typed and do not support automatic data type conversion. If these parameters are not called with the correct input parameter data types, as specified in the argument description, the stored procedure returns an error.  
  
###  <a name="Prerequisites"></a> Prerequisites  
  
-   SQL Server Agent must be started.  
  
###  <a name="Recommendations"></a> Recommendations  
  
-   To obtain information about collection sets, query the [syscollector_collection_sets](../../relational-databases/reference/system-catalog-views/syscollector-collection-sets-transact-sql.md) catalog view.  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 Requires membership in the **dc_operator** fixed database role. If the collection set does not have a proxy account, membership in the **sysadmin** fixed server role is required.Examples  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To start a collection set  
  
1.  In Object Explorer, expand the **Management** node, expand **Data Collection**, and then expand **System Data Collection Sets**.  
  
2.  Right-click the collection set that you want to start, and then click **Start Data Collection Set**.  
  
     A message box displays the results of this action, and a green arrow on the icon for the collection set indicates that the collection set has started.  
  
#### To stop a collection set  
  
1.  In Object Explorer, expand the **Management** node, expand **Data Collection**, and then expand **System Data Collection Sets**.  
  
2.  Right-click the collection set that you want to stop, and then click **Stop Data Collection Set**.  
  
     A message box displays the results of this action, and a red circle on the icon for the collection set indicates that the collection set has stopped.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To start a collection set  
  
1.  Connect to the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. This example uses [sp_syscollector_start_collection_set](../../relational-databases/reference/system-stored-procedures/sp-syscollector-start-collection-set-transact-sql.md) to start the collection set that has the ID of `1`.  
  
```tsql  
USE msdb;  
GO  
EXEC sp_syscollector_start_collection_set @collection_set_id = 1;  
```  
  
#### To stop a collection set  
  
1.  Connect to the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. This example uses [sp_syscollector_stop_collection_set](../../relational-databases/reference/system-stored-procedures/sp-syscollector-stop-collection-set-transact-sql.md) to stop the collection set that has the ID of `1`.  
  
```tsql  
USE msdb;  
GO  
EXEC sp_syscollector_stop_collection_set @collection_set_id = 1;  
```  
  
## See Also  
 [Data Collector Views &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/data-collector-views-transact-sql.md)   
 [Data Collection](../../relational-databases/data-collection/data-collection.md)  
  
  