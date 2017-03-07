---
title: "dbo.systaskids (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-09"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "systaskids_TSQL"
  - "dbo.systaskids"
  - "systaskids"
  - "dbo.systaskids_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "systaskids system table"
ms.assetid: 45c56d89-4160-4d84-80bf-a7a05488792d
caps.latest.revision: 24
ms.author: "jhubbard"
manager: "jhubbard"
---
# dbo.systaskids (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains a mapping of tasks created in earlier versions of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] to [!INCLUDE[ssManStudioFull](../../../a9notintoc/includes/ssmanstudiofull-md.md)] jobs in the current version. This table is stored in the **msdb** database.  
  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**task_id**|**int**|ID of the task|  
|**job_id**|**uniqueidentifier**|ID of the job to which the task is mapped|  
  
  