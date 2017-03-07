---
title: "sys.fn_servershareddrives (Transact-SQL) | Microsoft Docs"
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
  - "fn_servershareddrives"
  - "fn_servershareddrives_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "fn_servershareddrives function"
  - "shared drives [SQL Server]"
  - "names [SQL Server], shared drives"
  - "sys.fn_serversharedrives function"
ms.assetid: ff01eff7-8cb6-460c-ba7a-6a52bda6d471
caps.latest.revision: 39
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.fn_servershareddrives (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the names of shared drives used by the clustered server.  
  
> [!IMPORTANT]  
>  This  [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] system function is included for backward compatibility. We recommend that you use [sys.dm_io_cluster_valid_path_names &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-io-cluster-valid-path-names-transact-sql.md) instead.  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
fn_servershareddrives()  
```  
  
## Tables Returned  
 If the current server is a clustered server, **fn_servershareddrives** returns the drive name of the shared drives.  
  
 If the current server instance is not a clustered server, **fn_servershareddrives** returns an empty rowset.  
  
## Remarks  
 `fn_servershareddrives` returns a list of shared drives used by this clustered server. These shared drives belong to the same cluster group as the [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] resource. Further, the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] resource is dependent on these drives.  
  
 This function is helpful in identifying drives available to users.  
  
## Permissions  
 The user must have VIEW SERVER STATE permission for the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] instance.  
  
## Examples  
 The following example uses `fn_servershareddrives` to query on a clustered server instance:  
  
```  
SELECT * FROM fn_servershareddrives();  
```  
  
 [!INCLUDE[ssResult](../../../relational-databases/includes/ssresult-md.md)]  
  
 DriveName  
  
 -------\-  
  
 m  
  
 n  
  
## See Also  
 [sys.dm_io_cluster_valid_path_names &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-io-cluster-valid-path-names-transact-sql.md)   
 [sys.dm_io_cluster_shared_drives &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-io-cluster-shared-drives-transact-sql.md)   
 [sys.fn_virtualservernodes &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-functions/sys.fn-virtualservernodes-transact-sql.md)  
  
  