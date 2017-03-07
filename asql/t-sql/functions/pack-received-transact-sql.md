---
title: "@@PACK_RECEIVED (Transact-SQL) | Microsoft Docs"
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
  - "@@PACK_RECEIVED_TSQL"
  - "@@PACK_RECEIVED"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "@@PACK_RECEIVED function"
  - "number of packets read"
  - "packets [SQL Server], number read"
ms.assetid: 5c0b3d36-bfad-4f0b-abb8-e8f6391b32cd
caps.latest.revision: 18
ms.author: "rickbyh"
manager: "jhubbard"
---
# @@PACK_RECEIVED (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the number of input packets read from the network by [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] since it was last started.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
@@PACK_RECEIVED  
```  
  
## Return Types  
 **integer**  
  
## Remarks  
 To display a report containing several [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] statistics, including packets sent and received, run **sp_monitor**.  
  
## Examples  
 The following example shows the usage of `@@PACK_RECEIVED`.  
  
```  
SELECT @@PACK_RECEIVED AS 'Packets Received';   
```  
  
 Here is a sample result set.  
  
```  
Packets Received  
----------------  
128  
```  
  
## See Also  
 [@@PACK_SENT](../../t-sql/functions/pack-sent-transact-sql.md)   
 [sp_monitor](../../relational-databases/reference/system-stored-procedures/sp-monitor-transact-sql.md)   
 [System Statistical Functions](../../t-sql/functions/system-statistical-functions-transact-sql.md)  
  
  