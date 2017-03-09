---
title: "MSpublicationthresholds (Transact-SQL) | Microsoft Docs"
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
  - "mspublicationthresholds"
  - "mspublicationthresholds_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSpublicationthresholds system table"
ms.assetid: 9da3879f-b1f4-4ab4-abd4-a9a8ac395eba
caps.latest.revision: 22
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSpublicationthresholds (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSpublicationthresholds** table is used to track replication performance metrics for a publication, with one row for each threshold value being monitored. This table is stored in the distribution database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**publication_id**|**int**|Identifies the publication for which a threshold has been set.|  
|**metric_id**|**int**|Identifies a replication performance metric being monitored as defined in the [MSreplmonthresholdmetrics](../../../relational-databases/reference/system-tables/msreplmonthresholdmetrics-transact-sql.md) system table.|  
|**value**|**sql_variant**|The threshold value of the metric being monitored.|  
|**shouldalert**|**bit**|A value of **1** indicates that an alert should be generated when the metric exceeds the defined threshold.|  
|**isenabled**|**bit**|A value of **1** indicates that monitoring is enabled for this replication performance metric.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/replication-views-transact-sql.md)  
  
  