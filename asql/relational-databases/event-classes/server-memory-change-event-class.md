---
title: "Server Memory Change Event Class | Microsoft Docs"
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
  - "Server Memory Change event class"
ms.assetid: c9836484-39c5-4a89-b080-3567783b6fff
caps.latest.revision: 29
ms.author: "jhubbard"
manager: "jhubbard"
---
# Server Memory Change Event Class
  The **Server Memory Change** event class occurs when [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] memory usage has increased or decreased by either 1 megabyte (MB) or 5 percent of the maximum server memory, whichever is greater.  
  
## Server Memory Change Event Class Data Columns  
  
|Data column name|Data type|Description|Column ID|Yes|  
|----------------------|---------------|-----------------|---------------|---------|  
|**EventClass**|**int**|Type of event = 81.|27|No|  
|**EventSequence**|**int**|Sequence of a given event within the request.|51|No|  
|**EventSubClass**|**int**|Type of event subclass.<br /><br /> 1=Memory Increase<br /><br /> 2=Memory Decrease|21|Yes|  
|**IntegerData**|**int**|New memory size, in megabytes (MB).|25|Yes|  
|**IsSystem**|**int**|Indicates whether the event occurred on a system process or a user process. 1 = system, 0 = user.|60|Yes|  
|**RequestID**|**int**|ID of the request containing the statement.|49|Yes|  
|**ServerName**|**nvarchar**|Name of the instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] being traced.|26|No|  
|**SessionLoginName**|**nvarchar**|The login name of the user who originated the session. For example, if you connect to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] using Login1 and execute a statement as Login2, **SessionLoginName** shows Login1 and **LoginName** shows Login2. This column displays both [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] and Windows logins.|64|Yes|  
|**SPID**|**int**|ID of the session on which the event occurred.|12|Yes|  
|**StartTime**|**datetime**|Time at which the event started, if available.|14|Yes|  
|**TransactionID**|**bigint**|System-assigned ID of the transaction.|4|Yes|  
|**XactSequence**|**bigint**|Token that describes the current transaction.|50|Yes|  
  
## See Also  
 [Extended Events](../../relational-databases/extended-events/extended-events.md)   
 [sp_trace_setevent &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-trace-setevent-transact-sql.md)   
 [Server Memory Server Configuration Options](../../database-engine/configure/windows/server-memory-server-configuration-options.md)  
  
  