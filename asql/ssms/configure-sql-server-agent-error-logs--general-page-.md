---
title: "Configure SQL Server Agent Error Logs (General Page) | Microsoft Docs"
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
  - "sql13.ag.errorlog.configure.f1"
ms.assetid: e08de622-6f87-470c-aee0-b2d6cb6cca88
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
# Configure SQL Server Agent Error Logs (General Page)
Use this screen to view and update settings for SQL Server Agent error logging.  
  
## Options  
**Error log file**  
Specifies the file to which SQL Server Agent writes error logs.  
  
**...**  
Browse to the error log file.  
  
**Write OEM error log**  
Writes the error log file as a non-Unicode file. This reduces the amount of disk space consumed by the log file. However, messages that include Unicode data may be more difficult to read when this option is enabled.  
  
**Errors**  
Writes only errors and informational messages to the log file.  
  
**Warnings**  
Writes only warnings and informational messages to the log file.  
  
**Information**  
Writes only informational messages to the log file.  
  
## See Also  
[SQL Server Agent Error Log](../ssms/sql-server-agent-error-log.md)  
  
