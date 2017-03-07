---
title: "dbo.syssessions (Transact-SQL) | Microsoft Docs"
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
  - "dbo.syssessions_TSQL"
  - "dbo.syssessions"
  - "syssessions_TSQL"
  - "syssessions"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "syssessions system table"
ms.assetid: 187819b6-c7f4-4a26-b74c-0a89e96695cf
caps.latest.revision: 14
ms.author: "jhubbard"
manager: "jhubbard"
---
# dbo.syssessions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Each time [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent starts, it creates a new session. [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent uses sessions to preserve the status of jobs when the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent service is restarted or stopped unexpectedly. Each row of the **syssessions** table contains information about one session. Use the **sysjobactivity** table to view the job state at the end of each session.  
  
 This table is stored in the **msdb** database.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**session_id**|**int**|ID of a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent session.|  
|**agent_start_date**|**datetime**|Date and time that the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent service was started for this session.|  
  
## Remarks  
 Only users who are members of the **sysadmin** fixed server role can access this table.  
  
## See Also  
 [dbo.sysjobactivity &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/dbo.sysjobactivity-transact-sql.md)  
  
  