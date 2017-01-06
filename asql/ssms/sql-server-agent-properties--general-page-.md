---
title: "SQL Server Agent Properties (General Page) | Microsoft Docs"
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
  - "sql13.ag.agent.general.f1"
ms.assetid: b51601e9-5454-43c6-bb5e-24eb2ff043c8
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
# SQL Server Agent Properties (General Page)
Use this page to view and modify the general properties of the Microsoft SQL Server Agent service.  
  
## Options  
**Service state**  
Displays the current state of the SQL Server Agent service.  
  
**Auto restart SQL Server if it stops unexpectedly**  
SQL Server Agent restarts SQL Server if SQL Server stops unexpectedly.  
  
**Auto restart SQL Server Agent if it stops unexpectedly**  
SQL Server restarts SQL Server Agent if SQL Server Agent stops unexpectedly.  
  
**Filename**  
Specify the file name for the error log.  
  
**...**  
Browse to the error log file.  
  
**Include execution trace messages**  
Includes execution trace messages in the error log. Trace messages provide detailed information on SQL Server Agent operation. Therefore, the log file requires more disk space when this option is selected. This option should only be selected while troubleshooting a problem that may involve SQL Server Agent.  
  
**Write OEM file**  
Writes the error log file as a non-Unicode file. This reduces the amount of disk space consumed by the log file. However, messages that include Unicode data may be more difficult to read when this option is enabled.  
  
**Net send recipient**  
Type the name of an operator to receive net send notification of messages that SQL Server Agent writes to the log file.  
  
## See Also  
[Operators](../ssms/operators.md)  
[SQL Server Agent Error Log](../ssms/sql-server-agent-error-log.md)  
  
