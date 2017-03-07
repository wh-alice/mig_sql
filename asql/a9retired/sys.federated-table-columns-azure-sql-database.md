---
title: "sys.federated_table_columns (Azure SQL Database) | Microsoft Docs"
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
  - "sys.federated_table_columns"
  - "federated_table_columns_TSQL"
  - "sys.federated_table_columns_TSQL"
  - "federated_table_columns"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.federated_table_columns"
  - "federated_table_columns"
ms.assetid: 2ab920f2-4b29-449a-b446-68bc4d68587a
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# sys.federated_table_columns (Azure SQL Database)
  Returns specialized federation properties of federated tables.  
  
> [!IMPORTANT]  
>  The current implementation of Federations will be retired with Web and Business service tiers. Consider deploying custom sharding solutions to maximize scalability, flexibility, and performance. For more information about custom sharding, see [Scaling Out Azure SQL Databases](http://go.microsoft.com/fwlink/?LinkId=397318).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|object_id|**int**|Object ID for the table.|  
|column_id|**int**|Column ID for the column in the table.|  
|distribution_name|**sysname**|Distribution name mapping for the federated table column.|  
  
## Remarks  
 All general table metadata for federated tables is stored the same as non-federated table metadata in well-known system metadata tables such as sys.objects  
  
  