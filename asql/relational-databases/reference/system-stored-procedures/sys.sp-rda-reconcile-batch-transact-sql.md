---
title: "sys.sp_rda_reconcile_batch (Transact-SQL) | Microsoft Docs"
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
  - "sys.sp_rda_reconcile_batch"
  - "sys.sp_rda_reconcile_batch_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.sp_rda_reconcile_batch stored procedure"
ms.assetid: 6d21eac3-7b6c-4fe0-8bc4-bf503f3948a6
caps.latest.revision: 12
ms.author: "douglasl"
manager: "jhubbard"
---
# sys.sp_rda_reconcile_batch (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  Reconciles the batch ID stored in the Stretch-enabled SQL Server table with the batch ID stored in the remote Azure table.  
  
 Typically you only have to run **sp_rda_reconcile_batch** if you have manually deleted the most recently migrated data from the remote table. When you manually delete remote data that includes the most recent batch, the batch IDs are out of sync and migration stops.  
 
 To delete data that has already been migrated to Azure, see the Remarks on this page.
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
   
## Syntax  
  
```  
  
sp_rda_reconcile_batch @objname = '@objname'  
  
```  
  
## Arguments  
 @objname = '*@objname*'  
 The name of the Stretch-enabled SQL Server table.  
  
## Permissions  
 Requires db_owner permissions.  
  
## Remarks  
 If you want to delete data that has already been migrated to Azure, do the following things.  
  
1.  Pause data migration. For more info, see [Pause and resume data migration &#40;Stretch Database&#41;](../../../sql-server/stretch-database/pause-and-resume-data-migration-stretch-database.md).  
  
2.  Delete the data from the SQL Server staging table by running a DELETE command with the STAGE_ONLY hint. For more info, see [Make administrative updates and deletes](../../../sql-server/stretch-database/manage-and-troubleshoot-stretch-database.md#adminHints).
  
3.  Delete the  same data from the remote Azure table by running a DELETE command with the REMOTE_ONLY hint.  
  
4.  Run **sp_rda_reconcile_batch**.  
  
5.  Resume data migration. For more info, see [Pause and resume data migration &#40;Stretch Database&#41;](../../../sql-server/stretch-database/pause-and-resume-data-migration-stretch-database.md).  
  
## Example  
 To reconcile the batch IDs, run the following statement.  
  
```tsql  
EXEC sp_rda_reconcile_batch @objname = N'StretchEnabledTableName';  
```  
  
  