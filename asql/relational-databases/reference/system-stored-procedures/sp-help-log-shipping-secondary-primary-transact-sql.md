---
title: "sp_help_log_shipping_secondary_primary (Transact-SQL) | Microsoft Docs"
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
  - "sp_help_log_shipping_secondary_primary"
  - "sp_help_log_shipping_secondary_primary_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_help_log_shipping_secondary_primary"
ms.assetid: 1310fdaf-edb5-4294-9739-7fb37c2c2cb5
caps.latest.revision: 19
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_help_log_shipping_secondary_primary (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  This stored procedure retrieves the settings for a given primary database on the secondary server.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_help_log_shipping_secondary_primary  
[ @primary_server = ] 'primary_server' OR  
[ @primary_database = ] 'primary_database'  
```  
  
## Arguments  
 [ **@primary_server** = ] '*primary_server*'  
 The name of the primary instance of the [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssDEnoversion](../../../a9notintoc/includes/ssdenoversion-md.md)] in the log shipping configuration. *primary_server* is **sysname** and cannot be NULL.  
  
 [ **@primary_database** = ] '*primary_database*'  
 Is the name of the database on the primary server. *primary_database* is **sysname**, with no default.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 The result set contains the columns **secondary_id**, **primary_server**, **primary_database**, **backup_source_directory**, **backup_destination_directory**, **file_retention_period**, **copy_job_id**, **restore_job_id**, **monitor_server**, **monitor_server_security_mode** from **log_shipping_secondary**.  
  
## Remarks  
 **sp_help_log_shipping_secondary_primary** must be run from the **master** database on the secondary server.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role can run this procedure.  
  
## See Also  
 [About Log Shipping &#40;SQL Server&#41;](../../../database-engine/log-shipping/about-log-shipping-sql-server.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  