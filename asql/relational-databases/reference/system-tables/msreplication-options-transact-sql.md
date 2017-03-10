---
title: "MSreplication_options (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
f1_keywords: 
  - "MSreplication_options"
  - "MSreplication_options_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSreplication_options system table"
ms.assetid: 23cf10d7-8bc1-4368-b5eb-e5576421e776
caps.latest.revision: 14
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSreplication_options (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSreplication_options** table stores metadata that is used internally by replication. This table is stored in the **master** database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**optname**|**sysname**|Internal use only.|  
|**value**|**bit**|Internal use only.|  
|**major_version**|**int**|Internal use only.|  
|**minor_version**|**int**|Internal use only.|  
|**revision**|**int**|Internal use only.|  
|**install_failures**|**int**|Internal use only.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)  
  
  