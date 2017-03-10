---
title: "sys.sysoledbusers (Transact-SQL) | Microsoft Docs"
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
  - "sys.sysoledbusers"
  - "sys.sysoledbusers_TSQL"
  - "sysoledbusers"
  - "sysoledbusers_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysoledbusers system table"
  - "sys.sysoledbusers compatibility view"
ms.assetid: fe924c17-9cad-4b2b-8124-1e0fd82931e3
caps.latest.revision: 34
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sysoledbusers (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

    
> [!IMPORTANT]  
>  This [!INCLUDE[ssVersion2000](../../../analysis-services/multidimensional-models/includes/ssversion2000-md.md)] system table is included in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] as a view for backward compatibility only. We recommend that you use [catalog views](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md) instead.  
  
 Contains one row for each user and password mapping for the specified linked server. **sysoledbusers** is stored in the **master** database.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**rmtsrvid**|**smallint**|Security identification number (SID) of the server.|  
|**rmtloginame**|**nvarchar(**128**)**|Name of the remote login that **loginsid** maps to for linked **rmtservid**.|  
|**rmtpassword**|**nvarchar(**128**)**|Returns NULL.|  
|**loginsid**|**varbinary(**85**)**|SID of the local login to be mapped.|  
|**status**|**smallint**|If 1, the mapping should use the credentials of the user.|  
|**changedate**|**datetime**|Date the mapping information was last changed.|  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [Compatibility Views &#40;Transact-SQL&#41;](../Topic/Compatibility%20Views%20\(Transact-SQL\).md)  
  
  