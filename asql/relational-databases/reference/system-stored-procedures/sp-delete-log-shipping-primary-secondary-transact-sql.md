---
title: "sp_delete_log_shipping_primary_secondary (Transact-SQL) | Microsoft Docs"
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
  - "sp_delete_log_shipping_primary_secondary_TSQL"
  - "sp_delete_log_shipping_primary_secondary"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_delete_log_shipping_primary_secondary"
ms.assetid: d6f71a12-f7b1-4a1c-9639-a533b8287b0c
caps.latest.revision: 20
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_delete_log_shipping_primary_secondary (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes the entry for a secondary database on the primary server.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_delete_log_shipping_primary_secondary  
    [ @primary_database = ] 'primary_database',   
    [ @secondary_server = ] 'secondary_server',   
    [ @secondary_database = ] 'secondary_database'  
```  
  
## Arguments  
 [ **@primary_database =** ] **'***primary_database***'**  
 Is the name of the database on the primary server. *primary_database* is **sysname**, with no default.  
  
 [ **@secondary_server =** ] **'***secondary_server***'**  
 Is the name of the secondary server. *secondary_server* is **sysname**, with no default.  
  
 [ **@secondary_database =** ] **'***secondary_database***'**  
 Is the name of the secondary database. *secondary_database* is **sysname**, with no default.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 None.  
  
## Remarks  
 **sp_delete_log_shipping_primary_secondary** must be run from the **master** database on the primary server. This stored procedure removes the entry for a secondary database from **log_shipping_primary_secondaries** on the primary server.  
  
## Permissions  
 Requires membership in the **sysadmin** fixed server role.  
  
## Examples  
 In the following example, `sp_delete_log_shipping_primary_secondary` is used to delete the secondary database `LogShipAdventureWorks` from the secondary server `FLATIRON`.  
  
```  
EXEC master.dbo.sp_delete_log_shipping_primary_secondary  
@primary_database = N'AdventureWorks'  
,@secondary_server = N'FLATIRON'  
,@secondary_database = N'LogShipAdventureWorks';  
GO  
```  
  
## See Also  
 [About Log Shipping &#40;SQL Server&#41;](../../../database-engine/log-shipping/about-log-shipping-sql-server.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  