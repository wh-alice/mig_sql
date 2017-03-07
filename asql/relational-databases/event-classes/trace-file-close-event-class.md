---
title: "Trace File Close Event Class | Microsoft Docs"
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
  - "Trace File Close event class"
ms.assetid: 128b7bac-cb64-43e7-ae9b-87b7d2ebb4ef
caps.latest.revision: 31
ms.author: "jhubbard"
manager: "jhubbard"
---
# Trace File Close Event Class
  The **Trace File Close** event class indicates that a trace file has been closed during a trace file rollover.  
  
## Trace File Close Event Class Data Columns  
  
|Data column name|Data type|Description|Column ID|Filterable|  
|----------------------|---------------|-----------------|---------------|----------------|  
|**EventClass**|**int**|Type of event = 150.|27|No|  
|**EventSequence**|**int**|The unique timestamp of this event fired in this trace. This number increases monotonically for each event fired.|51|No|  
|**FileName**|**nvarchar**|The logical name of the trace file being closed.|36|Yes|  
|**IsSystem**|**int**|Indicates whether the event occurred on a system process or a user process. 1 = system, NULL = user. The value is always 1 for this event class.|60|Yes|  
|**LoginName**|**nvarchar**|Name of the login of the user (either [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] security login or the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Windows login credentials in the form of DOMAIN\username). The value is always "sa" for this event class.|11|Yes|  
|**ObjectID**|**int**|System-assigned ID of the trace.|22|Yes|  
|**ServerName**|**nvarchar**|Name of the instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] being traced.|26|No|  
|**SessionLoginName**|**nvarchar**|Login name of the user who originated the session. For example, if you connect to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] using Login1 and execute a statement as Login2, **SessionLoginName** shows Login1 and **LoginName** shows Login2. This column displays both [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] and Windows logins.|64|Yes|  
|**SPID**|**int**|ID of the session on which the event occurred.|12|Yes|  
|**StartTime**|**datetime**|Time at which the event started, if available.|14|Yes|  
  
## See Also  
 [sp_trace_setevent &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-trace-setevent-transact-sql.md)  
  
  