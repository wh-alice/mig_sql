---
title: "SQL Server Agent Error Log | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "logs [SQL Server], SQL Server Agent"
  - "messages [SQL Server], SQL Server Agent"
  - "errors [SQL Server], logs"
  - "SQL Server Agent, errors"
ms.assetid: 0b2d6e6e-cd2d-4b8b-9fa2-2bbd2fc0da41
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
# SQL Server Agent Error Log
SQL Server Agent creates an error log that records warnings and errors by default. The following warnings and errors are displayed in the log:  
  
-   Warning messages that provide information about potential problems, such as "Job \<*job_name*> was deleted while it was running."  
  
-   Error messages that usually require intervention by a system administrator, such as "Unable to start mail session." Error messages can be sent to a specific user or computer by **net send**.  
  
SQL Server maintains up to nine SQL Server Agent error logs. Each archived log has an extension that indicates the relative age of the log. For example, an extension of .1 indicates the newest archived error log and an extension of .9 indicates the oldest archived error log.  
  
By default, execution trace messages are not written to the SQL Server Agent error log, because they can fill it. When the error log is full, your ability to select and analyze more difficult errors is reduced. Because the log adds to the server's processing load, it is important to consider carefully what value you obtain by capturing execution trace messages to the error log. Generally, it is best to capture all messages only when you are debugging a specific problem.  
  
When SQL Server Agent is stopped, you can modify the location of the SQL Server Agent error log. When the error log is empty, the log cannot be opened. You can cycle the SQL Server Agent log at any time without stopping SQL Server Agent.  
  
**To view the SQL Server Agent error log**  
  
-   [View SQL Server Agent Error Log &#40;SQL Server Management Studio&#41;](../ssms/view-sql-server-agent-error-log--sql-server-management-studio-.md)  
  
**To rename a SQL Server Agent error log**  
  
-   [Rename a SQL Server Agent Error Log &#40;SQL Server Management Studio&#41;](../ssms/rename-a-sql-server-agent-error-log--sql-server-management-studio-.md)  
  
**To send SQL Server Agent error messages**  
  
-   [Send SQL Server Agent Error Messages](../ssms/send-sql-server-agent-error-messages.md)  
  
**To write execution trace messages to the SQL Server Agent error log**  
  
-   [Write Execution Trace Messages to the SQL Server Agent Error Log &#40;SQL Server Management Studio&#41;](../ssms/90e3731e-6fae-43db-833e-9accecdd1c03.md)  
  
