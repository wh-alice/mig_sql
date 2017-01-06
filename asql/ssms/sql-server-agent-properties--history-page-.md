---
title: "SQL Server Agent Properties (History Page) | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.ag.agent.history.f1"
ms.assetid: dc73734c-b3c3-407f-bbd1-8714b4fa47b0
caps.latest.revision: 4
ms.author: "sstein"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "zh-cn"
  - "zh-tw"
---
# SQL Server Agent Properties (History Page)
Use this page to view and modify settings for managing the Microsoft SQL Server Agent service history log.  
  
## Options  
**Limit size of job history log**  
Sets limits for the amount of job history information that SQL Server Agent retains in the log.  
  
**Maximum job history log size (in rows)**  
Sets the maximum number of rows that SQL Server Agent retains. When the log grows to contain this number of rows, SQL Server Agent removes the oldest rows in the log as new rows are entered.  
  
**Maximum job history rows per job**  
Sets the maximum number of rows that SQL Server Agent retains per job. When the history for a particular job grows to contain this number of rows, SQL Server Agent removes the oldest rows in the log as new rows are entered.  
  
**Remove agent history**  
Specifies that SQL Server Agent will remove entries that have been in the log longer than a specified length of time. This is a one-time execution to remove the history. If a reoccurring job is needed, create and schedule a maintenance plan with a cleanup job.  
  
**Older than**  
Sets the amount of time that SQL Server Agent will retain entries.  
  
## See Also  
[SQL Server Agent Error Log](../ssms/sql-server-agent-error-log.md)  
  
