---
title: "sys.sysusers (Transact-SQL) | Microsoft Docs"
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
  - "sys.sysusers"
  - "sys.sysusers_TSQL"
  - "sysusers_TSQL"
  - "sysusers"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysusers system table"
  - "sys.sysusers compatibility view"
ms.assetid: 5f0e6a8d-c983-44f6-97e9-aab5bff67d18
caps.latest.revision: 36
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sysusers (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Contains one row for each [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] Windows user, Windows group, [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] user, or [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] role in the database.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssnoteCompView](../../../relational-databases/reference/system-compatibility-views/includes/ssnotecompview-md.md)]  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**uid**|**smallint**|User ID, unique in this database.<br /><br /> 1 = Database owner<br /><br /> Overflows or returns NULL if the number of users and roles exceeds 32,767.|  
|**status**|**smallint**|[!INCLUDE[ssInternalOnly](../../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**name**|**sysname**|User name or group name, unique in this database.|  
|**sid**|**varbinary(85)**|Security identifier for this entry.|  
|**roles**|**varbinary(2048)**|[!INCLUDE[ssInternalOnly](../../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**createdate**|**datetime**|Date the account was added.|  
|**updatedate**|**datetime**|Date the account was last changed.|  
|**altuid**|**smallint**|[!INCLUDE[ssInternalOnly](../../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]<br /><br /> Overflows or returns NULL if the number of users and roles exceeds 32,767.|  
|**password**|**varbinary(256)**|[!INCLUDE[ssInternalOnly](../../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**gid**|**smallint**|Group ID to which this user belongs. If **uid** is the same as **gid**, this entry defines a group. Overflows or returns NULL if the combined number of groups and users exceeds 32,767.|  
|**environ**|**varchar(255)**|Reserved.|  
|**hasdbaccess**|**int**|1 = Account has database access.|  
|**islogin**|**int**|1 = Account is a Windows group, Windows user, or [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] user with a login account.|  
|**isntname**|**int**|1 = Account is a Windows group or Windows user.|  
|**isntgroup**|**int**|1 = Account is a Windows group.|  
|**isntuser**|**int**|1 = Account is a Windows user.|  
|**issqluser**|**int**|1 = Account is a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] user.|  
|**isaliased**|**int**|1 = Account is aliased to another user.|  
|**issqlrole**|**int**|1 = Account is a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] role.|  
|**isapprole**|**int**|1 = Account is an application role.|  
  
## See Also  
 [Mapping System Tables to System Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/mapping-system-tables-to-system-views-transact-sql.md)   
 [Compatibility Views &#40;Transact-SQL&#41;](../Topic/Compatibility%20Views%20\(Transact-SQL\).md)  
  
  