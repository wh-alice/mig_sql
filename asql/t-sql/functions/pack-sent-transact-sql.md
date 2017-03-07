---
title: "@@PACK_SENT (Transact-SQL) | Microsoft Docs"
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
  - "@@PACK_SENT"
  - "@@PACK_SENT_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "number of output packets written"
  - "@@PACK_SENT function"
  - "packets [SQL Server], ouput"
  - "networking [SQL Server], output packets"
  - "connections [SQL Server], packets"
  - "output packets written to network [SQL Server]"
ms.assetid: 8a322162-24c9-48e9-bfa4-c060e4e11dba
caps.latest.revision: 23
ms.author: "rickbyh"
manager: "jhubbard"
---
# @@PACK_SENT (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the number of output packets written to the network by [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] since it was last started.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
@@PACK_SENT  
```  
  
## Return Types  
 **integer**  
  
## Remarks  
 To display a report containing several [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] statistics, including packets sent and received, run **sp_monitor**.  
  
## Examples  
 The following example shows the usage of `@@PACK_SENT`.  
  
```  
SELECT @@PACK_SENT AS 'Pack Sent';  
```  
  
 Here is a sample result set.  
  
```  
Pack Sent  
-----------  
291  
```  
  
## See Also  
 [@@PACK_RECEIVED &#40;Transact-SQL&#41;](../../t-sql/functions/pack-received-transact-sql.md)   
 [sp_monitor &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-monitor-transact-sql.md)   
 [System Statistical Functions &#40;Transact-SQL&#41;](../../t-sql/functions/system-statistical-functions-transact-sql.md)  
  
  