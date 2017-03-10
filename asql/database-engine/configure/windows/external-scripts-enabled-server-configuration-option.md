---
title: "external scripts enabled Server Configuration Option | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2017-03-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "external scripts enabled"
  - "external_scripts_enabled_TSQL"
helpviewer_keywords: 
  - "external scripts enabled option"
ms.assetid: 9d0ce165-8719-4007-9ae8-00f85cab3a0d
caps.latest.revision: 8
ms.author: "rickbyh"
manager: "jhubbard"
---
# external scripts enabled Server Configuration Option
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Use the **external scripts enabled** option to enable the execution of scripts with certain remote language extensions. This property will be OFF by default. Setup can optionally set this property to true if **Advanced Analytics Services** is installed.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL15](../../../analysis-services/powershell/includes/sssql15-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658).|  
  
 You must enable the external script enabled option before you can execute an external script using the **sp_execute_external_script** procedure. Use **sp_execute_external_script** to execute scripts written in a supported language such as R. In [!INCLUDE[ssSQL15](../../../analysis-services/powershell/includes/sssql15-md.md)], [!INCLUDE[rsql_productname](../../../advanced-analytics/r-services/includes/rsql-productname-md.md)] is comprised of a server component installed with [!INCLUDE[ssSQL15](../../../analysis-services/powershell/includes/sssql15-md.md)], and a set of workstation tools and connectivity libraries that connect the data scientist to the high-performance environment of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  Install the **Advanced Analytics Extensions** feature during [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] setup to enable the execution of R scripts. For more information, see [Installing Previous Versions of SQL Server R Services](http://msdn.microsoft.com/en-US/library/mt604883(SQL.130).aspx).  
  
 Execute the following script to enable external scripts.  
  
```  
sp_configure 'external scripts enabled', 1;  
RECONFIGURE;  
```  
  
 You must restart [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to make this change effective.  
  
## See Also  
 [sp_configure &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-configure-transact-sql.md)   
 [RECONFIGURE &#40;Transact-SQL&#41;](../../../t-sql/language-elements/reconfigure-transact-sql.md)   
 [sp_execute_external_script &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-execute-external-script-transact-sql.md)   
 [SQL Server R Services](../../../advanced-analytics/r-services/sql-server-r-services.md)  
  
  