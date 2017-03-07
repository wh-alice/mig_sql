---
title: "sys.syslogins (Transact-SQL) | Microsoft Docs"
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
  - "syslogins_TSQL"
  - "syslogins"
  - "sys.syslogins"
  - "sys.syslogins_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.syslogins compatibility view"
  - "syslogins system table"
ms.assetid: 4cb34f17-a4bb-469f-a218-71f074e6308f
caps.latest.revision: 41
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.syslogins (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains one row for each login account.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssnoteCompView](../../relational-databases/system-compatibility-views/includes/ssnotecompview-md.md)]  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**sid**|**varbinary(85)**|Security identifier.|  
|**status**|**smallint**|[!INCLUDE[ssInternalOnly](../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**createdate**|**datetime**|Date the login was added.|  
|**updatedate**|**datetime**|Date the login was updated.|  
|**accdate**|**datetime**|[!INCLUDE[ssInternalOnly](../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**totcpu**|**int**|[!INCLUDE[ssInternalOnly](../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**totio**|**int**|[!INCLUDE[ssInternalOnly](../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**spacelimit**|**int**|[!INCLUDE[ssInternalOnly](../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**timelimit**|**int**|[!INCLUDE[ssInternalOnly](../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**resultlimit**|**int**|[!INCLUDE[ssInternalOnly](../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**name**|**sysname**|Login name of the user.|  
|**dbname**|**sysname**|Name of the default database of the user when a connection is established.|  
|**password**|**nvarchar(128)**|Returns NULL.|  
|**language**|**sysname**|Default language of the user.|  
|**denylogin**|**int**|1 = Login is a [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows user or group and has been denied access.|  
|**hasaccess**|**int**|1 = Login has been granted access to the server.|  
|**isntname**|**int**|1 = Login is a Windows user or group.<br /><br /> 0 = Login is a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login.|  
|**isntgroup**|**int**|1 = Login is a Windows group.|  
|**isntuser**|**int**|1 = Login is a Windows user.|  
|**sysadmin**|**int**|1 = Login is a member of the **sysadmin** server role.|  
|**securityadmin**|**int**|1 = Login is a member of the **securityadmin** server role.|  
|**serveradmin**|**int**|1 = Login is a member of the **serveradmin** fixed server role.|  
|**setupadmin**|**int**|1 = Login is a member of the **setupadmin** fixed server role.|  
|**processadmin**|**int**|1 = Login is a member of the **processadmin** fixed server role.|  
|**diskadmin**|**int**|1 = Login is a member of the **diskadmin** fixed server role.|  
|**dbcreator**|**int**|1 = Login is a member of the **dbcreator** fixed server role.|  
|**bulkadmin**|**int**|1 = Login is a member of the **bulkadmin** fixed server role.|  
|**loginname**|**nvarchar(128)**|Login name of the user. Provided for backward compatibility.|  
  
## See Also  
 [Mapping System Tables to System Views &#40;Transact-SQL&#41;](../../relational-databases/system-tables/mapping-system-tables-to-system-views-transact-sql.md)   
 [Compatibility Views &#40;Transact-SQL&#41;](../Topic/Compatibility%20Views%20\(Transact-SQL\).md)  
  
  