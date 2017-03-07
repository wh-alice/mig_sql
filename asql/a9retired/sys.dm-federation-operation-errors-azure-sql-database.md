---
title: "sys.dm_federation_operation_errors (Azure SQL Database) | Microsoft Docs"
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
  - "sys.dm_federation_operation_errors_TSQL"
  - "sys.dm_federation_operation_errors"
  - "dm_federation_operation_errors_TSQL"
  - "dm_federation_operation_errors"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "dm_federation_operation_errors"
  - "sys.dm_federation_operation_errors"
ms.assetid: 8984f154-4d77-43f3-81e0-329893900167
caps.latest.revision: 7
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# sys.dm_federation_operation_errors (Azure SQL Database)
  Returns rows containing information on errors that occur during SPLIT or DROP federation operations.  
  
> [!IMPORTANT]  
>  The current implementation of Federations will be retired with Web and Business service tiers. Consider deploying custom sharding solutions to maximize scalability, flexibility, and performance. For more information about custom sharding, see [Scaling Out Azure SQL Databases](http://go.microsoft.com/fwlink/?LinkId=397318).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].|  
  
 The `sys.dm_federation_operations_errors` view contains the following columns.  
  
|Columns|Data Type|Description|  
|-------------|---------------|-----------------|  
|federation_operation_id|**uniqueidentifier**||  
|federation_operation_type|**nvarchar(60)**|Federation operation description (SPLIT or DROP)|  
|federation_id|**int**|The target federation_id for the federation operation.|  
|federation_name|**sysname**|Name of the federation for the given federation_id.|  
|start_date|**datetimeoffset**|The UTC time when the operation was initiated.|  
|last_modify_date|**datetimeoffset**|The UTC time when information on the federation operation was last updated.|  
|percent_complete|**real**|The percentage of rows that have been copied when the error occurred.<br /><br /> Values range from 0 to 100.|  
|error_code|**int**|The code indicating the error that has occurred.|  
|error_desc|**nvarchar(4000)**|Description of the error that occurred.|  
|error_severity|**int**|Returns 16 if the operation failed.|  
|error_state|**int**|Returns 1 if the operation failed|  
  
## Permissions  
 You must be connected to the database used to start the federation operation, and you must have VIEW DATABASE STATE permissions.  
  
## Remarks  
 For federation operations that complete successfully, all data about the operation disappears from [sys.dm_federation_operations &#40;Azure SQL Database&#41;](../a9retired/sys.dm-federation-operations-azure-sql-database.md) and [sys.dm_federation_operation_members &#40;Azure SQL Database&#41;](../a9retired/sys.dm-federation-operation-members-azure-sql-database.md) views. If an error is encountered during a federation operation and the operation is unsuccessful due to the error, the rows are copied from [sys.dm_federation_operations &#40;Azure SQL Database&#41;](../a9retired/sys.dm-federation-operations-azure-sql-database.md) and [sys.dm_federation_operation_members &#40;Azure SQL Database&#41;](../a9retired/sys.dm-federation-operation-members-azure-sql-database.md) to sys.dm_federation_operation_errors and [sys.dm_federation_operation_error_members &#40;Azure SQL Database&#41;](../a9retired/sys.dm-federation-operation-error-members-azure-sql-database.md).  
  
  