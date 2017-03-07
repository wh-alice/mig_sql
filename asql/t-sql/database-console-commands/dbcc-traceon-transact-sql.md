---
title: "DBCC TRACEON (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-01-19"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "DBCC_TRACEON_TSQL"
  - "TRACEON"
  - "DBCC TRACEON"
  - "TRACEON_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "DBCC TRACEON statement"
  - "trace flags [SQL Server], enabling"
ms.assetid: 93085324-ebaa-4e38-aac8-5e57b4b0d36d
caps.latest.revision: 36
ms.author: "jhubbard"
manager: "jhubbard"
---
# DBCC TRACEON (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Enables the specified trace flags.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
DBCC TRACEON ( trace# [ ,...n ][ , -1 ] ) [ WITH NO_INFOMSGS ]  
```  
  
## Arguments  
 *trace#*  
 Is the number of the trace flag to turn on.  
  
 *n*  
 Is a placeholder that indicates multiple trace flags can be specified.  
  
 -1  
 Switches on the specified trace flags globally.  
  
 WITH NO_INFOMSGS  
 Suppresses all informational messages.  
  
## Remarks  
 On a production server, to avoid unpredictable behavior, we recommend that you only enable trace flags server-wide by using one of the following methods:  
  
-   Use the **-T** command-line startup option of Sqlservr.exe. This is a recommended best practice because it makes sure that all statements will run with the trace flag enabled. These include commands in startup scripts. For more information, see [sqlservr Application](../../tools/sqlservr-application.md).  
  
-   Use DBCC TRACEON **(***trace#* [**,** ...*.n*]**,-1)** only while users or applications are not concurrently running statements on the system.  
  
 Trace flags are used to customize certain characteristics by controlling how [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] operates. Trace flags, after they are enabled, remain enabled in the server until disabled by executing a DBCC TRACEOFF statement. In [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], there are two types of trace flags: session and global. Session trace flags are active for a connection and are visible only for that connection. Global trace flags are set at the server level and are visible to every connection on the server. To determine the status of trace flags, use DBCC TRACESTATUS. To disable trace flags, use DBCC TRACEOFF.  
  
 After turning on a trace flag that affects query plans, execute `DBCC FREEPROCCACHE;` so that cached plans are recompiled using the new plan-affecting behavior.  
  
## Result Sets  
 DBCC TRACEON returns the following result set (message):  
  
```  
DBCC execution completed. If DBCC printed error messages, contact your system administrator.  
```  
  
## Permissions  
 Requires membership in the **sysadmin** fixed server role.  
  
## Examples  
 The following example disables hardware compression for tape drivers, by switching on trace flag `3205`. This flag is switched on only for the current connection.  
  
```tsql  
DBCC TRACEON (3205);  
GO  
```  
  
 The following example switches on trace flag `3205` globally.  
  
```tsql  
DBCC TRACEON (3205, -1);  
GO  
```  
  
 The following example switches on trace flags `3205`, and `260` globally.  
  
```tsql  
DBCC TRACEON (3205, 260, -1);  
GO  
```  
  
## See Also  
 [DBCC &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-transact-sql.md)   
 [DBCC TRACEOFF &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-traceoff-transact-sql.md)   
 [DBCC TRACESTATUS &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-tracestatus-transact-sql.md)   
 [Trace Flags &#40;Transact-SQL&#41;](../Topic/Trace%20Flags%20\(Transact-SQL\).md)   
 [Enable plan-affecting SQL Server query optimizer behavior that can be controlled by different trace flags on a specific-query level](https://support.microsoft.com/kb/2801413)  
  
  