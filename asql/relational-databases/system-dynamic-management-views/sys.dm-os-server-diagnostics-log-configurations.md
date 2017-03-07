---
title: "sys.dm_os_server_diagnostics_log_configurations | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.dm_os_server_diagnostics_log_configurations"
  - "sys.dm_os_server_diagnostics_log_configurations_TSQL"
  - "dm_os_server_diagnostics_log_configurations"
  - "dm_os_server_diagnostics_log_configurations_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "dm_os_server_diagnostics_log_configurations"
  - "sys.dm_os_server_diagnostics_log_configurations"
ms.assetid: c09ea433-d283-4f83-af69-d458aad59217
caps.latest.revision: 16
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_os_server_diagnostics_log_configurations
[!INCLUDE[tsql-appliesto-ss2012-all_md](../../relational-databases/indexes/includes/tsql-appliesto-ss2012-all-md.md)]

  Returns one row with the current configuration for the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] failover cluster diagnostic log. These property settings determine whether the diagnostic logging is on or off, and the location, number, and size of the log files.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column Name|Data Type|Description|  
|-----------------|---------------|-----------------|  
|is_enabled|**bit**|Indicates if the logging is turned on or off.<br /><br /> 1 = Diagnostics logging is turned on<br /><br /> 0 = Diagnostics logging is turned off|  
|max_size|**int**|Maximum size in megabytes to which each of the diagnostic logs can grow. The default is 100 MB.|  
|max_files|**int**|Maximum number of diagnostic log files that can be stored on the computer before they are recycled for new diagnostic logs.|  
|path|**nvarchar(260)**|Path indicating the location of the diagnostic logs. The default location is \<\MSSQL\Log> within the installation folder of the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] failover cluster instance.|  
  
## Permissions  
 Requires VIEW SERVER STATE permissions on the SQL Server failover cluster instance.  
  
## Examples  
 The following example uses sys.dm_os_server_diagnostics_log_configurations to return the property settings for the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] failover diagnostic logs.  
  
```  
SELECT <list of columns>  
FROM sys.dm_os_server_diagnostics_log_configurations;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
|IS_ENABLED|PATH|MAX_SIZE|MAX_FILES|  
|-----------------|----------|---------------|----------------|  
|1|\<C:\Program Files\Microsoft SQL Server\MSSQL13\MSSQL\Log>|10|10|  
  
## See Also  
 [View and Read Failover Cluster Instance Diagnostics Log](../../sql-server/failover-clusters/windows/view-and-read-failover-cluster-instance-diagnostics-log.md)  
  
  