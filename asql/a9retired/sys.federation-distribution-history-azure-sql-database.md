---
title: "sys.federation_distribution_history (Azure SQL Database) | Microsoft Docs"
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
  - "Azure SQL Database"
f1_keywords: 
  - "federation_distribution_history_TSQL"
  - "sys.federation_distribution_history_TSQL"
  - "sys.federation_distribution_history"
  - "federation_distribution_history"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "federation_distribution_history"
  - "sys.federation_distribution_history"
ms.assetid: e40a1332-3f8c-4241-a54a-ef4c7aef29f0
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# sys.federation_distribution_history (Azure SQL Database)
  Returns historical information about the distribution type and data types used by a federation.  
  
> [!IMPORTANT]  
>  The current implementation of Federations will be retired with Web and Business service tiers. Consider deploying custom sharding solutions to maximize scalability, flexibility, and performance. For more information about custom sharding, see [Scaling Out Azure SQL Databases](http://go.microsoft.com/fwlink/?LinkId=397318).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].|  
  
|Columns|Data type|Description|  
|-------------|---------------|-----------------|  
|federation_id|**int**|Unique identifier for the federation|  
|distribution_name|**sysname**|Name identifier for the federation key|  
|distribution_type|**nvarchar(60)**|RANGE|  
|system_type_id|**tinyint**|The system data type id for federation data types.|  
|max_length|**smallint**|Maximum length (in bytes) of the column.<br /><br /> -1 = Column data type is varchar(max), nvarchar(max), varbinary(max), or xml.<br /><br /> For text columns, the max_length value will be 16 or the value set by sp_tableoption ‘text in row’.|  
|precision|**tinyint**|Precision o fthe column if numeric-based; otherwise, 0.|  
|scale|**tinyint**|Scale of the column if numeric-based; otherwise, 0.|  
|collation_name|**sysname**|Name o fthe collation of the column if character-based; otherwise, NULL.|  
|user_type_id|**int**|ID of the type. For system data types, user_type_id = system_type_id.|  
|boundary_value_in_high|**bit**|For range partitioning. Will always contain a value of 1.|  
|drop_date|**datetimeoffset**|Datetime the federation was dropped|  
|create_date|**datetimeoffset**|Datetime the federation was created|  
  
## Permissions  
 This view requires VIEW DATABASE STATE permission.  
  
## Remarks  
 Cleanup of historical data is performed automatically every two weeks. Cleanup is triggered by operations that update the log information. This can result in historical information being retained for longer than two weeks if no new operations have been performed.  
  
 The drop_date and create_date columns are populated on the completion of an operation. For asynchronous operations these fields are populated when the operation completes fully, not when the command returns.  
  
 The value for federation_id is not reused within a single root database.  
  
  