---
title: "sys.dm_os_child_instances (Transact-SQL) | Microsoft Docs"
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
  - "sys.dm_os_child_instances"
  - "sys.dm_os_child_instances_TSQL"
  - "dm_os_child_instances"
  - "dm_os_child_instances_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "server state information [SQL Server]"
  - "sys.dm_os_child_instances dynamic management view"
  - "monitoring server health"
ms.assetid: 1bef3074-0ccc-48fa-8f3d-14f3d99df86b
caps.latest.revision: 37
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_os_child_instances (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Returns a row for each user instance that has been created from the parent server instance.  
  
> **IMPORTANT!** [!INCLUDE[ssNoteDepFutureAvoid](../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)]  
  
 The information returned from **sys.dm_os_child_instances** can be used to determine the state of each User Instance (heart_beat) and to obtain the pipe name (instance_pipe_name) that can be used to create a connection to the User Instance using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] or SQLCmd. You can only connect to a User Instance after it has been started by an external process, such as a client application. SQL management tools cannot start a User Instance.  
  
> **NOTE:** User Instances are a feature of [!INCLUDE[ssExpressEd11](../../relational-databases/system-dynamic-management-views/includes/ssexpressed11-md.md)] only.  
  
> **NOTE** To call this from [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_os_child_instances**.  
  
|Column|Data type|Description|  
|------------|---------------|-----------------|  
|**owning_principal_name**|**nvarchar(256)**|The name of the user that this user instance was created for.|  
|owning_principal_sid|nvarchar(256)|SID (Security-Identifier) of the principal who owns this user instance. This matches Windows SID.|  
|owning_principal_sid_binary|varbinary(85)|Binary version of the SID for the user who owns the user Instance|  
|**instance_name**|**nvarchar(128)**|The name of this user instance.|  
|**instance_pipe_name**|**nvarchar(260)**|When a user instance is created, a named pipe is created for applications to connect to. This name can be used in a connect string to connect to this user instance.|  
|**os_process_id**|**Int**|The process number of the Windows process for this user instance.|  
|**os_process_creation_date**|**Datetime**|The date and time when this user instance process was last started.|  
|**heart_beat**|**nvarchar(5)**|Current state of this user instance; either ALIVE or DEAD.|  
|**pdw_node_id**|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## Remarks  
 For more information about dynamic management view, see [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md) in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Books Online.  
  
## See Also  
 [User Instances for Non-Administrators](http://msdn.microsoft.com/en-us/85385aae-10fb-4f8b-9eeb-cce2ee7da019)  
  
  

