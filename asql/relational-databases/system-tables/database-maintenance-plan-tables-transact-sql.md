---
title: "Database Maintenance Plan Tables (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "database maintenance plans [SQL Server]"
  - "maintenance plans [SQL Server], system tables"
  - "system tables [SQL Server], database maintenance plans"
ms.assetid: f264554c-5514-4df2-aadb-6dcdc2dfcfea
caps.latest.revision: 15
ms.author: "jhubbard"
manager: "jhubbard"
---
# Database Maintenance Plan Tables (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  The topics in this section describe the system tables that store information used by database maintenance plans. These tables preserve information for instances that are upgraded from an earlier version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
> [!NOTE]  
>  [!INCLUDE[ssNoteDepNextAvoid](../../analysis-services/multidimensional-models-olap-logical-dimension-objects/includes/ssnotedepnextavoid-md.md)]  
  
## In This Section  
 [sysdbmaintplan_databases](../../relational-databases/system-tables/sysdbmaintplan-databases-transact-sql.md)  
 Contains one row for each database that has an associated upgraded database maintenance plan.  
  
 [sysdbmaintplan_history](../../relational-databases/system-tables/sysdbmaintplan-history-transact-sql.md)  
 Contains one row for each upgraded database maintenance plan action performed.  
  
 [sysdbmaintplan_jobs](../../relational-databases/system-tables/sysdbmaintplan-jobs-transact-sql.md)  
 Contains one row for each upgraded database maintenance plan job.  
  
 [sysdbmaintplans](../../relational-databases/system-tables/sysdbmaintplans-transact-sql.md)  
 Contains one row for each upgraded database maintenance plan.  
  
## See Also  
 [Maintenance Plans](../../relational-databases/maintenance-plans/maintenance-plans.md)  
  
  