---
title: "OLEDB Provider Information Event Class | Microsoft Docs"
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
  - "OLEDB Provider Information event class"
ms.assetid: a0316c4e-4b8c-4754-8a35-222f3c0907d1
caps.latest.revision: 22
ms.author: "jhubbard"
manager: "jhubbard"
---
# OLEDB Provider Information Event Class
  The **OLEDB Provider Information** event class occurs when a distributed query is run and collects information corresponding to the provider connection.  
  
 This event class contains all the properties that are collected from the remote provider by using various property sets, including the following:  
  
-   DBPROPSET_DATASOURCEINFO  
  
-   SQLPROPSET_OPTHINTS  
  
-   DBPROPSET_SQLSERVERDATASOURCEINFO ([!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] only)  
  
-   DBPROPSET_SQLSERVERDBINIT ([!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] only)  
  
-   DBPROPSET_ROWSET  
  
-   IDBInfo interface  
  
 These properties, along with available metadata, are used by the query optimizer to choose the optimal execution plan for the query. This information is useful for tracing execution and analyzing OLE DB calls and events in distributed query profiler traces.  
  
## OLEDB Provider Information Event Class Data Columns  
  
|Data column name|Data type|Description|Column ID|Filterable|  
|----------------------|---------------|-----------------|---------------|----------------|  
|**ApplicationName**|**nvarchar**|Name of the client application that created the connection to an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. This column is populated with the values passed by the application rather than the displayed name of the program.|10|Yes|  
|**ClientProcessID**|**int**|ID assigned by the host computer to the process where the client application is running. This data column is populated if the client provides the client process ID.|9|Yes|  
|**DatabaseID**|**int**|ID of the database specified by the USE *database* statement or the default *database* if no USE database statement has been issued for a given instance. [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] displays the name of the database if the **ServerName** data column is captured in the trace and the server is available. Determine the value for a database by using the DB_ID function.|3|Yes|  
|**DatabaseName**|**nvarchar**|Name of the database in which the user statement is running.|35|Yes|  
|**EventClass**|**int**|Type of event = 194.|27|No|  
|**EventSequence**|**int**|Sequence of a given event within the request.|51|No|  
|**GroupID**|**int**|ID of the workload group where the SQL Trace event fires.|66|Yes|  
|**HostName**|**nvarchar**|Name of the computer on which the client is running. This data column is populated if the client provides the host name. To determine the host name, use the HOST_NAME function.|8|Yes|  
|**IsSystem**|**int**|Indicates whether the event occurred on a system process or a user process. 1 = system, 0 = user.|60|Yes|  
|**LinkedServerName**|**nvarchar**|Name of the linked server.|45|Yes|  
|**LoginName**|**nvarchar**|Name of the login of the user (either [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] security login or the Windows login credentials in the form of DOMAIN\username).|11|Yes|  
|**LoginSid**|**image**|Security identifier (SID) of the logged-in user. You can find this information in the **sys.server_principals** catalog view. Each SID is unique for each login in the server.|41|Yes|  
|**NTDomainName**|**nvarchar**|Windows domain to which the user belongs.|7|Yes|  
|**NTUserName**|**nvarchar**|Windows user name.|6|Yes|  
|**ProviderName**|**nvarchar**|Name of the OLE DB provider.|46|Yes|  
|**RequestID**|**int**|ID of the request containing the statement.|49|Yes|  
|**SessionLoginName**|**nvarchar**|Login name of the user who originated the session. For example, if you connect to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] using Login1 and execute a statement as Login2, **SessionLoginName** shows Login1 and **LoginName** shows Login2. This column displays both [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and Windows logins.|64|Yes|  
|**SPID**|**int**|ID of the session on which the event occurred.|12|Yes|  
|**StartTime**|**datetime**|Time at which the event started, if available.|14|Yes|  
|**TextData**|**ntext**|Text value dependent on the event class captured in the trace.|1|Yes|  
|**TransactionID**|**bigint**|System-assigned ID of the transaction.|4|Yes|  
  
## See Also  
 [Extended Events](../../relational-databases/extended-events/extended-events.md)   
 [sp_trace_setevent &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-trace-setevent-transact-sql.md)   
 [OLE Automation Objects in Transact-SQL](../../relational-databases/stored-procedures/ole-automation-objects-in-transact-sql.md)  
  
  