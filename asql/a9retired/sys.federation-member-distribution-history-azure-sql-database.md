---
title: "sys.federation_member_distribution_history (Azure SQL Database) | Microsoft Docs"
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
  - "Azure SQL Database"
f1_keywords: 
  - "sys.federation_member_distribution_history_TSQL"
  - "sys.federation_member_distribution_history"
  - "federation_member_distribution_history"
  - "federation_member_distribution_history_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "federation_member_distribution_history"
  - "sys.federation_member_distribution_history"
ms.assetid: 64d05bb6-02ea-444c-91ca-aff15ba32e3a
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# sys.federation_member_distribution_history (Azure SQL Database)
  Returns historical information about the distribution range for federation members.  
  
> [!IMPORTANT]  
>  The current implementation of Federations will be retired with Web and Business service tiers. Consider deploying custom sharding solutions to maximize scalability, flexibility, and performance. For more information about custom sharding, see [Scaling Out Azure SQL Databases](http://go.microsoft.com/fwlink/?LinkId=397318).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].|  
  
|Columns|Data type|Description|  
|-------------|---------------|-----------------|  
|federation_id|**int**|Reference to federation id.|  
|member_id|**int**|Is the unique id to identify the federation member.|  
|distribution_name|**sysname**|Reference to the federation_distribution_schemes distribution_name for the federation|  
|range_low|**sqlvariant**|Low range of the key that the federation member will be servicing. The low range value is inclusive in all cases.|  
|range_high|**sqlvariant**|High range of the key that the federation member will be servicing. High value range is excluded in the values serviced by the federation member.|  
|drop_date|**datetimeoffset**|Datetime the federation was dropped.|  
|create_date|**datetimeoffset**|Datetime the federation was created.|  
  
## Permissions  
 This view requires VIEW DATABASE STATE permission.  
  
## Remarks  
 Cleanup of historical data is performed automatically every two weeks. Cleanup is triggered by operations that update the log information. This can result in historical information being retained for longer than two weeks if no new operations have been performed.  
  
 The drop_date and create_date columns are populated on the completion of an operation. For asynchronous operations these fields are populated when the operation completes fully, not when the command returns.  
  
 The value for federation_id is not reused within a single root database, and the value of member_id is not reused within a federation.  
  
  