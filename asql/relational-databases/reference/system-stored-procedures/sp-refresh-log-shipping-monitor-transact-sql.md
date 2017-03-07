---
title: "sp_refresh_log_shipping_monitor (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_refresh_log_shipping_monitor"
  - "sp_refresh_log_shipping_monitor_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_refresh_log_shipping_monitor"
ms.assetid: edefb912-31c5-4d99-9aba-06629afd0171
caps.latest.revision: 21
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_refresh_log_shipping_monitor (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  This stored procedure refreshes the remote monitor tables with the latest information from a given primary or secondary server for the specified log shipping agent. The procedure is invoked on the primary or secondary server.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_refresh_log_shipping_monitor  
[ @agent_id = ] 'agent_id',  
[ @agent_type = ] 'agent_type'  
[ @database = ] 'database'  
[ @mode ] n  
```  
  
## Arguments  
 [ **@agent_id=** ] **'***agent_id***'**  
 The primary ID for backup or the secondary ID for copy or restore. *agent_id* is **uniqueidentifier** and cannot be NULL.  
  
 [ **@agent_type=** ] **'***agent_type***'**  
 The type of log shipping job.  
  
 0 = Backup.  
  
 1 = Copy.  
  
 2 = Restore.  
  
 *agent_type* is **tinyint** and cannot be NULL.  
  
 [ **@database=** ] **'***database***'**  
 The primary or secondary database used by logging by backup or restore agents.  
  
 [ **@mode** ] *n*  
 Specifies whether to refresh the monitor data or clean it. The data type of *m* is tinyint, and the supported values are:  
  
 1 = refresh (This is the default value.)  
  
 2 = delete  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 None.  
  
## Remarks  
 **sp_refresh_log_shipping_monitor** refreshes the **log_shipping_monitor_primary**, **log_shipping_monitor_secondary**, **log_shipping_monitor_history_detail**, and **log_shipping_monitor_error_detail** tables with any session information that has not already been transferred. This allows you to synchronize the monitor server with primary or a secondary server when the monitor has been out of sync for awhile. Additionally, it allows you to clean up the monitor information on monitor server if necessary.  
  
 **sp_refresh_log_shipping_monitor** must be run from the **master** database on the primary or secondary server.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role can run this procedure.  
  
## See Also  
 [About Log Shipping &#40;SQL Server&#41;](../../../database-engine/log-shipping/about-log-shipping-sql-server.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  