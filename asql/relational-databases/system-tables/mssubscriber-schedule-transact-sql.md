---
title: "MSsubscriber_schedule (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "MSsubscriber_schedule"
  - "MSsubscriber_schedule_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSsubscriber_schedule system table"
ms.assetid: ff428306-0ef4-49a3-b536-07ccdf6e2196
caps.latest.revision: 34
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSsubscriber_schedule (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSsubscriber_schedule** table contains default merge and transactional synchronization schedules for each Publisher/Subscriber pair. This table is stored in the distribution database.  
  
> [!NOTE]  
>  This system table has been deprecated and is being maintained to support earlier versions of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**publisher**|**sysname**|The name of the Publisher.|  
|**subscriber**|**sysname**|The name of the Subscriber.|  
|**agent_type**|**smallint**|The type of agent:<br /><br /> 0 = Distribution Agent.<br /><br /> 1 = Merge Agent.|  
|**frequency_type**|**int**|The frequency with which to schedule the Distribution Agent:<br /><br /> **1** = One time.<br /><br /> **2** = On demand.<br /><br /> **4** = Daily.<br /><br /> **8** = Weekly.<br /><br /> **16** = Monthly.<br /><br /> **32** = Monthly relative.<br /><br /> **64** = Autostart.<br /><br /> **128** = Recurring.|  
|**frequency_interval**|**int**|The value to apply to the frequency set by **frequency_type**.|  
|**frequency_relative_interval**|**int**|The date of the Distribution Agent:<br /><br /> **1** = First.<br /><br /> **2** = Second.<br /><br /> **4** = Third.<br /><br /> **8** = Fourth.<br /><br /> **16** = Last.|  
|**frequency_recurrence_factor**|**int**|The recurrence factor used by **frequency_type**.|  
|**frequency_subday**|**int**|How often to reschedule during the defined period:<br /><br /> **1** = Once.<br /><br /> **2** = Second.<br /><br /> **4** = Minute.<br /><br /> **8** = Hour.|  
|**frequency_subday_interval**|**int**|The interval for **frequency_subday**.|  
|**active_start_time_of_day**|**int**|The time of day when the Distribution Agent will first be scheduled, formatted as HHMMSS.|  
|**active_end_time_of_day**|**int**|The time of day when the Distribution Agent will stop being scheduled, formatted as HHMMSS.|  
|**active_start_date**|**int**|The date when the Distribution Agent will first be scheduled, formatted as YYYYMMDD.|  
|**active_end_date**|**int**|The date when the Distribution Agent will stop being scheduled, formatted as YYYYMMDD.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../relational-databases/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../relational-databases/system-views/replication-views-transact-sql.md)  
  
  