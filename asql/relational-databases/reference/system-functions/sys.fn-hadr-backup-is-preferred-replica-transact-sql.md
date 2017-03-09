---
title: "sys.fn_hadr_backup_is_preferred_replica  (Transact-SQL) | Microsoft Docs"
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
  - "sys.fn_hadr_backup_is_preferred_replica_TSQL"
  - "sys.fn_hadr_backup_is_preferred_replica"
  - "fn_hadr_backup_is_preferred_replica_TSQL"
  - "fn_hadr_backup_is_preferred_replica"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "backup on secondary replicas"
  - "active secondary replicas [SQL Server], backup on secondary replicas"
  - "sys.fn_hadr_backup_is_preferred_replica function"
ms.assetid: 61b9be77-e2f6-4da1-b2ae-a62cbe226145
caps.latest.revision: 18
ms.author: "mikeray"
manager: "jhubbard"
---
# sys.fn_hadr_backup_is_preferred_replica  (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Used to determine if the current replica is the preferred backup replica.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sys.fn_hadr_backup_is_preferred_replica ( 'dbname' )  
```  
  
## Arguments  
 '*dbname*'  
 Is the name of the database to be backed up. *dbname* is type sysname.  
  
## Returns  
 Returns 1 if the database on the current instance is on the preferred replica. Otherwise returns 0.  
  
## Remarks  
 Use this function in a backup script to determine if the current database is on the replica that is preferred for backups. You can run a script on every availability replica. Each of these jobs looks at the same data to determine which job should run, so only one of the scheduled jobs actually proceeds to the backup stage. Sample code could be similar to the following.  
  
```  
If sys.fn_hadr_backup_is_preferred_replica( @dbname ) <> 1   
BEGIN  
-- If this is not the preferred replica, exit (probably without error).  
END  
-- If this is the preferred replica, continue to do the backup.  
  
```  
  
## Examples  
  
### A. Using sys.fn_hadr_backup_is_preferred_replica  
 The following example returns 1 if the current database is the preferred backup replica.  
  
```  
SELECT sys.fn_hadr_backup_is_preferred_replica ('TestDB');  
GO  
```  
  
##  <a name="RelatedTasks"></a> Related Tasks  
  
-   [Configure Backup on Availability Replicas &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/configure-backup-on-availability-replicas-sql-server.md)  
  
## See Also  
 [AlwaysOn Availability Groups Functions &#40;Transact-SQL&#41;](../Topic/AlwaysOn%20Availability%20Groups%20Functions%20\(Transact-SQL\).md)   
 [AlwaysOn Availability Groups &#40;SQL Server&#41;](../Topic/AlwaysOn%20Availability%20Groups%20\(SQL%20Server\).md)   
 [CREATE AVAILABILITY GROUP &#40;Transact-SQL&#41;](../../../t-sql/statements/create-availability-group-transact-sql.md)   
 [ALTER AVAILABILITY GROUP &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-availability-group-transact-sql.md)   
 [Active Secondaries: Backup on Secondary Replicas &#40;AlwaysOn Availability Groups&#41;](../Topic/Active%20Secondaries:%20Backup%20on%20Secondary%20Replicas%20\(AlwaysOn%20Availability%20Groups\).md)   
 [AlwaysOn Availability Groups Catalog Views &#40;Transact-SQL&#41;](../Topic/AlwaysOn%20Availability%20Groups%20Catalog%20Views%20\(Transact-SQL\).md)  
  
  