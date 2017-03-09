---
title: "sys.sp_cdc_disable_db (Transact-SQL) | Microsoft Docs"
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
  - "sp_cdc_disable_db"
  - "sys.sp_cdc_disable_db_TSQL"
  - "sp_cdc_disable_db_TSQL"
  - "sys.sp_cdc_disable_db"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_cdc_disable_db"
  - "sys.sp_cdc_disable_db"
  - "change data capture [SQL Server], disabling databases"
ms.assetid: 420fb99e-e60f-445b-b568-da96471f1e8f
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sp_cdc_disable_db (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Disables change data capture for the current database. Change data capture is not available in every edition of [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. For a list of features that are supported by the editions of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], see [Features Supported by the Editions of SQL Server 2016](../Topic/Features%20Supported%20by%20the%20Editions%20of%20SQL%20Server%202016.md).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sys.sp_cdc_disable_db  
```  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Result Sets  
 None  
  
## Remarks  
 **sys.sp_cdc_disable_db** disables change data capture for all tables in the database currently enabled. All system objects related to change data capture, such as change tables, jobs, stored procedures and functions, are dropped. The **is_cdc_enabled** column for the database entry in the [sys.databases](../../../relational-databases/reference/system-catalog-views/sys.databases-transact-sql.md) catalog view is set to 0.  
  
> [!NOTE]  
>  If there are many capture instances defined for the database at the time change data capture is disabled, a long running transaction can cause the execution of sys.sp_cdc_disable_db to fail. This problem can be avoided by disabling the individual capture instances by using sys.sp_cdc_disable_table before running sys.sp_cdc_disable_db.  
  
## Permissions  
 Requires membership in the **sysadmin** fixed server role.  
  
## Examples  
 The following example disables change data capture for the `AdventureWorks2012` database.  
  
```  
USE AdventureWorks2012;  
GO  
EXECUTE sys.sp_cdc_disable_db;  
GO  
```  
  
## See Also  
 [sys.sp_cdc_enable_db &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sys.sp-cdc-enable-db-transact-sql.md)   
 [sys.sp_cdc_disable_table &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sys.sp-cdc-disable-table-transact-sql.md)  
  
  