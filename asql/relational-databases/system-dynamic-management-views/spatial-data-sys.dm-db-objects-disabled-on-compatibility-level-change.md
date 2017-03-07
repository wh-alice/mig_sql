---
title: "sys.dm_db_objects_disabled_on_compatibility_level_change (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "dm_db_objects_disabled_on_compatibility_level_change"
  - "dm_db_objects_disabled_on_compatibility_level_change_TSQL"
  - "sys.dm_db_objects_disabled_on_compatibility_level_change"
  - "sys.dm_db_objects_disabled_on_compatibility_level_change_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_db_objects_disabled_on_compatibility_level_change catalog view"
ms.assetid: a5d70064-0330-48b9-b853-01eba50755d0
caps.latest.revision: 16
ms.author: "rickbyh"
manager: "jhubbard"
---
# Spatial Data - sys.dm_db_objects_disabled_on_compatibility_level_change
[!INCLUDE[tsql-appliesto-ss2012-asdb-xxxx-xxx_md](../../relational-databases/databases/includes/tsql-appliesto-ss2012-asdb-xxxx-xxx-md.md)]

  Lists the indexes and constraints that will be disabled as a result of changing compatibility level in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Indexes and constraints that contain persisted computed columns whose expressions use spatial UDTs will be disabled after upgrading or changing compatibility level. Use this dynamic management function to determine the impact of a change in compatibility level.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658), [!INCLUDE[sqldbesa](../../database-engine/configure/windows/includes/sqldbesa-md.md)].|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```tsql  
sys.dm_db_objects_disabled_on_compatibility_level_change ( compatibility_level )   
```  
  
##  <a name="Arguments"></a> Arguments  
 *compatibility_level*  
 **int** that identifies the compatibility level that you plan to set.  
  
## Table Returned  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**class**|**int**|1 = constraints<br /><br /> 7 = indexes and heaps|  
|**class_desc**|**nvarchar(60)**|OBJECT or COLUMN for constraints<br /><br /> INDEX for indexes and heaps|  
|**major_id**|**int**|OBJECT ID of constraints<br /><br /> OBJECT ID of table that contains indexes and heaps|  
|**minor_id**|**int**|NULL for constraints<br /><br /> Index_id for indexes and heaps|  
|**dependency**|**nvarchar(60)**|Description of the dependency that is causing the constraint or index to be disabled. The same values are also used in the warnings that are raised during upgrade. Examples include the following:<br /><br /> "space" for an intrinsic<br /><br /> "geometry" for a system UDT<br /><br /> "geography::Parse" for a method of a system UDT|  
  
## General Remarks  
 Persisted computed columns that use some intrinsic functions are disabled when the compatibility level is changed. Also, persisted computed columns that use any Geometry or Geography method are disabled when a database is upgraded.  
  
### Which functions cause persisted computed columns to be disabled?  
 When the following functions are used in the expression of a persisted computed column, they cause indexes and constraints that reference those columns to be disabled when the compatibility level is changed from 80 to 90:  
  
-   **IsNumeric**  
  
 When the following functions are used in the expression of a persisted computed column, they cause indexes and constraints that reference those columns to be disabled when the compatibility level is changed from 100 to 110 or higher:  
  
-   **Soundex**  
  
-   **Geography:: GeomFromGML**  
  
-   **Geography:: STGeomFromText**  
  
-   **Geography:: STLineFromText**  
  
-   **Geography:: STPolyFromText**  
  
-   **Geography:: STMPointFromText**  
  
-   **Geography:: STMLineFromText**  
  
-   **Geography:: STMPolyFromText**  
  
-   **Geography:: STGeomCollFromText**  
  
-   **Geography:: STGeomFromWKB**  
  
-   **Geography:: STLineFromWKB**  
  
-   **Geography:: STPolyFromWKB**  
  
-   **Geography:: STMPointFromWKB**  
  
-   **Geography:: STMLineFromWKB**  
  
-   **Geography:: STMPolyFromWKB**  
  
-   **Geography:: STUnion**  
  
-   **Geography:: STIntersection**  
  
-   **Geography:: STDifference**  
  
-   **Geography:: STSymDifference**  
  
-   **Geography:: STBuffer**  
  
-   **Geography:: BufferWithTolerance**  
  
-   **Geography:: Parse**  
  
-   **Geography:: Reduce**  
  
### Behavior of the disabled objects  
 **Indexes**  
  
 If the clustered index is disabled, or if a non-clustered index is forced, the following error is raised: "The query processor is unable to produce a plan because the index '%.\*ls' on table or view '%.\*ls' is disabled." To re-enable these objects, rebuild the indexes after upgrade by calling **ALTER INDEX ON … REBUILD**.  
  
 **Heaps**  
  
 If a table with a disabled heap is used, the following error is raised. To re-enable these objects, rebuild after upgrade by calling **ALTER INDEX ALL ON … REBUILD**.  
  
```  
// ErrorNumber: 8674  
// ErrorSeverity: EX_USER  
// ErrorFormat: The query processor is unable to produce a plan because the table or view '%.*ls' is disabled.  
// ErrorCause: The table has a disabled heap.   
// ErrorCorrectiveAction: Rebuild the disabled heap to enable it.   
// ErrorInserts: table or view name   
// ErrorOwner: mtintor   
// ErrorFirstProduct: SQL11  
```  
  
 If you try to rebuild the heap during an online operation, an error is raised.  
  
 **Check Constraints and Foreign Keys**  
  
 Disabled check constraints and foreign keys do not raise an error. However, the constraints are not enforced when rows are modified. To re-enable these objects, check the constraints after upgrading by calling **ALTER TABLE … CHECK CONSTRAINT**.  
  
 **Persisted Computed Columns**  
  
 Since it is not possible to disable a single column, the entire table is disabled by disabling the clustered index or heap.  
  
## Security  
  
### Permissions  
 Requires the VIEW DATABASE STATE permission.  
  
## Example  
 The following example shows a query on **sys.dm_db_objects_disabled_on_compatibility_level_change** to find the objects impacted by changing the compatibility level to 120.  
  
```tsql  
SELECT * FROM sys.dm_db_objects_disabled_on_compatibility_level_change(120);  
GO  
  
```  
  
  