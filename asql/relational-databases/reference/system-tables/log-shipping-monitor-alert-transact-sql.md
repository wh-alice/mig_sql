---
title: "log_shipping_monitor_alert (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "log_shipping_monitor_alert"
  - "log_shipping_monitor_alert_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "log_shipping_monitor_alert system table"
ms.assetid: 1c775e48-9898-4149-b9d1-04d465f23438
caps.latest.revision: 20
ms.author: "jhubbard"
manager: "jhubbard"
---
# log_shipping_monitor_alert (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Stores the alert job ID for log shipping. This table is stored in the **msdb** database.   
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**alert_job_id**|**uniqueidentifier**|The [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent job ID of the log shipping alert job.|  
  
## See Also  
 [About Log Shipping &#40;SQL Server&#41;](../../../database-engine/log-shipping/about-log-shipping-sql-server.md)   
 [sp_add_log_shipping_alert_job &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-add-log-shipping-alert-job-transact-sql.md)   
 [sp_delete_log_shipping_alert_job &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-delete-log-shipping-alert-job-transact-sql.md)   
 [sp_help_log_shipping_alert_job &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-help-log-shipping-alert-job-transact-sql.md)   
 [System Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/system-tables-transact-sql.md)  
  
  