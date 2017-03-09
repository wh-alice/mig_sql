---
title: "CursorUnprepare Event Class | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "CursorUnprepare event class"
ms.assetid: 34055a2f-7d0f-4e13-a62e-7ee5b6c23b86
caps.latest.revision: 35
ms.author: "jhubbard"
manager: "jhubbard"
---
# CursorUnprepare Event Class
  The **CursorUnprepare** event class provides information about cursor unprepare events that occur in application programming interface (API) cursors. Cursor unprepare events occur when the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] discards an execution plan.  
  
 Include the **CursorUnprepare** event class in traces that record the performance of cursors. When the **CursorUnprepare** event class is included in a trace, the amount of overhead incurred depends on how frequently cursors are used against the database during the trace. If cursors are used extensively, the trace can significantly impede performance.  
  
## CursorUnprepare Event Class Data Columns  
  
|Data column name|Data type|Description|Column ID|Filterable|  
|----------------------|---------------|-----------------|---------------|----------------|  
|**ApplicationName**|**nvarchar**|Name of the client application that created the connection to an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. This column is populated with the values passed by the application rather than with the displayed name of the program.|10|Yes|  
|**ClientProcessID**|**int**|ID assigned by the host computer to the process where the client application is running. This data column is populated if the client provides the client process ID.|9|Yes|  
|**DatabaseID**|**int**|ID of the database specified by the USE statement or the default database if no USE statement has been issued for a given instance. [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] displays the name of the database if the **ServerName** data column is captured in the trace and the server is available. Determine the value for a database by using the DB_ID function.|3|Yes|  
|**DatabaseName**|**nvarchar**|Name of the database in which the user statement is running.|35|Yes|  
|**EventClass**|**int**|Type of event recorded = 77.|27|No|  
|**EventSequence**|**int**|Batch sequence of the **CursorUnprepare** event class.|51|No|  
|**GroupID**|**int**|ID of the workload group where the SQL Trace event fires.|66|Yes|  
|**Handle**|**Int**|Identifies the prepared handle that is being unprepared.|33|Yes|  
|**HostName**|**nvarchar**|Name of the computer on which the client is running. This data column is populated if the client provides the host name. To determine the host name, use the HOST_NAME function.|8|Yes|  
|**IsSystem**|**int**|Indicates whether the event occurred on a system process or a user process. 1 = system, 0 = user.|60|Yes|  
|**LoginName**|**nvarchar**|Name of the login of the user (either [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] security login or the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows login credentials in the form of DOMAIN\username).|11|Yes|  
|**LoginSid**|**image**|Security identifier (SID) of the logged-in user. You can find this information in the **sys.server_principals** catalog view. Each SID is unique for each login in the server.|41|Yes|  
|**NTDomainName**|**nvarchar**|Windows domain to which the user belongs.|7|Yes|  
|**NTUserName**|**nvarchar**|Windows user name.|6|Yes|  
|**RequestID**|**int**|Request identification that unprepared the cursor.|49|Yes|  
|**ServerName**|**nvarchar**|Name of the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] being traced.|26|No|  
|**SessionLoginName**|**nvarchar**|Login name of the user that originated the session. For example, if you connect to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] using Login1 and execute a statement as Login2, **SessionLoginName** shows Login1 and **LoginName** shows Login2. This column displays both [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and Windows logins.|64|Yes|  
|**SPID**|**int**|ID of the session on which the event occurred.|12|Yes|  
|**StartTime**|**datetime**|Time at which the event started, if available.|14|Yes|  
|**TransactionID**|**bigint**|System-assigned ID of the transaction.|4|Yes|  
|**XactSequence**|**bigint**|Token that describes the current transaction.|50|Yes|  
  
## See Also  
 [sp_trace_setevent &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-trace-setevent-transact-sql.md)  
  
  