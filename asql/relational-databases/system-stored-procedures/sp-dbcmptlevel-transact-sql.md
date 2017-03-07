---
title: "sp_dbcmptlevel (Transact-SQL) | Microsoft Docs"
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
  - "sp_dbcmptlevel"
  - "sp_dbcmptlevel_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_dbcmptlevel"
ms.assetid: 508c686d-2bd4-41ba-8602-48ebca266659
caps.latest.revision: 110
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_dbcmptlevel (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Sets certain database behaviors to be compatible with the specified version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureDontUse](../../database-engine/availability-groups/windows/includes/ssnotedepfuturedontuse-md.md)] Use [ALTER DATABASE Compatibility Level](../Topic/ALTER%20DATABASE%20Compatibility%20Level%20\(Transact-SQL\).md)instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_dbcmptlevel [ [ @dbname = ] name ]   
    [ , [ @new_cmptlevel = ] version ]  
```  
  
## Arguments  
 [ **@dbname=** ] *name*  
 Is the name of the database for which the compatibility level is to be changed. Database names must conform to the rules for identifiers. *name* is **sysname**, with a default of NULL.  
  
 [ **@new_cmptlevel=** ] *version*  
 Is the version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] with which the database is to be made compatible. *version* is **tinyint**, with a default of NULL. The value must be one of the following:  
  
 **90** = [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)]  
  
 **100** = [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)]  
  
 **110** = [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)]  
  
 **120** = [!INCLUDE[ssSQL14](../../analysis-services/includes/sssql14-md.md)]  
  
 **130** = [!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)]  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 If no parameters are specified or if the *name* parameter is not specified, **sp_dbcmptlevel** returns an error.  
  
 If *name* is specified without *version*, the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] returns a message displaying the current compatibility level of the specified database.  
  
## Remarks  
 For a description of compatibilities levels, see [ALTER DATABASE Compatibility Level &#40;Transact-SQL&#41;](../Topic/ALTER%20DATABASE%20Compatibility%20Level%20\(Transact-SQL\).md).  
  
## Permissions  
 Only the database owner, members of the **sysadmin** fixed server role, and the **db_owner** fixed database role (if you are changing the current database) can execute this procedure.  
  
## See Also  
 [Database Engine Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/database-engine-stored-procedures-transact-sql.md)   
 [ALTER DATABASE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql.md)   
 [Reserved Keywords &#40;Transact-SQL&#41;](../Topic/Reserved%20Keywords%20\(Transact-SQL\).md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  