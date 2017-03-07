---
title: "sys.dm_federation_operation_error_members (Azure SQL Database) | Microsoft Docs"
ms.custom: 
  - "MSDN content"
  - "MSDN - SQL DB"
ms.date: "02/23/2017"
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
  - "sys.dm_federation_operation_error_members"
  - "dm_federation_operation_error_members"
  - "dm_federation_operation_error_members_TSQL"
  - "sys.dm_federation_operation_error_members_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_federation_operation_error_members"
  - "dm_federation_operation_error_members"
ms.assetid: 92abcd2c-08ee-4cb2-9d5b-f9ba577fe63f
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# sys.dm_federation_operation_error_members (Azure SQL Database)
  Returns the list of members involved in federation operations that failed due to errors in [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].  
  
> [!IMPORTANT]  
>  The current implementation of Federations will be retired with Web and Business service tiers. Consider deploying custom sharding solutions to maximize scalability, flexibility, and performance. For more information about custom sharding, see [Scaling Out Azure SQL Databases](http://go.microsoft.com/fwlink/?LinkId=397318).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].|  
  
|Columns|Data Type|Description|  
|-------------|---------------|-----------------|  
|federation_operation_id|**uniqueidentifier**|Operation ID that failed.|  
|member_id|**int**|The ID of the source or the destination member in the sys.federation_members view.|  
|member_type|**nvarchar(60)**|'Source' or ‘Destination’|  
  
## Permissions  
 You must be connected to the database used to start the federation operation, and you must have VIEW DATABASE STATE permissions.  
  
  