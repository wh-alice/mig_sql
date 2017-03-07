---
title: "@@PACKET_ERRORS (Transact-SQL) | Microsoft Docs"
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
  - "@@PACKET_ERRORS"
  - "@@PACKET_ERRORS_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "@@PACKET_ERRORS function"
  - "number of packet errors"
  - "packets [SQL Server], errors"
  - "networking [SQL Server], packet errors"
  - "connections [SQL Server], packets"
ms.assetid: f7da1b80-5cbe-42fa-be71-40c6af16383a
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# @@PACKET_ERRORS (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the number of network packet errors that have occurred on [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] connections since [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] was last started.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
@@PACKET_ERRORS  
```  
  
## Return Types  
 **integer**  
  
## Remarks  
 To display a report containing several [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] statistics, including packet errors, run **sp_monitor**.  
  
## Examples  
 The following example shows using `@@PACKET_ERRORS`.  
  
```  
SELECT @@PACKET_ERRORS AS 'Packet Errors';  
```  
  
 Here is a sample result set.  
  
```  
Packet Errors  
-------------  
0  
```  
  
## See Also  
 [@@PACK_RECEIVED &#40;Transact-SQL&#41;](../../t-sql/functions/pack-received-transact-sql.md)   
 [@@PACK_SENT &#40;Transact-SQL&#41;](../../t-sql/functions/pack-sent-transact-sql.md)   
 [sp_monitor &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-monitor-transact-sql.md)   
 [System Statistical Functions &#40;Transact-SQL&#41;](../../t-sql/functions/system-statistical-functions-transact-sql.md)  
  
  