---
title: "sys.fn_trace_geteventinfo (Transact-SQL) | Microsoft Docs"
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
  - "fn_trace_geteventinfo"
  - "fn_trace_geteventinfo_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "events [SQL Server], status information"
  - "fn_trace_geteventinfo function"
  - "sys.fn_trace_geteventinfo function"
  - "status information [SQL Server], events"
ms.assetid: 5b1c858a-ca43-4e2b-9d67-8654daaf0cc5
caps.latest.revision: 35
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.fn_trace_geteventinfo (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns information about an event being traced.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use Extended Events instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
fn_trace_geteventinfo ( trace_id )  
```  
  
## Arguments  
 *trace_id*  
 Is the ID of the trace. *trace_id* is **int**, with no default.  
  
## Tables Returned  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**eventid**|**int**|ID of the traced event|  
|**columnid**|**int**|ID numbers of all columns collected for each event|  
  
## Remarks  
 When passed the ID of a specific trace, **fn_trace_geteventinfo** returns information about that trace. When passed an invalid ID, this function returns an empty rowset.  
  
## Permissions  
 Requires ALTER TRACE permission on the server.  
  
## Examples  
 The following example returns information about trace number 2.  
  
```  
SELECT * FROM fn_trace_geteventinfo(2) ;  
GO  
  
```  
  
## See Also  
 [sp_trace_setevent &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-trace-setevent-transact-sql.md)   
 [sp_trace_setfilter &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-trace-setfilter-transact-sql.md)   
 [Create a Trace &#40;Transact-SQL&#41;](../../../relational-databases/sql-trace/create-a-trace-transact-sql.md)   
 [sp_trace_create &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-trace-create-transact-sql.md)   
 [sp_trace_generateevent &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-trace-generateevent-transact-sql.md)   
 [sp_trace_setstatus &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-trace-setstatus-transact-sql.md)   
 [sys.fn_trace_getinfo &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-functions/sys.fn-trace-getinfo-transact-sql.md)   
 [sys.fn_trace_gettable &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-functions/sys.fn-trace-gettable-transact-sql.md)   
 [sys.fn_trace_getfilterinfo &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-functions/sys.fn-trace-getfilterinfo-transact-sql.md)  
  
  