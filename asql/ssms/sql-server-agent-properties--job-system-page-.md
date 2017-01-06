---
title: "SQL Server Agent Properties (Job System Page) | Microsoft Docs"
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
  - "sql13.ag.agent.job.f1"
ms.assetid: e171d13e-1302-4f0e-88be-67d656aec8d3
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
# SQL Server Agent Properties (Job System Page)
Use this page to view and modify how the Microsoft SQL Server Agent Service manages jobs.  
  
## Options  
**Shutdown time-out interval (in seconds)**  
Specifies the number of seconds that SQL Server Agent waits for jobs to complete before shutting down. If the job is still running after the interval specified, SQL Server Agent forcefully stops the job.  
  
**Use a non-administrator proxy account**  
Sets a non-administrator proxy account for SQL Server Agent. Microsoft SQL Server 2008 and later versions support multiple proxies, therefore this option is only applicable when managing SQL Server Agent versions prior to SQL Server 2008.  
  
**User name**  
Type the name of the user for the non-administrator proxy account. SQL Server supports multiple proxies, therefore this option is only applicable when managing SQL Server Agent versions prior to SQL Server 2008.  
  
**Password**  
Type the password of the user for the non-administrator proxy account. SQL Server 2005 and later versions support multiple proxies, therefore this option is only applicable when managing SQL Server Agent versions prior to SQL Server 2005.  
  
**Domain**  
Type the domain of the user for the non-administrative proxy account. SQL Server supports multiple proxies, therefore this option is only applicable when managing SQL Server Agent versions prior to SQL Server 2008.  
  
## See Also  
[Implement Jobs](../ssms/implement-jobs.md)  
  
