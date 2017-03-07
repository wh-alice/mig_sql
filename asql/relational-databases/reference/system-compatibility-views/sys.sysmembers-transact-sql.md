---
title: "sys.sysmembers (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.sysmembers_TSQL"
  - "sysmembers"
  - "sys.sysmembers"
  - "sysmembers_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysmembers system table"
  - "sys.sysmembers compatibility view"
ms.assetid: ceb18341-f985-4849-ac83-21d67ab7b980
caps.latest.revision: 38
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sysmembers (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains a row for each member of a database role.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssnoteCompView](../../../relational-databases/reference/system-compatibility-views/includes/ssnotecompview-md.md)]  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**memberuid**|**smallint**|User ID for the role member. Overflows or returns NULL if the number of users and roles exceeds 32,767.|  
|**groupuid**|**smallint**|User ID for the role. Overflows or returns NULL if the number of users and roles exceeds 32,767.|  
  
## See Also  
 [Mapping System Tables to System Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/mapping-system-tables-to-system-views-transact-sql.md)   
 [Compatibility Views &#40;Transact-SQL&#41;](../Topic/Compatibility%20Views%20\(Transact-SQL\).md)  
  
  