---
title: "@@REMSERVER (Transact-SQL) | Microsoft Docs"
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
  - "@@REMSERVER"
  - "@@REMSERVER_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "logins [SQL Server], remote servers"
  - "remote servers [SQL Server], logins"
  - "@@REMSERVER function"
ms.assetid: 0bb451a9-3866-4064-963d-b74a2f864049
caps.latest.revision: 23
ms.author: "rickbyh"
manager: "jhubbard"
---
# @@REMSERVER (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

    
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepNextDontUse](../../database-engine/configure/windows/includes/ssnotedepnextdontuse-md.md)] Use linked servers and linked server stored procedures instead.  
  
 Returns the name of the remote [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database server as it appears in the login record.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
@@REMSERVER  
```  
  
## Return Types  
 **nvarchar(128)**  
  
## Remarks  
 @@REMSERVER enables a stored procedure to check the name of the database server from which the procedure is run.  
  
## Examples  
 The following example creates the procedure `usp_CheckServer` that returns the name of the remote server.  
  
```  
CREATE PROCEDURE usp_CheckServer  
AS  
SELECT @@REMSERVER;  
```  
  
 The following stored procedure is created on the local server `SEATTLE1`. The user logs on to a remote server, `LONDON2`, and runs `usp_CheckServer`.  
  
```  
EXEC SEATTLE1...usp_CheckServer;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
---------------  
LONDON2  
```  
  
## See Also  
 [Configuration Functions &#40;Transact-SQL&#41;](../../t-sql/functions/configuration-functions-transact-sql.md)   
 [Remote Servers](../../database-engine/configure/windows/remote-servers.md)  
  
  