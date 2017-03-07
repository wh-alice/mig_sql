---
title: "Create a Custom Collection Set That Uses the Generic T-SQL Query Collector Type (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "T-SQL Query collector type"
  - "collection sets [SQL Server], creating custom"
ms.assetid: 6b06db5b-cfdc-4ce0-addd-ec643460605b
caps.latest.revision: 26
ms.author: "jhubbard"
manager: "jhubbard"
---
# Create Custom Collection Set - Generic T-SQL Query Collector Type
  You can create a custom collection set with collection items that use the Generic T-SQL Query collector type by using the stored procedures that are provided with the data collector. Accomplishing this task involves using Query Editor in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] to carry out the following procedures:  
  
-   Configure upload schedules.  
  
-   Define and create the collection set.  
  
-   Define and create a collection item.  
  
-   Verify that the collection set and collection items exist.  
  
> [!NOTE]  
>  Before you create a custom collection set, you must configure data collection parameters. For more information, see [Configure Data Collection Parameters &#40;Transact-SQL&#41;](../../relational-databases/data-collection/configure-data-collection-parameters-transact-sql.md).  
  
### Define and create the collection set  
  
1.  Define a new collection set using the sp_syscollector_create_collection_set stored procedure.  
  
    ```  
    USE msdb;  
    DECLARE @collection_set_id int;  
    DECLARE @collection_set_uid uniqueidentifier;  
    EXEC sp_syscollector_create_collection_set   
        @name=N'DMV Test 1',   
        @collection_mode=0,   
        @description=N'This is a test collection set',   
        @logging_level=1,   
        @days_until_expiration=14,   
        @schedule_name=N'CollectorSchedule_Every_15min',   
        @collection_set_id=@collection_set_id OUTPUT,   
        @collection_set_uid=@collection_set_uid OUTPUT;  
    SELECT @collection_set_id, @collection_set_uid;  
    ```  
  
     The collection mode can be set to either 0 (cached) or to 1 (non-cached).  
  
     The logging level can be set to 0, 1 or 2.  
  
     The following preconfigured schedules are provided with the data collector:  
  
    -   CollectorSchedule_Every_5min  
  
    -   CollectorSchedule_Every_10min  
  
    -   CollectorSchedule_Every_15min  
  
    -   CollectorSchedule_Every_30min  
  
    -   CollectorSchedule_Every_60min  
  
    -   CollectorSchedule_Every_6h  
  
     If you do not want to use one of the schedules that are provided, you can create a new schedule and use it for the collection set. For more information, see [Create and Attach Schedules to Jobs](../Topic/Create%20and%20Attach%20Schedules%20to%20Jobs.md).  
  
### Define and create a collection item  
  
1.  Because the new collection item is based on a generic collector type that is already installed, you can run the following code to set the GUID to correspond to the Generic T-SQL Query collector type.  
  
    ```tsql  
    DECLARE @collector_type_uid uniqueidentifier;  
    SELECT @collector_type_uid = collector_type_uid FROM [msdb].[dbo].[syscollector_collector_types]   
    WHERE name = N'Generic T-SQL Query Collector Type';  
    DECLARE @collection_item_id int;  
    ```  
  
2.  Use the sp_syscollector_create_collection_item stored procedure to create the collection item. Declare the schema for the collection item so it maps to the schema that is required for the Generic T-SQL Query collector type.  
  
    ```tsql  
    EXEC sp_syscollector_create_collection_item   
        @name=N'Query Stats - Test 1',   
        @parameters=N'  
            <ns:TSQLQueryCollector xmlns:ns="DataCollectorType">  
            <Query>  
            <Value>SELECT * FROM sys.dm_exec_query_stats</Value>  
            <OutputTable>dm_exec_query_stats</OutputTable>  
            </Query>  
            </ns:TSQLQueryCollector>',   
        @collection_item_id=@collection_item_id OUTPUT,   
        @frequency=5,   
        @collection_set_id=@collection_set_id,   
        @collector_type_uid=@collector_type_uid;  
    SELECT @collection_item_id;  
    ```  
  
### Verify that the new collection set and collection item exist  
  
1.  Before starting the new collection set, run the following query to verify that the new collection set and its collection item have been created.  
  
    ```tsql  
    USE msdb;  
    SELECT * FROM syscollector_collection_sets;  
    SELECT * FROM syscollector_collection_items;  
    GO  
    ```  
  
     You can also do a visual check in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)]. In Object Explorer, expand the **Management** node, and then expand **Data Collection**. The new collection set will be displayed. The red circle icon for the collection set indicates that the collection set is stopped.  
  
## Example  
 The following code sample combines the examples that are documented in the previous steps. Note that the collection frequency that is set for the collection item (5 seconds) is ignored because the collection set collection mode is set to 0, which is cached mode. For more information, see [Data Collection](../../relational-databases/data-collection/data-collection.md).  
  
```tsql  
USE msdb;  
  
DECLARE @collection_set_id int;  
DECLARE @collection_set_uid uniqueidentifier  
  
EXEC dbo.sp_syscollector_create_collection_set  
    @name = N'DMV Stats Test 1',  
    @collection_mode = 0,  
    @description = N'This is a test collection set',  
    @logging_level=1,  
    @days_until_expiration = 14,  
    @schedule_name=N'CollectorSchedule_Every_15min',  
    @collection_set_id = @collection_set_id OUTPUT,  
    @collection_set_uid = @collection_set_uid OUTPUT;  
SELECT @collection_set_id,@collection_set_uid;  
  
DECLARE @collector_type_uid uniqueidentifier;  
SELECT @collector_type_uid = collector_type_uid FROM syscollector_collector_types   
WHERE name = N'Generic T-SQL Query Collector Type';  
  
DECLARE @collection_item_id int;  
EXEC sp_syscollector_create_collection_item  
@name= N'Query Stats - Test 1',  
@parameters=N'  
<ns:TSQLQueryCollector xmlns:ns="DataCollectorType">  
<Query>  
  <Value>select * from sys.dm_exec_query_stats</Value>  
  <OutputTable>dm_exec_query_stats</OutputTable>  
</Query>  
 </ns:TSQLQueryCollector>',  
    @collection_item_id = @collection_item_id OUTPUT,  
    @frequency = 5, -- This parameter is ignored in cached mode  
    @collection_set_id = @collection_set_id,  
    @collector_type_uid = @collector_type_uid;  
SELECT @collection_item_id;  
  
GO  
```  
  
## See Also  
 [Data Collector Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/data-collector-stored-procedures-transact-sql.md)   
 [Manage Schedules](../Topic/Manage%20Schedules.md)   
 [Start or Stop a Collection Set](../../relational-databases/data-collection/start-or-stop-a-collection-set.md)  
  
  