---
title: "sys.federations (Azure SQL Database) | Microsoft Docs"
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
  - "federations"
  - "sys.federations"
  - "federations_TSQL"
  - "sys.federations_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.federations"
  - "federations"
ms.assetid: ee4cf630-5a31-47e3-a3f8-4b47238697c3
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# sys.federations (Azure SQL Database)
  Returns the federations within a database.  
  
> [!IMPORTANT]  
>  The current implementation of Federations will be retired with Web and Business service tiers. Consider deploying custom sharding solutions to maximize scalability, flexibility, and performance. For more information about custom sharding, see [Scaling Out Azure SQL Databases](http://go.microsoft.com/fwlink/?LinkId=397318).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].|  
  
|Columns|Data type|Description|  
|-------------|---------------|-----------------|  
|federation_id|**int**|Unique identifier for the federation within the root database.|  
|name|**sysname**|Name of the federation.|  
  
## Remarks  
 **federation_id** is unique within a root database.  
  
 **member_id** is unique within a federation.  
  
  