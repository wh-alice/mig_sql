---
title: "RPC:Completed Event Class | Microsoft Docs"
ms.custom: ""
ms.date: "2015-12-04"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "RPC:Completed event class"
ms.assetid: 0d526201-94c9-4e4c-afb1-4213df1815ba
caps.latest.revision: 34
ms.author: "jhubbard"
manager: "jhubbard"
---
# RPC:Completed Event Class
  The RPC:Completed event class indicates that a remote procedure call has been completed.  
  
## RPC:Completed Event Class Data Columns  
  
|Data column name|Data type|Description|Column ID|Filterable|  
|----------------------|---------------|-----------------|---------------|----------------|  
|ApplicationName|**nvarchar**|Name of the client application that created the connection to an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. This column is populated with the values passed by the application rather than the displayed name of the program.|10|Yes|  
|BinaryData|**image**|Binary value dependent on the event class captured in the trace.|2|Yes|  
|ClientProcessID|**int**|ID assigned by the host computer to the process where the client application is running. This data column is populated if the client process ID is provided by the client.|9|Yes|  
|CPU|**int**|Amount of CPU time used by the event. In microseconds beginning with [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)]. In milliseconds in earlier versions.|18|Yes|  
|DatabaseID|**int**|ID of the database specified by the USE *database* statement or the default database if no USE *database* statement has been issued for a given instance. [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] displays the name of the database if the ServerName data column is captured in the trace and the server is available. Determine the value for a database by using the DB_ID function.|3|Yes|  
|DatabaseName|**nvarchar**|Name of the database in which the user statement is running.|35|Yes|  
|Duration|**bigint**|Amount of time taken by the event. In microseconds beginning with [!INCLUDE[ssKilimanjaro](../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)]. In milliseconds in earlier versions.|13|Yes|  
|EndTime|**datetime**|Time at which the remote procedure call ended.|15|Yes|  
|Error|**int**|Error number of a given event.<br /><br /> 0=OK<br /><br /> 1=Error<br /><br /> 2=Abort<br /><br /> 3=Skipped|31|Yes|  
|EventClass|**int**|Type of event = 10.|27|No|  
|EventSequence|**int**|Sequence of a given event within the request.|51|No|  
|GroupID|**int**|ID of the workload group where the SQL Trace event fires.|66|Yes|  
|HostName|**nvarchar**|Name of the computer on which the client is running. This data column is populated if the host name is provided by the client. To determine the host name, use the HOST_NAME function.|8|Yes|  
|IsSystem|**int**|Indicates whether the event occurred on a system process or a user process. 1 = system, 0 = user.|60|Yes|  
|LoginName|**nvarchar**|Name of the login of the user (either [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] security login or the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows login credentials in the form of DOMAIN\username).|11|Yes|  
|LoginSid|**image**|Security identification number (SID) of the logged-in user. You can find this information in the sys.server_principals catalog view. Each SID is unique for each login in the server.|41|Yes|  
|NTDomainName|**nvarchar**|Windows domain to which the user belongs.|7|Yes|  
|NTUserName|**nvarchar**|Windows user name.|6|Yes|  
|ObjectName|**nvarchar**|Name of the object being referenced.|34|Yes|  
|Reads|**bigint**|Number of page reads issued by the remote procedure call.|16|Yes|  
|RequestID|**int**|ID of the request containing the statement.|49|Yes|  
|RowCounts|**bigint**|Number of rows in the RPC batch.|48|Yes|  
|ServerName|**nvarchar**|Name of the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] being traced.|26||  
|SessionLoginName|**nvarchar**|Login name of the user who originated the session. For example, if you connect to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] using Login1 and execute a statement as Login2, SessionLoginName shows Login1 and LoginName shows Login2. This column displays both [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and Windows logins.|64|Yes|  
|SPID|**int**|ID of the session on which the event occurred.|12|Yes|  
|StartTime|**datetime**|Time at which the event started, if available.|14|Yes|  
|TextData|**ntext**|Text of the remote procedure call.|1|Yes|  
|TransactionID|**bigint**|System-assigned ID of the transaction.|4|Yes|  
|Writes|**bigint**|Number of page writes issued by the remote procedure call.|17|Yes|  
|XactSequence|**bigint**|Token that describes the current transaction.|50|Yes|  
  
## See Also  
 [sp_trace_setevent &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-trace-setevent-transact-sql.md)  
  
  