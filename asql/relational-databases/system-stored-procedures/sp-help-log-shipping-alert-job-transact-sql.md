---
title: "sp_help_log_shipping_alert_job (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_help_log_shipping_alert_job_TSQL"
  - "sp_help_log_shipping_alert_job"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_help_log_shipping_alert_job"
ms.assetid: 4d4b4577-c393-4961-b2d3-b56e980b787b
caps.latest.revision: 20
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_help_log_shipping_alert_job (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  This stored procedure returns the job ID of the alert job from the log shipping monitor.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_help_log_shipping_alert_job  
  
```  
  
## Arguments  
 None  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 This stored procedure returns the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent job ID of the log shipping alert job. If no log shipping alert job exists, it returns an empty result set.  
  
## Remarks  
 **sp_help_log_shipping_alert_job** must be run from the **master** database on the monitor server.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role can run this procedure.  
  
## See Also  
 [About Log Shipping &#40;SQL Server&#41;](../../database-engine/log-shipping/about-log-shipping-sql-server.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  