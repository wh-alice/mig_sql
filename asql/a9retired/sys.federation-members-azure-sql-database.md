---
title: "sys.federation_members (Azure SQL Database) | Microsoft Docs"
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
  - "federation_members_TSQL"
  - "federation_members"
  - "sys.federation_members_TSQL"
  - "sys.federation_members"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "federation_members"
  - "sys.federation_members"
ms.assetid: d55cb23d-1aeb-413e-b0f6-1d32aa6bf0a8
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# sys.federation_members (Azure SQL Database)
  Returns information on member to federation associations.  
  
> [!IMPORTANT]  
>  The current implementation of Federations will be retired with Web and Business service tiers. Consider deploying custom sharding solutions to maximize scalability, flexibility, and performance. For more information about custom sharding, see [Scaling Out Azure SQL Databases](http://go.microsoft.com/fwlink/?LinkId=397318).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].|  
  
|Columns|Data type|Description|  
|-------------|---------------|-----------------|  
|federation_id|**int**|Reference to federation id.|  
|member_id|**int**|The unique id of the federation member|  
  
  