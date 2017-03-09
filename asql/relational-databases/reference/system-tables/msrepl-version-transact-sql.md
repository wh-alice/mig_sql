---
title: "MSrepl_version (Transact-SQL) | Microsoft Docs"
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
  - "MSrepl_version"
  - "MSrepl_version_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSrepl_version system table"
ms.assetid: c1330f03-940b-4564-ac42-6030c6e21173
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSrepl_version (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSrepl_version** table contains one row with the current version of replication installed. This table is stored in the distribution database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**major_version**|**int**|The major version number of the distribution database.|  
|**minor_version**|**int**|The minor version number of the distribution database.|  
|**revision**|**int**|The revision number.|  
|**db_existed**|**bit**|Indicates whether the distribution database exists before **sp_adddistributiondb** is called.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/replication-views-transact-sql.md)  
  
  