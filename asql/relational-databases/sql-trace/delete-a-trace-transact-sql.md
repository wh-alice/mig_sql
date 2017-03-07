---
title: "Delete a Trace (Transact-SQL) | Microsoft Docs"
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
  - "traces [SQL Server], deleting"
  - "removing traces"
  - "deleting traces"
ms.assetid: a5502814-b281-42dd-b885-5c9368025ae6
caps.latest.revision: 22
ms.author: "jhubbard"
manager: "jhubbard"
---
# Delete a Trace (Transact-SQL)
  This topic describes how to use stored procedures to delete a trace.  
  
 For an example of using trace stored procedures, see [Create a Trace &#40;Transact-SQL&#41;](../../relational-databases/sql-trace/create-a-trace-transact-sql.md).  
  
### To delete a trace  
  
1.  Execute **sp_trace_setstatus** by specifying **@status = 0** to stop the trace.  
  
2.  Execute **sp_trace_setstatus** by specifying **@status = 2** to close the trace and delete its information from the server.  
  
> [!NOTE]  
>  A trace must be stopped first before it can be closed.  
  
## See Also  
 [sp_trace_setstatus &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-trace-setstatus-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [SQL Server Profiler Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sql-server-profiler-stored-procedures-transact-sql.md)  
  
  