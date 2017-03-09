---
title: "Disable Lightweight Pooling | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-09"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Best Practices [Database Engine]"
ms.assetid: 481bb43d-6fe5-497c-9096-971fb6bf733b
caps.latest.revision: 13
ms.author: "jhubbard"
manager: "jhubbard"
---
# Disable Lightweight Pooling
  This rule checks that lightweight pooling is disabled on the server. Setting lightweightpooling to 1 causes [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to switch to fiber mode scheduling. Fiber mode is intended for certain situations in which the context switching of the UMS workers is the important bottleneck in performance. Because this is rare, fiber mode seldom improves performance or scalability on the typical system.  
  
## Best Practices Recommendations  
 The lightweightpooling option should only be enabled after thorough testing, after all other performance tuning opportunities are evaluated, and when context switching is a known issue in your environment.  
  
 We recommend that you do not use fiber mode scheduling for routine operation because it can decrease performance by preventing the regular benefits of context switching, and because some components of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] that use Thread Local Storage (TLS) or thread-owned objects, such as mutexes (a kind of Win32 kernel object), cannot function correctly in fiber mode  
  
 To remove lightweight pooling, execute the following statement, and then restart the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)].  
  
```tsql  
sp_configure 'show advanced options', 1;  
GO  
sp_configure 'lightweight pooling', 0;  
GO  
RECONFIGURE;  
GO  
```  
  
## For More Information  
 [lightweight pooling Server Configuration Option](../../database-engine/configure/windows/lightweight-pooling-server-configuration-option.md)  
  
## See Also  
 [Monitor and Enforce Best Practices by Using Policy-Based Management](../../relational-databases/policy-based-management/monitor-and-enforce-best-practices-by-using-policy-based-management.md)  
  
  