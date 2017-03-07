---
title: "sys.sp_cdc_enable_db (Transact-SQL) | Microsoft Docs"
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
  - "sp_cdc_enable_db_TSQL"
  - "sp_cdc_enable_db"
  - "sys.sp_cdc_enable_db"
  - "sys.sp_cdc_enable_db_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.sp_cdc_enable_db"
  - "change data capture [SQL Server], enabling databases"
  - "sp_cdc_enable_db"
ms.assetid: 176d83b3-493d-43cd-800e-aa123c3bdf17
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sp_cdc_enable_db (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Enables change data capture for the current database. This procedure must be executed for a database before any tables can be enabled for change data capture in that database. Change data capture records insert, update, and delete activity applied to enabled tables, making the details of the changes available in an easily consumed relational format. Column information that mirrors the column structure of a tracked source table is captured for the modified rows, along with the metadata needed to apply the changes to a target environment.  
  
> [!IMPORTANT]  
>  Change data capture is not available in every edition of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. For a list of features that are supported by the editions of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], see [Features Supported by the Editions of SQL Server 2016](../Topic/Features%20Supported%20by%20the%20Editions%20of%20SQL%20Server%202016.md).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sys.sp_cdc_enable_db  
```  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 None  
  
## Remarks  
 Change data capture cannot be enabled on [system databases](../../relational-databases/databases/system-databases.md) or distribution databases.  
  
 sys.sp_cdc_enable_db creates the change data capture objects that have database wide scope, including meta data tables and DDL triggers. It also creates the cdc schema and cdc database user and sets the is_cdc_enabled column for the database entry in the [sys.databases](../../relational-databases/system-catalog-views/sys.databases-transact-sql.md) catalog view to 1.  
  
## Permissions  
 Requires membership in the sysadmin fixed server role.  
  
## Examples  
 The following example enables change data capture.  
  
```  
USE AdventureWorks2012;  
GO  
EXECUTE sys.sp_cdc_enable_db;  
GO  
```  
  
## See Also  
 [sys.sp_cdc_disable_db &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-disable-db-transact-sql.md)  
  
  