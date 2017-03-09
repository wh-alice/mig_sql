---
title: "sys.dm_clr_properties (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.dm_clr_properties"
  - "sys.dm_clr_properties_TSQL"
  - "dm_clr_properties_TSQL"
  - "dm_clr_properties"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_clr_properties dynamic management view"
ms.assetid: 220d062f-d117-46e7-a448-06fe48db8163
caps.latest.revision: 26
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_clr_properties (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-xxxx-pdw-md.md)]

  Returns a row for each property related to [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] common language runtime (CLR) integration, including the version and state of the hosted CLR. The hosted CLR is initialized by running the [CREATE ASSEMBLY](../../../t-sql/statements/create-assembly-transact-sql.md), [ALTER ASSEMBLY](../../../t-sql/statements/alter-assembly-transact-sql.md), or [DROP ASSEMBLY](../../../t-sql/statements/drop-assembly-transact-sql.md) statements, or by executing any CLR routine, type, or trigger. The **sys.dm_clr_properties** view does not specify whether execution of user CLR code has been enabled on the server. Execution of user CLR code is enabled by using the [sp_configure](../../../relational-databases/reference/system-stored-procedures/sp-configure-transact-sql.md) stored procedure with the [clr enabled](../../../database-engine/configure/windows/clr-enabled-server-configuration-option.md) option set to 1.  
  
 The **sys.dm_clr_properties** view contains the **name** and **value** columns. Each row in this view provides details about a property of the hosted CLR. Use this view to gather information about the hosted CLR, such as the CLR install directory, the CLR version, and the current state of the hosted CLR. This view can help you determine if the CLR integration code is not working because of problems with the CLR installation on the server computer.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)). [!INCLUDE[sqldbesa](../../../database-engine/configure/windows/includes/sqldbesa-md.md)].|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**name**|**nvarchar(128)**|The name of the property.|  
|**value**|**nvarchar(128)**|Value of the property.|  
  
## Properties  
 The **directory** property indicates the directory that the .NET Framework was installed to on the server. There could be multiple installations of .NET Framework on the server computer and the value of this property identifies which installation [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is using.  
  
 The **version** property indicates the version of the .NET Framework and hosted CLR on the server.  
  
 The **sys.dm_clr_properties** dynamic managed view can return six different values for the **state** property, which reflects the state of the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] hosted CLR. They are:  
  
-   Mscoree is not loaded.  
  
-   Mscoree is loaded.  
  
-   Locked CLR version with mscoree.  
  
-   CLR is initialized.  
  
-   CLR initialization permanently failed.  
  
-   CLR is stopped.  
  
 The **Mscoree is not loaded** and **Mscoree is loaded** states show the progression of the hosted CLR initialization on server startup, and are not likely to be seen.  
  
 The **Locked CLR version with mscoree** state may be seen where the hosted CLR is not being used and, thus, it has not yet been initialized. The hosted CLR is initialized the first time a  DDL statement (such as [CREATE ASSEMBLY &#40;Transact-SQL&#41;](../../../t-sql/statements/create-assembly-transact-sql.md)) or a managed database object is executed.  
  
 The **CLR is initialized** state indicates that the hosted CLR was successfully initialized. Note that this does not indicate whether execution of user CLR code was enabled. If the execution of user CLR code is first enabled and then disabled using the [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] [sp_configure](../../../relational-databases/reference/system-stored-procedures/sp-configure-transact-sql.md) stored procedure, the state value will still be **CLR is initialized**.  
  
 The **CLR initialization permanently failed** state indicates that hosted CLR initialization failed. Memory pressure is a likely cause, or it could also be the result of a failure in the hosting handshake between [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and the CLR. Error message 6512 or 6513 will be thrown in such a case.  
  
 The **CLR is stopped state** is only seen when [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is in the process of shutting down.  
  
## Remarks  
 The properties and values of this view might change in a future version of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] due to enhancements of the CLR integration functionality.  
  
## Permissions  
 On [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] requires VIEW SERVER STATE permission on the server.  
  
 On [!INCLUDE[ssSDS](../../../analysis-services/multidimensional-models/includes/sssds-md.md)] Premium Tiers requires the VIEW DATABASE STATE permission in the database. On [!INCLUDE[ssSDS](../../../analysis-services/multidimensional-models/includes/sssds-md.md)] Standard and Basic Tiers requires the [!INCLUDE[ssSDS](../../../analysis-services/multidimensional-models/includes/sssds-md.md)] admin account.  
  
## Examples  
 The following example retrieves information about the hosted CLR:  
  
```  
SELECT name, value   
FROM sys.dm_clr_properties;  
```  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Common Language Runtime Related Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/common-language-runtime-related-dynamic-management-views-transact-sql.md)  
  
  