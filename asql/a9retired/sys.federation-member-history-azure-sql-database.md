---
title: "sys.federation_member_history (Azure SQL Database) | Microsoft Docs"
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
  - "sys.federation_member_history"
  - "sys.federation_member_history_TSQL"
  - "federation_member_history_TSQL"
  - "federation_member_history"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "federation_member_history"
  - "sys.federation_member_history"
ms.assetid: cc3eb3a2-1015-4d8a-ac44-dbc7c07754d6
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# sys.federation_member_history (Azure SQL Database)
  Returns historical information for each member of a federation.  
  
> [!IMPORTANT]  
>  The current implementation of Federations will be retired with Web and Business service tiers. Consider deploying custom sharding solutions to maximize scalability, flexibility, and performance. For more information about custom sharding, see [Scaling Out Azure SQL Databases](http://go.microsoft.com/fwlink/?LinkId=397318).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].|  
  
|Columns|Data type|Description|  
|-------------|---------------|-----------------|  
|federation_id|**int**|Reference to federation id.|  
|member_id|**int**|The unique id of the federation member|  
|drop_date|**datetimeoffset**|Datetime the federation member was dropped.|  
|create_date|**datetimeoffset**|Datetime the federation member was created.|  
  
## Permissions  
 This view requires VIEW DATABASE STATE permission.  
  
## Remarks  
 Cleanup of historical data is performed automatically every two weeks. Cleanup is triggered by operations that update the log information. This can result in historical information being retained for longer than two weeks if no new operations have been performed.  
  
 The drop_date and create_date columns are populated on the completion of an operation. For asynchronous operations these fields are populated when the operation completes fully, not when the command returns.  
  
 The value for federation_id is not reused within a single root database, and the value of member_id is not reused within a federation.  
  
  