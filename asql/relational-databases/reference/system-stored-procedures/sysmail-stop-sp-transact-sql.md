---
title: "sysmail_stop_sp (Transact-SQL) | Microsoft Docs"
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
  - "sysmail_stop_sp_TSQL"
  - "sysmail_stop_sp"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysmail_stop_sp"
ms.assetid: 045ee36f-5bf0-4626-b5ee-e84db06ce16f
caps.latest.revision: 28
ms.author: "jhubbard"
manager: "jhubbard"
---
# sysmail_stop_sp (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Stops Database Mail by stopping the [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] objects that the external program uses.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sysmail_stop_sp  
```  
  
## Arguments  
 None  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 This stored procedure is in the **msdb** database.  
  
 This stored procedure stops the Database Mail queue that holds outgoing message requests and turns off [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] activation for the external program.  
  
 When the queues are stopped, the Database Mail external program does not process messages. This stored procedure allows you to stop Database Mail for troubleshooting or maintenance purposes.  
  
 To start Database Mail, use **sysmail_start_sp**. Notice that **sp_send_dbmail** still accepts mail when the [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] objects are stopped.  
  
> [!NOTE]  
>  This stored procedure only stops the queues for Database Mail. This stored procedure does not deactivate [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] message delivery in the database. This stored procedure does not disable the Database Mail extended stored procedures to reduce the surface area. To disable the extended stored procedures, see the [Database Mail XPs option](../../../database-engine/configure/windows/database-mail-xps-server-configuration-option.md) of the **sp_configure** system stored procedure.  
  
## Permissions  
 Execute permissions for this procedure default to members of the **sysadmin** fixed server role.  
  
## Examples  
 The following example shows stopping Database Mail in the **msdb** database. The example assumes that Database Mail has been enabled.  
  
```  
USE msdb ;  
GO  
  
EXECUTE dbo.sysmail_stop_sp ;  
GO  
```  
  
## See Also  
 [Database Mail](../../../relational-databases/database-mail/database-mail.md)   
 [sysmail_start_sp &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sysmail-start-sp-transact-sql.md)   
 [Database Mail Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/database-mail-stored-procedures-transact-sql.md)  
  
  