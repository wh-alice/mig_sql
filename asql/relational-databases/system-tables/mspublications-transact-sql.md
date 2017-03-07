---
title: "MSpublications (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
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
  - "MSpublications"
  - "MSpublications_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSpublications system table"
ms.assetid: 7a0b3457-7265-4f24-a255-7f055d908f20
caps.latest.revision: 24
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSpublications (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSpublications** table contains one row for each publication that is replicated by a Publisher. This table is stored in the distribution database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**publisher_id**|**smallint**|The ID of the Publisher.|  
|**publisher_db**|**sysname**|The name of the Publisher database.|  
|**publication**|**sysname**|The name of the publication.|  
|**publication_id**|**int**|The ID of the publication.|  
|**publication_type**|**int**|The type of publication:<br /><br /> **0** = Transactional.<br /><br /> **1** = Snapshot.<br /><br /> **2** = Merge.|  
|**thirdparty_flag**|**bit**|Indicates whether a publication is a [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database:<br /><br /> **0** = [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].<br /><br /> **1** = Data source other than [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].|  
|**independent_agent**|**bit**|Indicates whether there is a stand-alone Distribution Agent for this publication.|  
|**immediate_sync**|**bit**|Indicates whether synchronization files are created or re-created each time the Snapshot Agent runs.|  
|**allow_push**|**bit**|Indicates whether push subscriptions can be created for the given publication.|  
|**allow_pull**|**bit**|Indicates whether pull subscriptions can be created for the given publication.|  
|**allow_anonymous**|**bit**|Indicates whether anonymous subscriptions can be created for the given publication.|  
|**description**|**nvarchar(255)**|The description of the publication.|  
|**vendor_name**|**nvarchar(100)**|The name of the vendor if Publisher is not a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database.|  
|**retention**|**int**|The retention period of the publication, in hours.|  
|**sync_method**|**int**|The synchronization method:<br /><br /> **0** = Native (produces native-mode bulk copy output of all tables).<br /><br /> **1** = Character (produces a character-mode bulk copy output of all tables).<br /><br /> **3** = Concurrent (produces native-mode bulk copy output of all tables but does not lock the table during the snapshot).<br /><br /> **4** = Concurrent_c (produces a character-mode bulk copy output of all tables but does not lock the table during the snapshot)<br /><br /> The values **3** and **4** are available for transactional replication and merge replication, but not for snapshot replication.|  
|**allow_subscription_copy**|**bit**|Enables or disables the ability to copy the subscription databases that subscribe to this publication. **0** means that copying is disabled, and **1** means it is enabled.|  
|**thirdparty_options**|**int**|Specifies whether the display of a publication in the Replication folder in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] is suppressed:<br /><br /> **0** = Display a heterogeneous publication in the Replication folder in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].<br /><br /> **1** = Suppress the display a heterogeneous publication in the Replication folder in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].|  
|**allow_queued_tran**|**bit**|Specifies whether publication allows queued updating:<br /><br /> **0 =** Publication is non-queued.<br /><br /> **1** = Publication is queued.|  
|**options**|**int**|No information is available for this release.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../relational-databases/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../relational-databases/system-views/replication-views-transact-sql.md)  
  
  