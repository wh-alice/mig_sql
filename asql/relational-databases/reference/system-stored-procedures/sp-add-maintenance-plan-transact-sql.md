---
title: "sp_add_maintenance_plan (Transact-SQL) | Microsoft Docs"
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
  - "sp_add_maintenance_plan"
  - "sp_add_maintenance_plan_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_add_maintenance_plan"
ms.assetid: 01ab1834-6260-47cb-a1b7-20722217b062
caps.latest.revision: 30
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_add_maintenance_plan (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Adds a maintenance plan and returns the plan ID.  
  
> [!NOTE]  
>  This stored procedure is used with database maintenance plans. This feature has been replaced with maintenance plans which do not use this stored procedure. Use this procedure to maintain database maintenance plans on installations that were upgraded from a previous version of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
 [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)]  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_add_maintenance_plan [ @plan_name = ] 'plan_name' ,   
     @plan_id = 'plan_id' OUTPUT  
```  
  
## Arguments  
 [ **@plan_name =**] **'***plan_name***'**  
 Specifies the name of the maintenance plan to be added. *plan_name* is **varchar(128)**.  
  
 **@plan_id = '** *plan_id* **'**  
 Specifies the ID of the maintenance plan. *plan_id* is **uniqueidentifier**.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Remarks  
 **sp_add_maintenance_plan** must be run from the **msdb** database and creates a new, but empty, maintenance plan. To add one or more databases and associate them with a job or jobs, execute **sp_add_maintenance_plan_db** and **sp_add_maintenance_plan_job**.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role can execute **sp_add_maintenance_plan**.  
  
## Examples  
 Create a maintenance plan called Myplan.  
  
```  
DECLARE   @myplan_id UNIQUEIDENTIFIER;  
EXECUTE   sp_add_maintenance_plan N'Myplan',@plan_id=@myplan_id OUTPUT  
PRINT   'The id for the maintenance plan "Myplan" is:'+convert(varchar(256),@myplan_id);  
GO  
```  
  
 Success in creating the maintenance plan will return the plan ID.  
  
```  
'The id for the maintenance plan "Myplan" is:' FAD6F2AB-3571-11D3-9D4A-00C04FB925FC  
```  
  
## See Also  
 [Maintenance Plans](../../../relational-databases/maintenance-plans/maintenance-plans.md)   
 [Database Maintenance Plan Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/database-maintenance-plan-stored-procedures-transact-sql.md)  
  
  