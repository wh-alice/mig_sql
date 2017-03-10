---
title: "sys.sp_rda_reconcile_columns (Transact-SQL) | Microsoft Docs"
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
  - "sys.sp_rda_reconcile_columns"
  - "sys.sp_rda_reconcile_columns_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.sp_rda_reconcile_columns stored procedure"
ms.assetid: 60d9cc4e-1828-450b-9d88-5b8485800d73
caps.latest.revision: 11
ms.author: "douglasl"
manager: "jhubbard"
---
# sys.sp_rda_reconcile_columns (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  Reconciles the columns in the remote Azure table to the columns in the the Stretch-enabled SQL Server table.  
    
  **sp_rda_reconcile_columns** adds columns to the remote table that exist in the Stretch-enabled SQL Server table but not in the remote table. These columns may be columns that you accidentally deleted from the remote table. However, **sp_rda_reconcile_columns** does not delete columns from the remote table that exist in the remote table but not in the SQL Server table.
  
  > [!IMPORTANT]
  > When **sp_rda_reconcile_columns** recreates columns that you accidentally deleted from the remote table, it does not restore the data that was previously in the deleted columns.
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
   
## Syntax  
  
```  
  
sp_rda_reconcile_columns @objname = '@objname'  
  
```  
  
## Arguments  
 @objname = '*@objname*'  
 The name of the Stretch-enabled SQL Server table.  
  
## Return Code Values  
 0 (success) or >0 (failure)  
  
## Permissions  
 Requires db_owner permissions.  
   
## Remarks  
 If there are columns in the remote Azure table that no longer exist in the Stretch-enabled SQL Server table, these extra columns do not prevent Stretch Database from operating normally. You can optionally remove the extra columns manually.  
  
## Example  
 To reconcile the the columns in the remote Azure table, run the following statement.  
  
```tsql  
EXEC sp_rda_reconcile_columns @objname = N'StretchEnabledTableName';  
```  
  
  