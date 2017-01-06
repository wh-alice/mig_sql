---
title: "Job Properties - New Job (Notifications Page) | Microsoft Docs"
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
  - "sql13.ag.job.notifications.f1"
ms.assetid: ed393cbd-4496-4399-a177-e5baa92fb689
caps.latest.revision: 5
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
# Job Properties - New Job (Notifications Page)
Use this page to set actions for Microsoft SQL Server Agent to perform when the job completes.  
  
## Options  
**E-mail**  
Select this option to send e-mail when the job completes. After selecting this option, choose the operator to notify and the condition that will trigger the notification: **When the job succeeds**; **When the job fails**; or **When the job completes**.  
  
**Page**  
Select this option to send e-mail to an operator's pager when the job completes. After selecting this option, specify the operator to notify and the condition that will trigger the notification: **When the job succeeds**; **When the job fails**; or **When the job completes**.  
  
**Net send**  
Select this option to use net send to notify an operator when the job completes. After selecting this option, specify the operator to notify and the condition that will trigger the notification: **When the job succeeds**; **When the job fails**; or **When the job completes**.  
  
**Write to the Windows Application event log**  
Select this option to write an entry in the application event log when the job completes. After selecting this option, specify the condition that will cause the entry to be written: **When the job succeeds**; **When the job fails**; or **When the job completes**.  
  
**Automatically delete job**  
Select this option to delete the job when the job completes. After selecting this option, specify the condition that will trigger deletion of the job: **When the job succeeds**; **When the job fails**; or **When the job completes**.  
  
## See Also  
[Implement Jobs](../ssms/implement-jobs.md)  
[How to: Configure SQL Server Agent Mail to Use Database Mail (SQL Server Management Studio)](http://msdn.microsoft.com/en-us/4b8b61bd-4bd1-43cd-b6e5-c6ed2e101dce)  
  
