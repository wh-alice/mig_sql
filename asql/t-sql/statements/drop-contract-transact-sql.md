---
title: "DROP CONTRACT (Transact-SQL) | Microsoft Docs"
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
  - "DROP_CONTRACT_TSQL"
  - "DROP CONTRACT"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "dropping contracts"
  - "removing contracts"
  - "deleting contracts"
  - "contracts [Service Broker], dropping"
  - "DROP CONTRACT statement"
ms.assetid: fdd0f81e-3c22-4cdf-9416-b4977a6ac3b6
caps.latest.revision: 29
ms.author: "jhubbard"
manager: "jhubbard"
---
# DROP CONTRACT (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Drops an existing contract from a database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
DROP CONTRACT contract_name   
[ ; ]  
```  
  
## Arguments  
 *contract_name*  
 The name of the contract to drop. Server, database, and schema names cannot be specified.  
  
## Remarks  
 You cannot drop a contract if any services or conversation priorities refer to the contract.  
  
 When you drop a contract, [!INCLUDE[ssSB](../../database-engine/configure/windows/includes/sssb-md.md)] ends any existing conversations that use the contract with an error.  
  
## Permissions  
 Permission for dropping a contract defaults to the owner of the contract, members of the db_ddladmin or db_owner fixed database roles, and members of the sysadmin fixed server role.  
  
## Examples  
 The following example removes the contract `//Adventure-Works.com/Expenses/ExpenseSubmission` from the database.  
  
```  
DROP CONTRACT   
    [//Adventure-Works.com/Expenses/ExpenseSubmission] ;  
```  
  
## See Also  
 [ALTER BROKER PRIORITY &#40;Transact-SQL&#41;](../../t-sql/statements/alter-broker-priority-transact-sql.md)   
 [ALTER SERVICE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-service-transact-sql.md)   
 [CREATE CONTRACT &#40;Transact-SQL&#41;](../../t-sql/statements/create-contract-transact-sql.md)   
 [DROP BROKER PRIORITY &#40;Transact-SQL&#41;](../../t-sql/statements/drop-broker-priority-transact-sql.md)   
 [DROP SERVICE &#40;Transact-SQL&#41;](../../t-sql/statements/drop-service-transact-sql.md)   
 [EVENTDATA &#40;Transact-SQL&#41;](../../t-sql/functions/eventdata-transact-sql.md)  
  
  