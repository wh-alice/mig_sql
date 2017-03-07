---
title: "sys.sp_rda_set_rpo_duration (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-stretch"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.sp_rda_set_rpo_duration"
  - "sys.sp_rda_set_rpo_duration_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.sp_rda_set_rpo_duration stored procedure"
ms.assetid: 95c80c5b-9252-4612-9ea7-544c48834fd2
caps.latest.revision: 16
ms.author: "douglasl"
manager: "jhubbard"
---
# sys.sp_rda_set_rpo_duration (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  Sets the number of hours of migrated data that SQL Server retains in a staging table to help ensure a full restore of the remote Azure database, if a point in time restore is necessary.    
    
 For more info, see [Stretch Database reduces the risk of data loss for your Azure data by retaining migrated rows temporarily](../../sql-server/install/backup-stretch-enabled-databases-stretch-database.md#stretchRPO).  
   
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)    
     
## Syntax    
    
```    
    
sp_rda_set_rpo_duration [ @duration_hrs = ] duration_hrs    
    
```    
    
## Arguments    
 [ @duration_hrs = ] *duration_hrs*    
 Is the number of hours (a non-null integer value) of migrated data that you want SQL Server to retain for the current Stretch-enabled database. The default value and the minimum value is 8 hours.    
 
 > [!NOTE]
 > Higher values require more storage space on SQL Server.
    
## Permissions    
 Requires db_owner permissions.    
    
## Remarks    
 Get the current value by running [sys.sp_rda_get_rpo_duration &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-rda-get-rpo-duration-transact-sql.md).    
    
## See Also    
 [sys.sp_rda_get_rpo_duration &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-rda-get-rpo-duration-transact-sql.md)     
 [Restore Stretch-enabled databases (Stretch Database)](../../sql-server/install/restore-stretch-enabled-databases-stretch-database.md)     
 [Stretch Database](../../sql-server/install/stretch-database.md)    
    
  