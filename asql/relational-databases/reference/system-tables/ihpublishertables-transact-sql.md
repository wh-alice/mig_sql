---
title: "IHpublishertables (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
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
  - "IHpublishertables"
  - "IHpublishertables_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "IHpublishertables system table"
ms.assetid: 7d16ac39-633a-4fe2-8f22-1d9afc191ee9
caps.latest.revision: 24
ms.author: "rickbyh"
manager: "jhubbard"
---
# IHpublishertables (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **IHpublishertables** system table represents metadata stored at the publisher. This table contains one row for each source table published from a non-SQL Server Publisher using the current Distributor. This table is stored in the distribution database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**table_id**|**int**|Identifies a published table.|  
|**publisher_id**|**smallint**|Identifies the non-SQL Server Publisher from which the table is being published.|  
|**name**|**sysname**|The name of the published table.|  
|**owner**|**sysname**|The table owner.|  
  
## See Also  
 [Heterogeneous Database Replication](../../../relational-databases/replication/non-sql/heterogeneous-database-replication.md)   
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/replication-views-transact-sql.md)  
  
  