---
title: "SUSER_ID (Transact-SQL) | Microsoft Docs"
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
  - "SUSER_ID_TSQL"
  - "SUSER_ID"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "users [SQL Server], IDs"
  - "logins [SQL Server], IDs"
  - "SUSER_ID function"
  - "IDs [SQL Server], logins"
  - "identification numbers [SQL Server], logins"
  - "user IDs [SQL Server]"
ms.assetid: 348911ab-b0b6-4867-aee7-e6f42e053a4a
caps.latest.revision: 22
ms.author: "rickbyh"
manager: "jhubbard"
---
# SUSER_ID (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the login identification number of the user.  
  
> [!NOTE]  
>  Starting with [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)], SUSER_ID returns the value listed as **principal_id** in the **sys.server_principals** catalog view.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
SUSER_ID ( [ 'login' ] )   
```  
  
## Arguments  
 **'** *login* **'**  
 Is the login name of the user. *login* is **nchar**. If *login* is specified as **char**, *login* is implicitly converted to **nchar**. *login* can be any [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login or Windows user or group that has permission to connect to an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. If *login* is not specified, the login identification number for the current user is returned. If the parameter contains the word NULL will return NULL.  
  
## Return Types  
 **int**  
  
## Remarks  
 SUSER_ID returns an identification number only for logins that have been explicitly provisioned inside [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. This ID is used within [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to track ownership and permissions. This ID is not equivalent to the SID of the login that is returned by SUSER_SID. If *login* is a SQL Server login, the SID maps to a GUID. If *login* is a Windows login or Windows group, the SID maps to a Windows security identifier.  
  
 SUSER_SID returns a SUID only for a login that has an entry in the **syslogins** system table.  
  
 System functions can be used in the select list, in the WHERE clause, and anywhere an expression is allowed, and must always be followed by parentheses, even if no parameter is specified.  
  
## Examples  
 The following example returns the login identification number for the `sa` login.  
  
```  
SELECT SUSER_ID('sa');  
```  
  
## See Also  
 [sys.server_principals &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.server-principals-transact-sql.md)   
 [SUSER_SID &#40;Transact-SQL&#41;](../../t-sql/functions/suser-sid-transact-sql.md)   
 [System Functions &#40;Transact-SQL&#41;](../../relational-databases/system-functions/system-functions-transact-sql.md)  
  
  