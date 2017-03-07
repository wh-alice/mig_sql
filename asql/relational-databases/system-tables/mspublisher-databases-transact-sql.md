---
title: "MSpublisher_databases (Transact-SQL) | Microsoft Docs"
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
  - "MSpublisher_databases"
  - "MSpublisher_databases_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSpublisher_databases system table"
ms.assetid: 59b0166e-a64c-46b8-befc-c222fa1ccce2
caps.latest.revision: 22
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSpublisher_databases (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSpublisher_databases** table contains one row for each Publisher/Publisher database pair serviced by the local Distributor. This table is stored in the distribution database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**publisher_id**|**smallint**|The ID of the Publisher.|  
|**publisher_db**|**sysname**|The name of the Publisher database.|  
|**id**|**int**|The ID of the row.|  
|**publisher_engine_edition**|**int**|The edition of the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Publisher, which can be one of the following:<br /><br /> **10** = Personal Edition<br /><br /> **11** = Desktop Engine (MSDE)<br /><br /> **20** = Standard<br /><br /> **21** = Workgroup<br /><br /> **30** = Enterprise (Evaluation)<br /><br /> **31** = Developer<br /><br /> **40** = Express (Express cannot be a publisher. This value is present for completeness.)|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../relational-databases/system-tables/replication-tables-transact-sql.md)  
  
  