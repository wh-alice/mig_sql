---
title: "SQL:StmtCompleted Event Class | Microsoft Docs"
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
  - "SQL:StmtCompleted event class"
ms.assetid: a55f005d-e020-423c-8940-c24ea1b20104
caps.latest.revision: 32
ms.author: "jhubbard"
manager: "jhubbard"
---
# SQL:StmtCompleted Event Class
  The SQL:StmtCompleted event class indicates that a [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] statement has completed.  
  
## SQL:StmtCompleted Event Class Data Columns  
  
|Data column name|Data type|Description|Column ID|Filterable|  
|----------------------|---------------|-----------------|---------------|----------------|  
|ApplicationName|**nvarchar**|Name of the client application that created the connection to an instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. This column is populated with the values passed by the application rather than the displayed name of the program.|10|Yes|  
|ClientProcessID|**int**|ID assigned by the host computer to the process where the client application is running. This data column is populated if the client provides the client process ID.|9|Yes|  
|CPU|**int**|Amount of CPU time (in milliseconds) used by the event.|18|Yes|  
|DatabaseID|**int**|ID of the database specified by the USE *database* statement or the default database if no USE *database* statement has been issued for a given instance. [!INCLUDE[ssSqlProfiler](../../a9retired/includes/sssqlprofiler-md.md)] displays the name of the database if the ServerName data column is captured in the trace and the server is available. Determine the value for a database by using the DB_ID function.|3|Yes|  
|DatabaseName|**nvarchar**|Name of the database in which the user statement is running.|35|Yes|  
|Duration|**bigint**|Amount of time (in microseconds) taken by the event.|13|Yes|  
|EndTime|**datetime**|Time at which the event ended.|15|Yes|  
|EventClass|**int**|Type of event = 41.|27|No|  
|EventSequence|**int**|Sequence of a given event within the request.|51|No|  
|GroupID|**int**|ID of the workload group where the SQL Trace event fires.|66|Yes|  
|HostName|**nvarchar**|Name of the computer on which the client is running. This data column is populated if the client provides the host name. To determine the host name, use the HOST_NAME function.|8|Yes|  
|IntegerData|**int**|Number of rows returned by the statement.|25|Yes|  
|IntegerData2|**int**|End offset (in bytes) of the statement that is being executed.|55|Yes|  
|IsSystem|**int**|Indicates whether the event occurred on a system process or a user process. 1 = system, 0 = user.|60|Yes|  
|LineNumber|**int**|Line number of the statement being executed.|5|Yes|  
|LoginName|**nvarchar**|Name of the login of the user (either [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] security login or the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Windows login credentials in the form of DOMAIN\username).|11|Yes|  
|LoginSid|**image**|Security identification number (SID) of the logged-in user. You can find this information in the sys.server_principals catalog view. Each SID is unique for each login in the server.|41|Yes|  
|NestLevel|**int**|The nest level of the stored procedure if the statement was run within a stored procedure.|29|Yes|  
|NTDomainName|**nvarchar**|Windows domain to which the user belongs.|7|Yes|  
|NTUserName|**nvarchar**|Windows user name.|6|Yes|  
|Offset|**int**|Starting offset of the statement within the stored procedure or batch.|61|Yes|  
|Reads|**bigint**|Number of page reads issued by the SQL statement.|16|Yes|  
|RequestID|**int**|ID of the request containing the statement.|49|Yes|  
|RowCounts|**bigint**|Number of rows affected by an event.|48|Yes|  
|ServerName|**nvarchar**|Name of the instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] being traced.|26|No|  
|SessionLoginName|**nvarchar**|Login name of the user who originated the session. For example, if you connect to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] using Login1 and execute a statement as Login2, SessionLoginName shows Login1 and LoginName shows Login2. This column displays both [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] and Windows logins.|64|Yes|  
|SPID|**int**|ID of the session on which the event occurred.|12|Yes|  
|StartTime|**datetime**|Time at which the event started, if available.|14|Yes|  
|TextData|**ntext**|Text of the statement that was executed.|1|Yes|  
|TransactionID|**bigint**|ID of the transaction if the statement was run within a transaction.|4|Yes|  
|Writes|**bigint**|Number of page writes issued by the SQL statement.|17|Yes|  
|XactSequence|**bigint**|Token that describes the current transaction.|50|Yes|  
  
## See Also  
 [Extended Events](../../relational-databases/extended-events/extended-events.md)   
 [sp_trace_setevent &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-trace-setevent-transact-sql.md)  
  
  