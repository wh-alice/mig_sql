---
title: "PWDENCRYPT (Transact-SQL) | Microsoft Docs"
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
  - "PWDENCRYPT"
  - "PWDENCRYPT_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "PWDENCRYPT function [Transact-SQL]"
ms.assetid: 333e9a43-1099-4b9b-b941-4b0b016f47f3
caps.latest.revision: 9
ms.author: "rickbyh"
manager: "jhubbard"
---
# PWDENCRYPT (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] password hash of the input value that uses the current version of the password hashing algorithm.  
  
 PWDENCRYPT is an older function and might not be supported in a future release of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. Use [HASHBYTES](../../t-sql/functions/hashbytes-transact-sql.md) instead. HASHBYTES provides more hashing algorithms.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
PWDENCRYPT ( 'password' )  
```  
  
## Arguments  
 *password*  
 Is the password to be encrypted. *password* is **sysname**.  
  
## Return Types  
 **varbinary(128)**  
  
## Permissions  
 PWDENCRYPT is available to public.  
  
## See Also  
 [Security Functions &#40;Transact-SQL&#41;](../../t-sql/functions/security-functions-transact-sql.md)   
 [PWDCOMPARE &#40;Transact-SQL&#41;](../../t-sql/functions/pwdcompare-transact-sql.md)  
  
  