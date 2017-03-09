---
title: "sp_cycle_errorlog (Transact-SQL) | Microsoft Docs"
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
  - "sp_cycle_errorlog_TSQL"
  - "sp_cycle_errorlog"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_cycle_errorlog"
ms.assetid: 61a12cbf-78a3-4052-8604-3b29d07573fd
caps.latest.revision: 31
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_cycle_errorlog (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Closes the current error log file and cycles the error log extension numbers just like a server restart. The new error log contains version and copyright information and a line indicating that the new log has been created.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_cycle_errorlog  
```  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Result Sets  
 None  
  
## Remarks  
 Every time [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is started, the current error log is renamed to **errorlog.1**; **errorlog.1** becomes **errorlog.2**, **errorlog.2** becomes **errorlog.3**, and so on. **sp_cycle_errorlog** enables you to cycle the error log files without stopping and starting the server.  
  
## Permissions  
 Execute permissions for **sp_cycle_errorlog** are restricted to members of the **sysadmin** fixed server role.  
  
## Examples  
 The following example cycles the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] error log.  
  
```  
EXEC sp_cycle_errorlog ;  
GO  
```  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [sp_cycle_agent_errorlog &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-cycle-agent-errorlog-transact-sql.md)  
  
  