---
title: "KILL QUERY NOTIFICATION SUBSCRIPTION (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "KILL QUERY NOTIFICATION SUBSCRIPTION"
  - "KILL_QUERY_NOTIFICATION_SUBSCRIPTION_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "KILL QUERY NOTIFICATION SUBSCRIPTION statement"
  - "removing subscriptions"
  - "subscriptions [SQL Server query notifications], stopping"
  - "query notifications [SQL Server], subscriptions"
ms.assetid: 8aeadf51-286c-4748-bef2-d25858b250bf
caps.latest.revision: 17
ms.author: "rickbyh"
manager: "jhubbard"
---
# KILL QUERY NOTIFICATION SUBSCRIPTION (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes query notification subscriptions from the instance. This statement can remove a specific subscription or all subscriptions.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
KILL QUERY NOTIFICATION SUBSCRIPTION   
   { ALL | subscription_id }  
```  
  
## Arguments  
 ALL  
 Removes all subscriptions in the instance.  
  
 *subscription_id*  
 Removes the subscription with the subscription id *subscription_id*.  
  
## Remarks  
 The KILL QUERY NOTIFICATION SUBSCRIPTION statement removes query notification subscriptions without producing a notification message.  
  
 *subscription_id* is the id for the subscription as shown in the dynamic management view [sys.dm_qn_subscriptions &#40;Transact-SQL&#41;](../../relational-databases/reference/system-dynamic-management-views/query-notifications-sys.dm-qn-subscriptions.md).  
  
 If the specified subscription id does not exist, the statement produces an error.  
  
## Permissions  
 Permission to execute this statement is restricted to members of the **sysadmin** fixed server role.  
  
## Examples  
  
### A. Removing all query notification subscriptions in the instance  
 The following example removes all query notification subscriptions in the instance.  
  
```  
KILL QUERY NOTIFICATION SUBSCRIPTION ALL ;  
```  
  
### B. Removing a single query notification subscription  
 The following example removes the query notification subscription with the id `73`.  
  
```  
KILL QUERY NOTIFICATION SUBSCRIPTION 73 ;  
```  
  
## See Also  
 [sys.dm_qn_subscriptions &#40;Transact-SQL&#41;](../../relational-databases/reference/system-dynamic-management-views/query-notifications-sys.dm-qn-subscriptions.md)  
  
  