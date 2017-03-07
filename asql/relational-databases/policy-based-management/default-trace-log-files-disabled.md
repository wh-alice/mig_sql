---
title: "Default Trace Log Files Disabled | Microsoft Docs"
ms.custom: ""
ms.date: "03/02/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Best Practices [Database Engine]"
ms.assetid: c27761e6-75ed-4ee4-a236-0cbc42e500a1
caps.latest.revision: 10
ms.author: "jhubbard"
manager: "jhubbard"
---
# Default Trace Log Files Disabled
  This rule checks the value of the sp_configure stored procedure default trace enabled option to determine whether default trace is set ON (1) or OFF (0). When this option is enabled, default tracing provides information about configuration and DDL changes to the [!INCLUDE[ssDEnoversion](../../a9notintoc/includes/ssdenoversion-md.md)]. In some cases, this information can be helpful for customers and [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Customer Service and Support when they troubleshooting issues with the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)].  
  
## Best Practices Recommendations  
 Use the sp_configure stored procedure to enable tracing by setting the value of default trace enabled to 1.  
  
## For More Information  
 [Server Configuration Options &#40;SQL Server&#41;](../../database-engine/configure/windows/server-configuration-options-sql-server.md)  
  
## See Also  
 [Monitor and Enforce Best Practices by Using Policy-Based Management](../../relational-databases/policy-based-management/monitor-and-enforce-best-practices-by-using-policy-based-management.md)  
  
  