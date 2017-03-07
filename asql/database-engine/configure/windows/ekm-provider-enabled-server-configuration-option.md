---
title: "EKM provider enabled Server Configuration Option | Microsoft Docs"
ms.custom: ""
ms.date: "2017-03-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "external encryption provider"
helpviewer_keywords: 
  - "EKM provider enabled option"
ms.assetid: da58ed50-3a13-4172-9065-960559d8f383
caps.latest.revision: 12
ms.author: "rickbyh"
manager: "jhubbard"
---
# EKM provider enabled Server Configuration Option
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **EKM provider enabled** option controls Extensible Key Management device support in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. By default this option is off.  
  
 To enable or disable the feature, issue one of the following **sp_configure** commands:  
  
```  
/* Enable the external encryption provider option */  
sp_configure 'EKM provider enabled', 1  
/* Disable the external encryption provider option */  
sp_configure 'EKM provider enabled', 0  
```  
  
> [!NOTE]  
>  This option is not enabled in every edition of [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. For a list of features that are supported by the editions of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], see [Features Supported by the Editions of SQL Server 2016](../Topic/Features%20Supported%20by%20the%20Editions%20of%20SQL%20Server%202016.md).  
  
## See Also  
 [Extensible Key Management &#40;EKM&#41;](../../../relational-databases/security/encryption/extensible-key-management-ekm.md)   
 [Server Configuration Options &#40;SQL Server&#41;](../../../database-engine/configure/windows/server-configuration-options-sql-server.md)   
 [Monitor Resource Usage &#40;System Monitor&#41;](../../../relational-databases/monitor/performance-monitor/monitor-resource-usage-system-monitor.md)   
 [sp_configure &#40;Transact-SQL&#41;](../../../relational-databases/system-stored-procedures/sp-configure-transact-sql.md)   
 [RECONFIGURE &#40;Transact-SQL&#41;](../../../t-sql/language-elements/reconfigure-transact-sql.md)  
  
  