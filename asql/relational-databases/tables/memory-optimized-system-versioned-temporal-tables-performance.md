---
title: "Performance Considerations with Memory-Optimized System-Versioned Temporal Tables | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-03-28"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-tables"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 2e110984-7703-4806-a24b-b41e8c3018c6
caps.latest.revision: 14
ms.author: "carlrab"
manager: "jhubbard"
---
# Memory-Optimized System-Versioned Temporal Tables Performance
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  This topic discusses some specific performance considerations when using system-versioned memory-optimized temporal tables.  
  
-   When you add system-versioning to an existing non-temporal table expect performance impact on update and delete operations because history table is updated automatically.  
  
-   Every update and delete is recorded into internal memory-optimized history table, so you can experience unexpected memory consumption if your workload uses those two operations massively. Therefore we advise you the following:  
  
    -   Do not perform massive deletes from current table in order to increase available RAM by cleaning up the space. Consider deleting data in multiple batches with manually invoked data flush in between by invoking [sp_xtp_flush_temporal_history](../../relational-databases/reference/system-stored-procedures/temporal-table-sp-xtp-flush-temporal-history.md), or while **SYSTEM_VERSIONING = OFF**.  
  
    -   Do not perform massive table updates at once as it can result in memory consumption that is twice the amount of memory required to update a non-termporal memory-optimized table. Doubled memory consumption is temporary because data flush task works regularly to keep memory consumption of internal staging table within projected boundaries in the steady state (around 10%  of memory consumption of current temporal table). Consider doing massive updates  in multiple batches or while **SYSTEM_VERSIONING = OFF**, such as using updates to set the defaults for newly added columns.  
  
-   Period of activation for the data flush task is not configurable but you can enforce the process by invoking [sp_xtp_flush_temporal_history](../../relational-databases/reference/system-stored-procedures/temporal-table-sp-xtp-flush-temporal-history.md).  
  
-   Consider using clustered columnstore as a storage option for disk-based history table, especially if you plan to run analytics queries on historical data that make use of aggregate or windowing functions. In that case clustered columnstore will be an optimal choice for history table as it provides good data compression and behaves “insert-friendly” which is in alignment with how history data is being generated.  
  
## Did this Article Help You? We’re Listening  
 What information are you looking for, and did you find it? We’re listening to your feedback to improve the content. Please submit your comments to [sqlfeedback@microsoft.com](mailto:sqlfeedback@microsoft.com?subject=Your%20feedback%20about%20the%20Performance%20Considerations%20with%20Memory-Optimized%20System-Versioned%20Temporal%20Tables%20page)  
  
## See Also  
 [System-Versioned Temporal Tables with Memory-Optimized Tables](../../relational-databases/tables/system-versioned-temporal-tables-with-memory-optimized-tables.md)   
 [Creating a Memory-Optimized System-Versioned Temporal Table](../../relational-databases/tables/creating-a-memory-optimized-system-versioned-temporal-table.md)   
 [Working with Memory-Optimized System-Versioned Temporal Tables](../../relational-databases/tables/working-with-memory-optimized-system-versioned-temporal-tables.md)   
 [Monitoring Memory-Optimized System-Versioned Temporal Tables](../../relational-databases/tables/monitoring-memory-optimized-system-versioned-temporal-tables.md)   
 [Temporal Tables](../../relational-databases/tables/temporal-tables.md)   
 [Temporal Table System Consistency Checks](../../relational-databases/tables/temporal-table-system-consistency-checks.md)   
 [Manage Retention of Historical Data in System-Versioned Temporal Tables](../../relational-databases/tables/manage-retention-of-historical-data-in-system-versioned-temporal-tables.md)   
 [Temporal Table Metadata Views and Functions](../../relational-databases/tables/temporal-table-metadata-views-and-functions.md)  
  
  