---
title: "sp_addsynctriggers (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
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
  - "sp_addsynctriggers_TSQL"
  - "sp_addsynctriggers"
helpviewer_keywords: 
  - "sp_addsynctriggers"
ms.assetid: e37d0c3b-19bf-4719-9535-96ba361372b3
caps.latest.revision: 29
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_addsynctriggers (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Creates triggers at the Subscriber used with all types of updatable subscriptions (Immediate, Queued, and Immediate Updating with Queued Updating as Failover). This stored procedure is executed at the Subscriber on the subscription database.  
  
> [!IMPORTANT]  
>  The [sp_script_synctran_commands](../../../relational-databases/reference/system-stored-procedures/sp-script-synctran-commands-transact-sql.md) procedure should be used instead of **sp_addsynctrigger**. [sp_script_synctran_commands](../../../relational-databases/reference/system-stored-procedures/sp-script-synctran-commands-transact-sql.md) generates a script that contains the **sp_addsynctrigger** calls.  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_addsynctriggers [ @sub_table = ] 'sub_table'  
        , [ @sub_table_owner = ] 'sub_table_owner'  
        , [ @publisher = ] 'publisher'  
        , [ @publisher_db = ] 'publisher_db'  
        , [ @publication = ] 'publication'   
        , [ @ins_proc = ] 'ins_proc'   
        , [ @upd_proc = ] 'upd_proc'   
        , [ @del_proc = ] 'del_proc'   
        , [ @cftproc = ] 'cftproc'  
        , [ @proc_owner = ] 'proc_owner'  
    [ , [ @identity_col = ] 'identity_col' ]  
    [ , [ @ts_col = ] 'timestamp_col' ]  
    [ , [ @filter_clause = ] 'filter_clause' ]   
        , [ @primary_key_bitmap = ] 'primary_key_bitmap'  
    [ , [ @identity_support = ] identity_support ]  
    [ , [ @independent_agent = ] independent_agent ]  
        , [ @distributor = ] 'distributor'   
    [ , [ @pubversion = ] pubversion  
```  
  
## Arguments  
 [ **@sub_table=**] **'***sub_table***'**  
 Is the name of the Subscriber table. *sub_table* is **sysname**, with no default.  
  
 [ **@sub_table_owner=**] **'***sub_table_owner***'**  
 Is the name of the owner of the Subscriber table. *sub_table_owner* is **sysname**, with no default.  
  
 [ **@publisher=**] **'***publisher***'**  
 Is the name of the Publisher server. *publisher* is **sysname**, with no default.  
  
 [ **@publisher_db=**] **'***publisher_db***'**  
 Is the name of the Publisher database. *publisher_db* is **sysname**, with no default. If NULL, the current database is used.  
  
 [ **@publication=**] **'***publication***'**  
 Is the name of the publication. *Publication* is **sysname**, with no default.  
  
 [ **@ins_proc=**] **'***ins_proc***'**  
 Is the name of the stored procedure that supports synchronous transaction inserts at the Publisher. *ins_proc* is **sysname**, with no default.  
  
 [ **@upd_proc=**] **'***upd_proc***'**  
 Is the name of the stored procedure that supports synchronous transaction updates at the Publisher. *ins_proc* is **sysname**, with no default.  
  
 [ **@del_proc=**] **'***del_proc***'**  
 Is the name of the stored procedure that supports synchronous transaction deletes at the Publisher. *ins_proc* is **sysname**, with no default.  
  
 [ **@cftproc =** ] **'***cftproc***'**  
 Is the name of the auto-generated procedure used by publications that allow queued updating. *cftproc* is **sysname**, with no default. For publications that allow immediate updating, this value is NULL. This parameter applies to publications that allow queued updating (Queued Updating and Immediate Updating with Queued Updating as Failover).  
  
 [ **@proc_owner =** ] **'***proc_owner***'**  
 Specifies the user account in the Publisher under which all the auto-generated stored procedures for updating publication (queued and/or immediate) were created. *proc_owner* is **sysname** with no default.  
  
 [ **@identity_col=**] **'***identity_col***'**  
 Is the name of the identity column at the Publisher. *identity_col* is **sysname**, with a default of NULL.  
  
 [ **@ts_col=**] **'***timestamp_col***'**  
 Is the name of the **timestamp** column at the Publisher. *timestamp_col* is **sysname**, with a default of NULL.  
  
 [ **@filter_clause=**] **'***filter_clause***'**  
 Is a restriction (WHERE) clause that defines a horizontal filter. When entering the restriction clause, omit the keyword WHERE. *filter_clause*is **nvarchar(4000)**, with a default of NULL.  
  
 [ **@primary_key_bitmap =**] **'***primary_key_bitmap***'**  
 Is a bit map of the primary key columns in the table. *primary_key_bitmap* is **varbinary(4000)**, with no default.  
  
 [ **@identity_support =** ] *identity_support*  
 Enables and disables automatic identity range handling when queued updating is used. *identity_support* is a **bit**, with a default of **0**. **0** means that there is no identity range support, **1** enables automatic identity range handling.  
  
 [ **@independent_agent =** ] *independent_agent*  
 Indicates whether there is a single Distribution Agent (an independent agent) for this publication, or one Distribution Agent per publication database and subscription database pair (a shared agent). This value reflects the value of the independent_agent property of the publication defined at the Publisher. *independent_agent* is a bit with a default of **0**. If **0**, the agent is a Shared Agent. If **1**, the agent is an independent agent.  
  
 [ **@distributor =** ] **'***distributor***'**  
 Is the name of the Distributor. *distributor* is **sysname**, with no default.  
  
 [ **@pubversion**= ] *pubversion*  
 Indicates the version of the Publisher. *pubversion* is **int**, with a default of 1. **1** means that the Publisher version is [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssVersion2000](../../../a9notintoc/includes/ssversion2000-md.md)] Service Pack 2 or earlier; **2** means that the Publisher is [!INCLUDE[ssVersion2000](../../../a9notintoc/includes/ssversion2000-md.md)] Service Pack 3 (SP3) or later. *pubversion* must be explicitly set to **2** when the Publisher version is [!INCLUDE[ssVersion2000](../../../a9notintoc/includes/ssversion2000-md.md)] SP3 or later.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_addsynctriggers** is used by the Distribution Agent as part of subscription initialization. This stored procedure is not commonly run by users, but may be useful if the user needs to set up a no-sync subscription manually.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role or **db_owner** fixed database role can execute **sp_addsynctriggers**.  
  
## See Also  
 [Updatable Subscriptions for Transactional Replication](../../../relational-databases/replication/transactional/updatable-subscriptions-for-transactional-replication.md)   
 [sp_script_synctran_commands &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-script-synctran-commands-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  