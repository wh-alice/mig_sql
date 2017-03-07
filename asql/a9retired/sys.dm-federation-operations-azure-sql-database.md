---
title: "sys.dm_federation_operations (Azure SQL Database) | Microsoft Docs"
ms.custom: 
  - "MSDN content"
  - "MSDN - SQL DB"
ms.date: "12/08/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.service: "sql-database"
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
f1_keywords: 
  - "sys.dm_federation_operations"
  - "dm_federation_operations_TSQL"
  - "dm_federation_operations"
  - "sys.dm_federation_operations_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_federation_operations"
  - "dm_federation_operations"
ms.assetid: c755810f-d411-4ecb-8ecc-ce0289fd6c48
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# sys.dm_federation_operations (Azure SQL Database)
  Returns one row per SPLIT or DROP operation on a federation. Each row contains information on the progress and any error conditions for the operation.  
  
> [!IMPORTANT]  
>  The current implementation of Federations will be retired with Web and Business service tiers. Consider deploying custom sharding solutions to maximize scalability, flexibility, and performance. For more information about custom sharding, see [Scaling Out Azure SQL Databases](http://go.microsoft.com/fwlink/?LinkId=397318).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].|  
  
|Column|Data type|Description|  
|------------|---------------|-----------------|  
|federation_operation_id|**uniqueidentifier**|Unique operation id that identifies the federation operation in the system.|  
|federation_operation_type|**nvarchar(60)**|Federation operation description (‘CREATE FEDERATION’, ‘ALTER FEDERATION SPLIT’ or ‘ALTER FEDERATION DROP’ or ‘DROP FEDERATION’)|  
|federation_id|**int**|The target federation_id for the federation operation from sys.federations system view.|  
|federation_name|**sysname**|Name of the federation for the given federation_id. This information is mostly redundant except for operations like DROP FEDERATION where federation metadata is immediately cleaned up but federation operation may continue to execute.|  
|start_date|**datetimeoffset**|The UTC time at a regional [!INCLUDE[ssSDS](../a9retired/includes/sssds-md.md)] datacenter when the member filtered copying was initiated.|  
|last_modify_date|**datetimeoffset**|The UTC time at regional [!INCLUDE[ssSDS](../a9retired/includes/sssds-md.md)] datacenter when the information on the federation operation has last been updated.|  
|percent_complete|**real**|The percentage of rows that have been copied. Values range from 0 to 100. [!INCLUDE[ssSDS](../a9retired/includes/sssds-md.md)] may automatically recover from some errors, such as failover, and restart the member filtered copy. In this case, percentage_complete would restart from 0.|  
  
## Permissions  
 You must be connected to the database used to start the federation operation, and you must have VIEW DATABASE STATE permissions.  
  
## Remarks  
 The primary key for this view is federation_operation_id, which contains a randomly generated value. In combination with sys.dm_federation_operation_members, this view provides information on the progress of an operation  
  
 Information is reported as long as an operation is being executed, and is cleaned up immediately after the operation completes.  
  
 This view exists in all databases, but returns no rows in databases that do not contain federations, or do not have any ongoing operations on federations. This view also exists in federation members, but will never return rows as federation members cannot contain federations or execute federation operations.  
  
 The operations types in sys.dm_federation_operations and the member_type in [sys.dm_federation_operation_members &#40;Azure SQL Database&#41;](../a9retired/sys.dm-federation-operation-members-azure-sql-database.md) are correlated as follows:  
  
-   **CREATE FEDERATION:** federation_operation_type = ‘CREATE FEDERATION’  
  
     All member types will be ‘DESTINATION’ for member_type in sys.federation_operation_members.  
  
-   **ALTER FEDERATION:** federation_operation_type = ‘ALTER FEDERATION SPLIT’ or ‘ALTER FEDERATION DROP’  
  
     The source will be marked as ‘SOURCE’ for member_type in sys.federation_operation_members.  
  
     The destination will be marked as ‘DESTINATION’ for member_type in sys.federation_operation_members.  
  
-   **DROP FEDERATION** federation_operation_type = ‘DROP FEDERATION’  
  
     All member types should be ‘SOURCE’ for member_type in sys.federation_operation_members.  
  
  