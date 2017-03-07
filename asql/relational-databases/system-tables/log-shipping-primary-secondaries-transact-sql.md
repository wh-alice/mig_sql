---
title: "log_shipping_primary_secondaries (Transact-SQL) | Microsoft Docs"
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
  - "log_shipping_primary_secondaries_TSQL"
  - "log_shipping_primary_secondaries"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "log_shipping_primary_secondaries system table"
ms.assetid: 4b315c70-7265-4acd-b35b-a4dbb7881d98
caps.latest.revision: 18
ms.author: "jhubbard"
manager: "jhubbard"
---
# log_shipping_primary_secondaries (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Maps each primary database to its secondary databases. This table is stored in the **msdb** database.  

  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**primary_id**|**uniqueidentifier**|The ID of the primary database for the log shipping configuration.|  
|**secondary_server**|**sysname**|The name of the secondary instance of the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] in the log shipping configuration.|  
|**secondary_database**|**sysname**|The name of the secondary database in the log shipping configuration.|  
  
## See Also  
 [About Log Shipping &#40;SQL Server&#41;](../../database-engine/log-shipping/about-log-shipping-sql-server.md)   
 [sp_add_log_shipping_primary_secondary &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-add-log-shipping-primary-secondary-transact-sql.md)   
 [sp_delete_log_shipping_primary_secondary &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-delete-log-shipping-primary-secondary-transact-sql.md)   
 [sp_help_log_shipping_primary_secondary &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-help-log-shipping-primary-secondary-transact-sql.md)   
 [System Tables &#40;Transact-SQL&#41;](../../relational-databases/system-tables/system-tables-transact-sql.md)  
  
  