---
title: "sp_posttracertoken (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
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
  - "posttracerttoken"
  - "posttracerttoken_TSQL"
  - "sp_posttracertoken"
  - "sp_posttracertoken_TSQL"
helpviewer_keywords: 
  - "sp_posttracertoken"
ms.assetid: 24da5cd2-1c45-475e-93db-5bdf660f1c2c
caps.latest.revision: 28
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_posttracertoken (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  This procedure posts a tracer token into the transaction log at the Publisher and begins the process of tracking latency statistics. Information is recorded when the tracer token is written to the transaction log, when it is picked up by the Log Reader Agent, and when it is applied by the Distribution Agent. This stored procedure is executed at the Publisher on the publication database. For more information, see [Measure Latency and Validate Connections for Transactional Replication](../../../relational-databases/replication/monitor/measure-latency-and-validate-connections-for-transactional-replication.md).  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_posttracertoken [ @publication = ] 'publication'   
    [ , [ @tracer_token_id = ] tracer_token_id OUTPUT  
    [ , [ @publisher = ] 'publisher'   
```  
  
## Arguments  
 [ **@publication**= ] **'***publication***'**  
 Is the name of the publication for which latency is being measured. *publication* is **sysname**, with no default.  
  
 [ **@tracer_token_id=** ] *tracer_token_id***OUTPUT**  
 Is the ID of the tracer token inserted. *tracer_token_id* is **int** with a default of NULL, and it is an OUTPUT parameter. This value can be used to execute [sp_helptracertokenhistory &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-helptracertokenhistory-transact-sql.md) or [sp_deletetracertokenhistory &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-deletetracertokenhistory-transact-sql.md) without first executing [sp_helptracertokens &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-helptracertokens-transact-sql.md).  
  
 [ **@publisher=** ] **'***publisher***'**  
 Specifies a non-[!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Publisher. *publisher* is **sysname**, with a default of NULL and should not be specified for a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Publisher.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_posttracertoken** is used in transactional replication.  
  
## Example  
 [!code-sql[HowTo#sp_tracertokens](../../../a9retired/codesnippet/tsql/sp-posttracertoken-trans_1.sql)]  
  
## Permissions  
 Only members of the **sysadmin** fixed server role or the **db_owner** fixed database role can execute **sp_posttracertoken**.  
  
## See Also  
 [Measure Latency and Validate Connections for Transactional Replication](../../../relational-databases/replication/monitor/measure-latency-and-validate-connections-for-transactional-replication.md)  
  
  