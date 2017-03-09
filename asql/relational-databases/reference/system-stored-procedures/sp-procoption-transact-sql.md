---
title: "sp_procoption (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_procoption"
  - "sp_procoption_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_procoption"
ms.assetid: 6f0221bd-70b4-4b04-b15d-722235aceb3c
caps.latest.revision: 28
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_procoption (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Sets or clears a stored procedure for automatic execution. A stored procedure that is set to automatic execution runs every time an instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is started.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_procoption [ @ProcName = ] 'procedure'   
    , [ @OptionName = ] 'option'   
    , [ @OptionValue = ] 'value'   
```  
  
## Arguments  
 [ **@ProcName =** ] **'***procedure***'**  
 Is the name of the procedure for which to set an option. *procedure* is **nvarchar(776)**, with no default.  
  
 [ **@OptionName =** ] **'***option***'**  
 Is the name of the option to set. The only value for *option* is **startup**.  
  
 [ **@OptionValue =** ] **'***value***'**  
 Is whether to set the option on (**true** or **on**) or off (**false** or **off**). *value* is **varchar(12)**, with no default.  
  
## Return Code Values  
 0 (success) or error number (failure)  
  
## Remarks  
 Startup procedures must be in the **master** database and cannot contain INPUT or OUTPUT parameters. Execution of the stored procedures starts when all databases are recovered and the "Recovery is completed" message is logged at startup.  
  
## Permissions  
 Requires membership in the **sysadmin** fixed server role.  
  
## Examples  
 The following example sets a procedure for automatic execution.  
  
```  
EXEC sp_procoption @ProcName = '<procedure name>'   
    , @OptionName = ] 'startup'   
    , @OptionValue = 'on';   
```  
  
 The following example stops a procedure from executing automatically.  
  
```  
EXEC sp_procoption @ProcName = '<procedure name>'   
    , @OptionValue = 'off';   
```  
  
## See Also  
 [Execute a Stored Procedure](../../../relational-databases/reference/stored-procedures/execute-a-stored-procedure.md)  
  
  