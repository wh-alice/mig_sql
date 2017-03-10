---
title: "sysdbmaintplan_databases (Transact-SQL) | Microsoft Docs"
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
  - "sysdbmaintplan_databases"
  - "sysdbmaintplan_databases_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysdbmaintplan_databases system table"
ms.assetid: f8413a44-8fcc-4899-84f2-b4afe0f8ec08
caps.latest.revision: 21
ms.author: "jhubbard"
manager: "jhubbard"
---
# sysdbmaintplan_databases (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  This table is included to preserve existing information for instances upgraded from a previous version of [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. [!INCLUDE[ssVersion2005](../../../analysis-services/data-mining/includes/ssversion2005-md.md)] and later versions do not change the contents of this table. This table is stored in the **msdb** database.  
  
 [!INCLUDE[ssNoteDepNextAvoid](../../../analysis-services/multidimensional-models-olap-logical-dimension-objects/includes/ssnotedepnextavoid-md.md)]  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**plan_id**|**Uniqueidentifier**|Maintenance plan ID.|  
|**database_name**|**sysname**|Name of the database associated with the database maintenance plan.|  
  
  