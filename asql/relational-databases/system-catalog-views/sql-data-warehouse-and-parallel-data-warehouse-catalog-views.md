---
title: "SQL Data Warehouse and Parallel Data Warehouse Catalog Views | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: ef6f58e2-0162-4bb2-951a-a786da7453e4
caps.latest.revision: 5
ms.author: "barbkess"
manager: "jhubbard"
---
# SQL Data Warehouse and Parallel Data Warehouse Catalog Views
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-asdw-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-asdw-pdw-md.md)]

  This topic lists the [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)] catalog views.  
  
 All [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)] catalog views begin with **sys.pdw**.  
  
## [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)] Catalog Views  
 The following catalog views apply to both [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]:  
  
 [sys.pdw_column_distribution_properties &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-column-distribution-properties-transact-sql.md)  
  
 [sys.pdw_database_mappings &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-database-mappings-transact-sql.md)  
  
 [sys.pdw_distributions &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-distributions-transact-sql.md)  
  
 [sys.pdw_index_mappings &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-index-mappings-transact-sql.md)  
  
 [sys.pdw_loader_backup_run_details &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-loader-backup-run-details-transact-sql.md)  
  
 [sys.pdw_loader_backup_runs &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-loader-backup-runs-transact-sql.md)  
  
 [sys.pdw_nodes_column_store_dictionaries &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-nodes-column-store-dictionaries-transact-sql.md)  
  
 [sys.pdw_nodes_column_store_row_groups &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-nodes-column-store-row-groups-transact-sql.md)  
  
 [sys.pdw_nodes_column_store_segments &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-nodes-column-store-segments-transact-sql.md)  
  
 [sys.pdw_nodes_columns &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-nodes-columns-transact-sql.md)  
  
 [sys.pdw_nodes_indexes &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-nodes-indexes-transact-sql.md)  
  
 [sys.pdw_nodes_partitions &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-nodes-partitions-transact-sql.md)  
  
 [sys.pdw_nodes_pdw_physical_databases &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-nodes-pdw-physical-databases-transact-sql.md)  
  
 [sys.pdw_nodes_tables &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-nodes-tables-transact-sql.md)  
  
 [sys.pdw_table_distribution_properties &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-table-distribution-properties-transact-sql.md)  
  
 [sys.pdw_table_mappings &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-table-mappings-transact-sql.md)  
  
## [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)] Catalog Views  
 The following catalog views apply to [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)] only:  
  
 [sys.pdw_diag_event_properties &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-diag-event-properties-transact-sql.md)  
  
 [sys.pdw_diag_events &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-diag-events-transact-sql.md)  
  
 [sys.pdw_diag_sessions &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-diag-sessions-transact-sql.md)  
  
 [sys.pdw_health_alerts &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-health-alerts-transact-sql.md)  
  
 [sys.pdw_health_component_groups &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-health-component-groups-transact-sql.md)  
  
 [sys.pdw_health_component_properties &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-health-component-properties-transact-sql.md)  
  
 [sys.pdw_health_component_status_mappings &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-health-component-status-mappings-transact-sql.md)  
  
 [sys.pdw_health_components &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-health-components-transact-sql.md)  
  
 [sys.pdw_loader_run_stages &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.pdw-loader-run-stages-transact-sql.md)  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md)  
  
  