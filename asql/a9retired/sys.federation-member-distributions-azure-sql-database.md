---
title: "sys.federation_member_distributions (Azure SQL Database) | Microsoft Docs"
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
  - "sys.federation_member_distributions"
  - "federation_member_distributions"
  - "sys.federation_member_distributions_TSQL"
  - "federation_member_distributions_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "federation_member_distributions"
  - "sys.federation_member_distributions"
ms.assetid: f024a32f-ef65-439e-a4e6-ab5f1e131637
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# sys.federation_member_distributions (Azure SQL Database)
  Returns distribution information about members within a federation.  
  
> [!IMPORTANT]  
>  The current implementation of Federations will be retired with Web and Business service tiers. Consider deploying custom sharding solutions to maximize scalability, flexibility, and performance. For more information about custom sharding, see [Scaling Out Azure SQL Databases](http://go.microsoft.com/fwlink/?LinkId=397318).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].|  
  
|Columns|Data type|Description|  
|-------------|---------------|-----------------|  
|federation_id|**int**|Reference to federation id.|  
|member_id|**int**|Is the unique id to identify the federation member.|  
|Distribution_name|**sysname**|Reference to the federation_distribution_schemes distribution_name for the federation|  
|Range_low|**sqlvariant**|Low range of the key that the federation member will be servicing. The low range value is inclusive in all cases.|  
|Range_high|**sqlvariant**|High range of the key that the federation member will be servicing. High value range is excluded in the values serviced by the federation member.|  
  
  