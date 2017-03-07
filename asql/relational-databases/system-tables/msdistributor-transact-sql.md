---
title: "MSdistributor (Transact-SQL) | Microsoft Docs"
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
  - "MSdistributor"
  - "MSdistributor_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSdistributor system table"
ms.assetid: 981e9903-0b4b-4508-ac6d-2ee4c813a3d0
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSdistributor (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSdistributor** table contains the Distributor properties. This table is stored in the **msdb** database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**property**|**sysname**|The name of the property|  
|**value**|**nvarchar(3000)**|The value of the property|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../relational-databases/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../relational-databases/system-views/replication-views-transact-sql.md)  
  
  