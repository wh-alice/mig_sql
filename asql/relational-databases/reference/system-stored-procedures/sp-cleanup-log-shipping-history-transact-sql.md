---
title: "sp_cleanup_log_shipping_history (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-09"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_cleanup_log_shipping_history_TSQL"
  - "sp_cleanup_log_shipping_history"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_cleanup_log_shipping_history"
ms.assetid: 96d236a9-1d0e-4f83-a4d3-f825b7381e46
caps.latest.revision: 20
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_cleanup_log_shipping_history (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  This stored procedure cleans up history locally and on the monitor server based on retention period.  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_cleanup_log_shipping_history  
[ @agent_id = ] 'agent_id',  
[ @agent_type = ] 'agent_type'  
```  
  
## Arguments  
 [ **@agent_id =** ] '*agent_id*',  
 The primary ID for backup or the secondary ID for copy or restore. *agent_id* is **uniqueidentifier** and cannot be NULL.  
  
 [ **@agent_type =** ] '*agent_type*'  
 The type of log shipping job. 0 = Backup, 1 = Copy, 2 = Restore. *agent_type* is **tinyint** and cannot be NULL.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 None.  
  
## Remarks  
 **sp_cleanup_log_shipping_history** must be run from the **master** database on any log shipping server. This stored procedure cleans up local and remote copies of **log_shipping_monitor_history_detail** and **log_shipping_monitor_error_detail** based on history retention period.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role can run this procedure.  
  
## See Also  
 [About Log Shipping &#40;SQL Server&#41;](../../../database-engine/log-shipping/about-log-shipping-sql-server.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  