---
title: "sp_addtabletocontents (Transact-SQL) | Microsoft Docs"
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
  - "sp_addtabletocontents_TSQL"
  - "sp_addtabletocontents"
helpviewer_keywords: 
  - "sp_addtabletocontents"
ms.assetid: 2ea27001-74f4-463e-bf1b-b6b5a86b9219
caps.latest.revision: 23
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_addtabletocontents (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Inserts references into the merge tracking tables for any rows in a source table that are not currently included in the tracking tables. Use this option if you have bulk-loaded a large amount of data using **bcp**, which will not fire merge tracking triggers. This stored procedure is executed at the Publisher on the publication database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_addtabletocontents [ @table_name = ] 'table_name'  
    [ , [ @owner_name = ] 'owner_name' ]  
    [ , [ @filter_clause = ] 'filter_clause' ]  
```  
  
## Arguments  
 [ **@table_name=**] **'***table_name***'**  
 Is the name of the table. *table_name* is **sysname**, with no default.  
  
 [ **@owner_name=**] **'***owner_name***'**  
 Is the name of the owner of the table. *owner_name* is **sysname**, with a default of NULL.  
  
 [ **@filter_clause=** ] **'***filter_clause***'**  
 Specifies a filter clause that controls which rows of the newly-loaded data should be added to the merge tracking tables. *filter_clause* is **nvarchar(4000)**, with a default value of NULL. If *filter_clause* is **null**, all bulk loaded rows are added.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_addtabletocontents** is used only in merge replication.  
  
 The rows in the *table_name* are referred to by their **rowguidcol** and the references are added to the merge tracking tables. **sp_addtabletocontents** should be used after bulk copying data into a table that is published using merge replication. The stored procedure initiates tracking of the rows that were copied and ensures that the new rows will be included in the next synchronization.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role or **db_owner** fixed database role can execute **sp_addtabletocontents**.  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  