---
title: "MSmerge_errorlineage (Transact-SQL) | Microsoft Docs"
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
  - "MSmerge_errorlineage_TSQL"
  - "MSmerge_errorlineage"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSmerge_errorlineage system table"
ms.assetid: 3bcbd328-c958-4cd4-a573-3c35539fa919
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSmerge_errorlineage (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSmerge_errorlineage** table contains rows that have been deleted at the Subscriber, but whose delete is not propagated to the Publisher. This table is stored in the publication and subscription databases.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**tablenick**|**int**|The integer value assigned to the table that is published for merge replication. Corresponds to the nickname field in the **sysmergearticles** table.|  
|**rowguid**|**uniqueidentifier**|The row identifier.|  
|**lineage**|**varbinary(501)**|Stores a history list of which Subscribers and Publishers have made updates to a row. It is used to detect and resolve conflict situations.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/replication-views-transact-sql.md)  
  
  