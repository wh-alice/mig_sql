---
title: "sys.dm_xe_packages (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-09"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "dm_xe_packages_TSQL"
  - "sys.dm_xe_packages_TSQL"
  - "dm_xe_packages"
  - "sys.dm_xe_packages"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_xe_packages dynamic management view"
  - "extended events [SQL Server], views"
ms.assetid: 2e5ecbe9-3ea8-45e6-a161-e31671a03e1d
caps.latest.revision: 24
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_xe_packages (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Lists all the packages registered with the extended events engine.  
  
 
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|name|**nvarchar(60)**|The name of package. The description is exposed from the package itself. Is not nullable.|  
|guid|**uniqueidentifier**|The GUID that identifies the package. Is not nullable.|  
|description|**nvarchar(256)**|The package description. descriptionis set by the package author and is not nullable.|  
|capabilities|**int**|Bitmap describing the capabilities of this package. Is nullable.|  
|capabilities_desc|**nvarchar(256)**|A list of all the capabilities possible for this package. Is nullable.|  
|module_guid|**uniqueidentifier**|The GUID of the module that exposes this package. Is not nullable.|  
|module_address|**varbinary(8)**|The base address where the module containing the package is loaded. A single module may expose several packages. Is not nullable.|  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## Remarks  
 The packages registered with the extended events engine expose events, the actions that can be taken at the time of event firing, and targets for both synchronous and asynchronous processing of event data.  
  
 These packages can be dynamically loaded into a process address space. At the time the package is loaded, it registers all the objects it exposes with the extended events engine.  
  
## Relationship Cardinalities  
  
||||  
|-|-|-|  
|From|To|Relationship|  
|sys.dm_xe_packages.module_address|sys.dm_os_loaded_modules.base_address|Many to one|  
  
## See also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)  
  
  