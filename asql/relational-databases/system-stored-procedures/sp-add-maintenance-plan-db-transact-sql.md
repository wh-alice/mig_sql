---
title: "sp_add_maintenance_plan_db (Transact-SQL) | Microsoft Docs"
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
  - "sp_add_maintenance_plan_db_TSQL"
  - "sp_add_maintenance_plan_db"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_add_maintenance_plan_db"
ms.assetid: 76f4fefa-5b99-4deb-beed-e198987a45a9
caps.latest.revision: 20
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_add_maintenance_plan_db (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Associates a database with a maintenance plan.  
  
> [!NOTE]  
>  This stored procedure is used with database maintenance plans. This feature has been replaced with maintenance plans which do not use this stored procedure. Use this procedure to maintain database maintenance plans on installations that were upgraded from a previous version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 [!INCLUDE[ssNoteDepFutureAvoid](../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)]  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_add_maintenance_plan_db [ @plan_id = ] 'plan_id' ,   
     [ @db_name = ] 'database_name'  
```  
  
## Arguments  
 [ **@plan_id =**] **'***plan_id***'**  
 Specifies the plan ID of the maintenance plan. *plan_id* is **uniqueidentifier**, and must be a valid ID.  
  
 [ **@db_name =**] **'***database_name***'**  
 Specifies the name of the database to be added to the maintenance plan. The database must be created or exist before its addition to the plan. *database_name* is **sysname**.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Remarks  
 **sp_add_maintenance_plan_db** must be run from the **msdb** database.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role can execute **sp_add_maintenance_plan_db**.  
  
## Examples  
 This example adds the **AdventureWorks2012** database to the maintenance plan created in **sp_add_maintenance_plan**.  
  
```  
EXECUTE   sp_add_maintenance_plan_db N'FAD6F2AB-3571-11D3-9D4A-00C04FB925FC',N'AdventureWorks2012';  
```  
  
## See Also  
 [Maintenance Plans](../../relational-databases/maintenance-plans/maintenance-plans.md)   
 [Database Maintenance Plan Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/database-maintenance-plan-stored-procedures-transact-sql.md)  
  
  