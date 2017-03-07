---
title: "xp_sqlmaint (Transact-SQL) | Microsoft Docs"
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
  - "xp_sqlmaint"
  - "xp_sqlmaint_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "xp_sqlmaint"
ms.assetid: bda66e1b-6bbd-49be-b86e-37efc920e912
caps.latest.revision: 37
ms.author: "jhubbard"
manager: "jhubbard"
---
# xp_sqlmaint (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Calls the **sqlmaint** utility with a string that contains **sqlmaint**switches. The **sqlmaint** utility performs a set of maintenance operations on one or more databases.  
  
> [!NOTE]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)]  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
xp_sqlmaint 'switch_string'     
```  
  
## Arguments  
 **'** *switch_string* **'**  
 Is a string containing the **sqlmaint** utility switches. The switches and their values must be separated by a space.  
  
 The **-?** switch is not valid for **xp_sqlmaint**.  
  
## Return Code Values  
 None. Returns an error if the **sqlmaint** utility fails.  
  
## Remarks  
 If this procedure is called by a user logged on with SQL Server Authentication, the **-U "***login_id***"** and **-P "***password***"** switches are prepended to *switch_string* before execution. If the user is logged on with Windows Authentication, *switch_string* is passed without change to **sqlmaint**.  
  
## Permissions  
 Requires membership in the **sysadmin** fixed server role.  
  
## Examples  
 In the following example, `xp_sqlmaint` calls `sqlmaint` to perform integrity checks, create a report file, and update `msdb.dbo.sysdbmaintplan_history`.  
  
```  
EXEC xp_sqlmaint '-D AdventureWorks2012 -PlanID 02A52657-D546-11D1-9D8A-00A0C9054212   
   -Rpt "C:\Program Files\Microsoft SQL Server\MSSQL\LOG\DBMaintPlan2.txt" -WriteHistory  -CkDB -CkAl';   
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
The command(s) executed successfully.  
```  
  
## See Also  
 [sqlmaint Utility](../../tools/sqlmaint-utility.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  