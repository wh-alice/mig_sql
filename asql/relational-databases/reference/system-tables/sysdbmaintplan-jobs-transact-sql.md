---
title: "sysdbmaintplan_jobs (Transact-SQL) | Microsoft Docs"
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
  - "sysdbmaintplan_jobs"
  - "sysdbmaintplan_jobs_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysdbmaintplan_jobs system table"
ms.assetid: bc65cd70-6ef2-4c17-be11-877ecf4efe50
caps.latest.revision: 28
ms.author: "jhubbard"
manager: "jhubbard"
---
# sysdbmaintplan_jobs (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  This table is included in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to preserve existing information for instances upgraded from a previous version of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] does not change the contents of this table. This table is stored in the **msdb** database.  
  
 [!INCLUDE[ssNoteDepNextAvoid](../../../analysis-services/multidimensional-models-olap-logical-dimension-objects/includes/ssnotedepnextavoid-md.md)]  
  

  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**plan_id**|**uniqueidentifier**|Database maintenance plan ID.|  
|**job_id**|**uniqueidentifier**|ID of a job associated with the database maintenance plan.|  
  
  