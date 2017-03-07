---
title: "sys.dm_federation_operation_members (Azure SQL Database) | Microsoft Docs"
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
  - "sys.dm_federation_operation_members"
  - "sys.dm_federation_operation_members_TSQL"
  - "dm_federation_operation_members_TSQL"
  - "dm_federation_operation_members"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "dm_federation_operation_members"
  - "sys.dm_federation_operation_members"
ms.assetid: 87176154-ac1b-40a1-a875-0bdaf8decd65
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# sys.dm_federation_operation_members (Azure SQL Database)
  Returns a list of federation members involved in federation operations.  
  
> [!IMPORTANT]  
>  The current implementation of Federations will be retired with Web and Business service tiers. Consider deploying custom sharding solutions to maximize scalability, flexibility, and performance. For more information about custom sharding, see [Scaling Out Azure SQL Databases](http://go.microsoft.com/fwlink/?LinkId=397318).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].|  
  
 The `sys.dm_federation_operation_members` view contains the following columns.  
  
|Columns|Data Type|Description|  
|-------------|---------------|-----------------|  
|federation_operation_id|**uniqueidentifier**|Unique operation id that identifies the federation operation in the system.|  
|member_id|**int**|The ID of the source or destination member in the sys.federation_members view.|  
|member_type|**nvarchar(60)**|‘Source’ or ‘Destination’|  
  
## Permissions  
 You must be connected to the database used to start the federation operation, and you must have VIEW DATABASE STATE permissions.  
  
## Remarks  
 The primary key for this view is federation_operation_id, which contains a randomly generated value. In combination with [sys.dm_federation_operations &#40;Azure SQL Database&#41;](../a9retired/sys.dm-federation-operations-azure-sql-database.md), this view provides information on the progress of an operation.  
  
 Information is reported as long as an operation is being executed, and is cleaned up immediately after the operation completes.  
  
 This view exists in all databases, but returns no rows in databases that do not contain federations, or do not have any ongoing operations on federations. This view also exists in federation members, but will never return rows as federation members cannot contain federations or execute federation operations.  
  
  