---
title: "Set a Trace Filter (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "filters [SQL Server], traces"
  - "traces [SQL Server], filters"
ms.assetid: 7b976a84-7381-43a6-a828-ba83ada71cbe
caps.latest.revision: 20
ms.author: "jhubbard"
manager: "jhubbard"
---
# Set a Trace Filter (Transact-SQL)
  This topic describes how to use stored procedures to create a filter that retrieves only the information you need on an event being traced.  
  
### To set a trace filter  
  
1.  If the trace is already running, execute **sp_trace_setstatus** by specifying **@status = 0** to stop the trace.  
  
2.  Execute **sp_trace_setfilter** to configure the type of information to retrieve for the event being traced.  
  
> [!IMPORTANT]  
>  Unlike regular stored procedures, parameters of all [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] stored procedures (**sp_trace_*xx***) are strictly typed and do not support automatic data type conversion. If these parameters are not called with the correct input parameter data types, as specified in the argument description, the stored procedure will return an error.  
  
## See Also  
 [Filter a Trace](../../relational-databases/sql-trace/filter-a-trace.md)   
 [sp_trace_setfilter &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-trace-setfilter-transact-sql.md)   
 [sp_trace_setstatus &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-trace-setstatus-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [SQL Server Profiler Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sql-server-profiler-stored-procedures-transact-sql.md)  
  
  