---
title: "sp_copymergesnapshot (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
f1_keywords: 
  - "sp_copymergesnapshot"
  - "sp_copymergesnapshot_TSQL"
helpviewer_keywords: 
  - "sp_copymergesnapshot"
ms.assetid: eaecd6e0-8486-4e5d-ace7-8ae75768c0a8
caps.latest.revision: 26
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_copymergesnapshot (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Copies the snapshot folder of the specified publication to the folder listed in the **@destination_folde***r*. This stored procedure is executed at the Publisher on the publication database.  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_copymergesnapshot [ @publication = ] 'publication', [ @destination_folder = ] 'destination_folder'  
```  
  
## Arguments  
 [ **@publication=**] **'***publication***'**  
 Is the name of the publication whose snapshot contents are to be copied. *publication* is **sysname**, with no default.  
  
 [ **@destination_folder=**] **'***destination_folder***'**  
 Is the name of the folder where the contents of the publication snapshot is to be copied. *destination_folder*is **nvarchar(255)**, with no default. The *destination_folder* can be an alternate location such as on another server, on a network drive, or on removable media (such as CD-ROMs or removable disks).  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_copymergesnapshot** is used in merge replication. Subscribers running [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] version 7.0 and earlier cannot use the alternate snapshot location.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role or **db_owner** fixed database role can execute **sp_copymergesnapshot**.  
  
## See Also  
 [Alternate Snapshot Folder Locations](../../../relational-databases/replication/alternate-snapshot-folder-locations.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  