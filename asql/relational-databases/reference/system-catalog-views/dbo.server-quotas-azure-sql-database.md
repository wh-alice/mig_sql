---
title: "dbo.server_quotas (Azure SQL Database) | Microsoft Docs"
ms.custom: 
  - "MSDN content"
  - "MSDN - SQL DB"
ms.date: "2016-08-02"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.service: "sql-database"
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "dbo.server_quotas"
  - "dbo.server_quotas_TSQL"
  - "server_quotas"
  - "server_quotas_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "server_quotas"
ms.assetid: 34423903-1aaa-4a55-88a6-8228315d84e7
caps.latest.revision: 13
ms.author: "jhubbard"
manager: "jhubbard"
---
# dbo.server_quotas (Azure SQL Database)
[!INCLUDE[tsql-appliesto-xxxxxx-asdb-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-xxxxxx-asdb-xxxx-xxx-md.md)]

    
> **IMPORTANT!!** This applies to **[!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)]V11 only!**  
>   
>  This feature is in a preview state. Do not take a dependency on the specific implementation of this feature because the feature might be changed or removed in a future release.  
  
 Returns the database quota types available on the server.  
  
|Column name|Data Type|Description|  
|-----------------|---------------|-----------------|  
|quota_name|**nvarchar**|The type of quota for the server. The type **Premium_database** is equivalent to databases with a resource reservation.|  
|quota_value|**int**|The number of quota type allowed in the server.|  
  
## Permissions  
 This view is available to all user roles with permissions to connect to the virtual **master** database.  
  
## See Also  
 [Managing Premium Databases](http://go.microsoft.com/fwlink/?LinkID=311927)  
  
  