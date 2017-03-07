---
title: "sys.federation_history (Azure SQL Database) | Microsoft Docs"
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
  - "federation_history"
  - "sys.federation_history_TSQL"
  - "sys.federation_history"
  - "federation_history_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "federation_history"
  - "sys.federation_history"
ms.assetid: a08d27c1-9e8c-4dac-aca7-6152b4730e86
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# sys.federation_history (Azure SQL Database)
  Contains historical information about a federation.  
  
> [!IMPORTANT]  
>  The current implementation of Federations will be retired with Web and Business service tiers. Consider deploying custom sharding solutions to maximize scalability, flexibility, and performance. For more information about custom sharding, see [Scaling Out Azure SQL Databases](http://go.microsoft.com/fwlink/?LinkId=397318).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].|  
  
|Columns|Data type|Description|  
|-------------|---------------|-----------------|  
|federation_id|**int**|The federation id|  
|name|**sysname**|Name of the federation|  
|drop_date|**datetimeoffset**|Datetime the federation was dropped|  
|create_date|**datetimeoffset**|Datetime the federation was created|  
  
## Permissions  
 This view requires VIEW DATABASE STATE permission.  
  
## Remarks  
 Cleanup of historical data is performed automatically every two weeks. Cleanup is triggered by operations that update the log information. This can result in historical information being retained for longer than two weeks if no new operations have been performed.  
  
 The drop_date and create_date columns are populated on the completion of an operation. For asynchronous operations these fields are populated when the operation completes fully, not when the command returns.  
  
  