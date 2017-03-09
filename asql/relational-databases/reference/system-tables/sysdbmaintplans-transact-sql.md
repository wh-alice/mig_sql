---
title: "sysdbmaintplans (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sysdbmaintplans_TSQL"
  - "sysdbmaintplans"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysdbmaintplans system table"
ms.assetid: 0363296a-3082-48a9-9eb5-a1020b2f541a
caps.latest.revision: 29
ms.author: "jhubbard"
manager: "jhubbard"
---
# sysdbmaintplans (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  This table is included in [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to preserve existing information for instances upgraded from a previous version of [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] does not change the contents of this table. This table is stored in the **msdb** database.  
  
 [!INCLUDE[ssNoteDepNextAvoid](../../../analysis-services/multidimensional-models-olap-logical-dimension-objects/includes/ssnotedepnextavoid-md.md)]  

  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**plan_id**|**uniqueidentifier**|Database maintenance plan ID.|  
|**plan_name**|**sysname**|Database maintenance plan name.|  
|**date_created**|**datetime**|Date the database maintenance plan was created.|  
|**owner**|**sysname**|Owner of the database maintenance plan.|  
|**max_history_rows**|**int**|Maximum number of rows allotted for recording the history of the database maintenance plan in the system table.|  
|**remote_history_server**|**sysname**|Name of the remote server to which the history report could be written.|  
|**max_remote_history_rows**|**int**|Maximum number of rows allotted in the system table on a remote server to which the history report could be written.|  
|**user_defined_1**|**int**|Default is NULL.|  
|**user_defined_2**|**nvarchar(100)**|Default is NULL.|  
|**user_defined_3**|**datetime**|Default is NULL.|  
|**user_defined_4**|**uniqueidentifier**|Default is NULL.|  
|**log_shipping**|**bit**|Log shipping status:<br /><br /> **0** = Disabled **1** = Enabled|  
  
  