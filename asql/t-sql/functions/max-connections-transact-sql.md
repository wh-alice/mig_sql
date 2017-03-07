---
title: "@@MAX_CONNECTIONS (Transact-SQL) | Microsoft Docs"
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
  - "@@MAX_CONNECTIONS"
  - "@@MAX_CONNECTIONS_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "simultaneous connections [SQL Server]"
  - "maximum number of simultaneous user connections"
  - "@@MAX_CONNECTIONS function"
  - "connections [SQL Server], simultaneous"
  - "number of simultaneous user connections"
ms.assetid: 57eb9f4b-548f-4212-9684-a11d831c4732
caps.latest.revision: 29
ms.author: "rickbyh"
manager: "jhubbard"
---
# @@MAX_CONNECTIONS (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the maximum number of simultaneous user connections allowed on an instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. The number returned is not necessarily the number currently configured.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
@@MAX_CONNECTIONS  
```  
  
## Return Types  
 **integer**  
  
## Remarks  
 The actual number of user connections allowed also depends on the version of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] that is installed and the limitations of your applications and hardware.  
  
 To reconfigure [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] for fewer connections, use **sp_configure**.  
  
## Examples  
 The following example shows returning the maximum number of user connections on an instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. The example assumes that [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] has not been reconfigured for fewer user connections.  
  
```  
SELECT @@MAX_CONNECTIONS AS 'Max Connections';  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
Max Connections  
---------------  
32767            
```  
  
## See Also  
 [sp_configure](../../relational-databases/reference/system-stored-procedures/sp-configure-transact-sql.md)   
 [Configuration Functions](../../t-sql/functions/configuration-functions-transact-sql.md)   
 [Configure the user connections Server Configuration Option](../../database-engine/configure/windows/configure-the-user-connections-server-configuration-option.md)  
  
  