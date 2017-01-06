---
title: "Recycle SQL Server Agent Error Logs | Microsoft Docs"
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
  - "sql13.ag.errorlog.recyclesqlagenterrorlogs.f1"
ms.assetid: 10bc2dd1-0505-4527-8ec7-d3b4e5d6352b
caps.latest.revision: 3
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
# Recycle SQL Server Agent Error Logs
Use this page to recycle the Microsoft SQL Server Agent Error Logs. Recycling the log closes the current SQL Server Agent error log and starts a new error log without restarting the SQL Server Agent service. Notice that SQL Server Agent maintains the nine most recent error logs. If there are already nine error logs present, recycling the error log causes SQL Server Agent to remove the oldest error log.  
  
## See Also  
[SQL Server Agent Error Log](../ssms/sql-server-agent-error-log.md)  
  
