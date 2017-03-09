---
title: "sys.dm_tran_top_version_generators (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "dm_tran_top_version_generators"
  - "sys.dm_tran_top_version_generators"
  - "dm_tran_top_version_generators_TSQL"
  - "sys.dm_tran_top_version_generators_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_tran_top_version_generators dynamic management view"
ms.assetid: cec7809b-ba8a-4df9-b5bb-d4f651ff1a86
caps.latest.revision: 34
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.dm_tran_top_version_generators (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns a virtual table for the objects that are producing the most versions in the version store. **sys.dm_tran_top_version_generators** returns the top 256 aggregated record lengths that are grouped by the **database_id** and **rowset_id**. **sys.dm_tran_top_version_generators** retrieves data by querying the **dm_tran_version_store** virtual table. **sys.dm_tran_top_version_generators** is an inefficient view to run because this view queries the version store, and the version store can be very large. We recommend that you use this function to find the largest consumers of the version store.  
  
> [!NOTE]  
>  To call this from [!INCLUDE[ssSDWfull](../../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../../database-engine/configure/windows/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_tran_top_version_generators**.  
  
## Syntax  
  
```  
  
sys.dm_tran_top_version_generators  
```  
  
## Table Returned  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**database_id**|**int**|Database ID.|  
|**rowset_id**|**bigint**|Rowset ID.|  
|**aggregated_record_length_in_bytes**|**int**|Sum of the record lengths for each **database_id** and **rowset_id pair** in the version store.|  
|**pdw_node_id**|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../../database-engine/configure/windows/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
  
## Permissions  
 On [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] requires VIEW SERVER STATE permission on the server.  
  
 On [!INCLUDE[ssSDS](../../../analysis-services/multidimensional-models/includes/sssds-md.md)] Premium Tiers requires the VIEW DATABASE STATE permission in the database. On [!INCLUDE[ssSDS](../../../analysis-services/multidimensional-models/includes/sssds-md.md)] Standard and Basic Tiers requires the [!INCLUDE[ssSDS](../../../analysis-services/multidimensional-models/includes/sssds-md.md)] admin account.  
  
## Remarks  
 Because **sys.dm_tran_top_version_generators** might have to read many pages as it scans the entire version store, running **sys.dm_tran_top_version_generators** can interfere with system performance.  
  
## Examples  
 The following example uses a test scenario in which four concurrent transactions, each identified by a transaction sequence number (XSN), are running in a database that has the ALLOW_SNAPSHOT_ISOLATION and READ_COMMITTED_SNAPSHOT options set to ON. The following transactions are running:  
  
-   XSN-57 is an update operation under serializable isolation.  
  
-   XSN-58 is the same as XSN-57.  
  
-   XSN-59 is a select operation under snapshot isolation.  
  
-   XSN-60 is the same as XSN-59.  
  
 The following query is executed.  
  
```  
SELECT  
    database_id,  
    rowset_id,  
    aggregated_record_length_in_bytes  
  FROM sys.dm_tran_top_version_generators;  
```  
  
 [!INCLUDE[ssResult](../../../relational-databases/includes/ssresult-md.md)]  
  
```  
database_id rowset_id            aggregated_record_length_in_bytes  
----------- -------------------- ---------------------------------  
9           72057594038321152    87  
9           72057594038386688    33  
```  
  
 The output shows that all versions are created by `database_id``9` and that the versions generate from two tables.  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Transaction Related Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/transaction-related-dynamic-management-views-and-functions-transact-sql.md)  
  
  

