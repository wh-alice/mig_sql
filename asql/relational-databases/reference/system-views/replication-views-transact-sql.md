---
title: "Replication Views (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "distribution databases [SQL Server replication], system views"
  - "metadata [SQL Server], views"
  - "views [SQL Server], replication"
  - "replication views [SQL Server]"
  - "publications [SQL Server replication], system views"
  - "articles [SQL Server replication], system views"
  - "replication metadata [SQL Server]"
  - "subscriptions [SQL Server replication], system views"
  - "system views [SQL Server], replication"
ms.assetid: 93e5056d-0d93-4a48-ba33-72762eb995d8
caps.latest.revision: 14
ms.author: "rickbyh"
manager: "jhubbard"
---
# Replication Views (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  These views contain information that is used by replication in [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]. The views enable easier access to data in [replication system tables](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md). Views are created in a user database when that database is enabled as a publication or subscription database. All replication objects are removed from user databases when the database is removed from a replication topology. The preferred method for accessing replication metadata is by using [Replication Stored Procedures](../../../relational-databases/reference/system-stored-procedures/replication-stored-procedures-transact-sql.md).  
  
> [!IMPORTANT]  
>  System views should not be altered directly by any user.  
  
## Replication Views  
 The following is a list of the system views used by replication, grouped by database.  
  
### Replication Views in the msdb Database  
  
|||  
|-|-|  
|[MSdatatype_mappings &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/msdatatype-mappings-transact-sql.md)|[sysdatatypemappings &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/sysdatatypemappings-transact-sql.md)|  
  
### Replication Views in the Distribution Database  
  
|||  
|-|-|  
|[IHextendedArticleView &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/ihextendedarticleview-transact-sql.md)|[sysarticles &#40;System View&#41; &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/sysarticles-system-view-transact-sql.md)|  
|[IHextendedSubscriptionView &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/ihextendedsubscriptionview-transact-sql.md)|[sysextendedarticlesview &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/sysextendedarticlesview-transact-sql.md)|  
|[IHsyscolumns &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/ihsyscolumns-transact-sql.md)|[syspublications &#40;System View&#41; &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/syspublications-system-view-transact-sql.md)|  
|[MSdistribution_status &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/msdistribution-status-transact-sql.md)|[syssubscriptions &#40;System View&#41; &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/syssubscriptions-system-view-transact-sql.md)|  
|[sysarticlecolumns &#40;System View&#41; &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/sysarticlecolumns-system-view-transact-sql.md)||  
  
### Replication Views in the Publication Database  
  
|||  
|-|-|  
|[sysmergeextendedarticlesview &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/sysmergeextendedarticlesview-transact-sql.md)|[sysmergepartitioninfoview &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/sysmergepartitioninfoview-transact-sql.md)|  
|[systranschemas &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/systranschemas-transact-sql.md)||  
  
### Replication Views in the Subscription Database  
  
|||  
|-|-|  
|[sysmergeextendedarticlesview &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/sysmergeextendedarticlesview-transact-sql.md)|[sysmergepartitioninfoview &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/sysmergepartitioninfoview-transact-sql.md)|  
|[systranschemas &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/systranschemas-transact-sql.md)||  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)  
  
  