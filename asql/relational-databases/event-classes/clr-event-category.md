---
title: "CLR Event Category | Microsoft Docs"
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
  - "event classes [SQL Server], CLR event category"
  - "SQL Server event classes, CLR event category"
  - "CLR event category [SQL Server]"
ms.assetid: a7c0cd60-3bec-42be-ad5e-473bd26a06d9
caps.latest.revision: 17
ms.author: "jhubbard"
manager: "jhubbard"
---
# CLR Event Category
  The **CLR** event category includes event classes that are produced by the execution of [!INCLUDE[dnprdnshort](../../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] common language runtime (CLR) objects inside [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
 
 ## Assembly Load Event Class 
  The **Assembly Load** event class occurs when a request to load an assembly is executed.  
  
 Include the **Assembly Load** event class in traces where you want to monitor assembly loads. This can be useful when troubleshooting a query that uses common language runtime (CLR), when troubleshooting a slow running server that is running CLR queries, or when monitoring a server to gather user, database, success, or other information about assembly loads.  
  
## Assembly Load Event Class Data Columns  
  
|Data column name|Data type|Description|Column ID|Filterable|  
|----------------------|---------------|-----------------|---------------|----------------|  
|**ApplicationName**|**nvarchar**|The name of the application that requested the load.|10|Yes|  
|**ClientProcessID**|**int**|ID assigned by the host computer to the process where the client application is running. This data column is populated if the client provides the client process ID.|9|Yes|  
|**DatabaseID**|**int**|ID of the database specified by the USE database statement or the default database if no USE database statement has been issued for a given instance. [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] displays the name of the database if the **ServerName** data column is captured in the trace and the server is available. Determine the value for a database by using the DB_ID function.|3|Yes|  
|**DatabaseName**|**nvarchar**|Name of the database in which the user statement is running.|35|Yes|  
|**EventSequence**|**int**|Sequence of a given event within the request.|51|No|  
|**GroupID**|**int**|ID of the workload group where the SQL Trace event fires.|66|Yes|  
|**HostName**|**nvarchar**|Name of the computer on which the client is running. This data column is populated if the client provides the host name. To determine the host name, use the HOST_NAME function.|8|Yes|  
|**LoginName**|**nvarchar**|Name of the login of the user (either [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] security login or the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows login credentials in the form of DOMAIN\username).|11|Yes|  
|**LoginSID**|**image**|Security identifier (SID) of the logged-in user. You can find this information in the **sys.server_principals** catalog view. Each SID is unique for each login in the server.|41|Yes|  
|**NTDomainName**|**nvarchar**|Windows domain to which the user belongs.|7|Yes|  
|**NTUserName**|**nvarchar**|Windows user name.|6|Yes|  
|**ObjectID**|**int**|Assembly ID.|22|Yes|  
|**ObjectName**|**nvarchar**|Fully qualified name of the assembly.|34|Yes|  
|**RequestID**|**int**|ID of the request containing the statement.|49|Yes|  
|**ServerName**|**nvarchar**|Name of the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] being traced.|26|No|  
|**SessionLoginName**|**nvarchar**|Login name of the user that originated the session. For example, if you connect to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] using Login1 and execute a statement as Login2, **SessionLoginName** shows Login1 and **LoginName** shows Login2. This column displays both [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and Windows logins.|64|Yes|  
|**SPID**|**int**|ID of the session on which the event occurred.|12|Yes|  
|**StartTime**|**datetime**|Time at which the event started, if available.|14|Yes|  
|**Success**|**int**|Indicates whether the assembly load succeeded (1) or failed (0).|23|Yes|  
|**TextData**|**ntext**|"Assembly Load Succeeded" if the load succeeds; otherwise, "Assembly Load Failed".|1|Yes|  
  
## See Also  
 [Extended Events](../../relational-databases/extended-events/extended-events.md)   
 [Assemblies &#40;Database Engine&#41;](../../relational-databases/clr-integration/assemblies-database-engine.md)  
  
   
  
## See Also  
 [Extended Events](../../relational-databases/extended-events/extended-events.md)  
  
  