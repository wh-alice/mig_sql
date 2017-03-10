---
title: "common criteria compliance enabled Server Configuration Option | Microsoft Docs"
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
  - "common criteria compliance"
helpviewer_keywords: 
  - "CC (common criteria) [Database Engine]"
  - "common criteria compliance [Database Engine]"
  - "Risidual Information Protection [Database Engine]"
  - "RIP (Residual Information Protection)"
ms.assetid: 61766eea-c450-408d-af33-fbe7ef8c9ff2
caps.latest.revision: 24
ms.author: "rickbyh"
manager: "jhubbard"
---
# common criteria compliance enabled Server Configuration Option
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The common criteria compliance enabled option enables the following elements that are required for the Common Criteria.  
  
|Criteria|Description|  
|--------------|-----------------|  
|Residual Information Protection (RIP)|RIP requires a memory allocation to be overwritten with a known pattern of bits before memory is reallocated to a new resource. Meeting the RIP standard can contribute to improved security; however, overwriting the memory allocation can slow performance. After the common criteria compliance enabled option is enabled, the overwriting occurs.|  
|The ability to view login statistics|After the common criteria compliance enabled option is enabled, login auditing is enabled. Each time a user successfully logs in to [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], information about the last successful login time, the last unsuccessful login time, and the number of attempts between the last successful and current login times is made available. These login statistics can be viewed by querying the [sys.dm_exec_sessions](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-sessions-transact-sql.md) dynamic management view.|  
|That column `GRANT` should not override table `DENY`|After the common criteria compliance enabled option is enabled, a table-level `DENY` takes precedence over a column-level `GRANT`. When the option is not enabled, a column-level `GRANT` takes precedence over a table-level `DENY`.|  
  
 The common criteria compliance enabled option is an advanced option. Common criteria is only evaluated and certified for the Enterprise edition and Datacenter edition. For the latest status of common criteria certification, see the [Microsoft SQL Server Common Criteria](http://go.microsoft.com/fwlink/?LinkId=616319) Web site.  
  
> [!IMPORTANT]  
>  In addition to enabling the common criteria compliance enabled option, you also must download and run a script that finishes configuring [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to comply with Common Criteria Evaluation Assurance Level 4+ (EAL4+). You can download this script from the [Microsoft SQL Server Common Criteria](http://go.microsoft.com/fwlink/?LinkId=616319) Web site.  
  
 If you are using the `sp_configure` system stored procedure to change the setting, you can change common criteria compliance enabled only when show advanced options is set to 1. The setting takes effect after the server is restarted. The possible values are 0 and 1:  
  
-   0 indicates that common criteria compliance is not enabled. This is the default.  
  
-   1 indicates that common criteria compliance is enabled.  
  
## Examples  
 The following example enables common criteria compliance.  
  
```  
sp_configure 'show advanced options', 1;  
GO  
RECONFIGURE;  
GO  
sp_configure 'common criteria compliance enabled', 1;  
GO  
RECONFIGURE WITH OVERRIDE; 
GO  
```  

Restart [!INCLUDE[ssNoVersion_md](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].
  
## See Also  
 [Server Configuration Options &#40;SQL Server&#41;](../../../database-engine/configure/windows/server-configuration-options-sql-server.md)  
  
  