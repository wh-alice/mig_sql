---
title: "xp_logevent (Transact-SQL) | Microsoft Docs"
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
  - "xp_logevent"
  - "xp_logevent_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "xp_logevent"
ms.assetid: 7b379ad0-5b12-4d2e-9c52-62465df1fdbd
caps.latest.revision: 30
ms.author: "rickbyh"
manager: "jhubbard"
---
# xp_logevent (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Logs a user-defined message in the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] log file and in the Windows Event Viewer. xp_logevent can be used to send an alert without sending a message to the client.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
xp_logevent { error_number , 'message' } [ , 'severity' ]  
```  
  
## Arguments  
 *error_number*  
 Is a user-defined error number larger than 50,000. The maximum value is 2147483647 (2^31 - 1).  
  
 **'** *message* **'**  
 Is a character string with a maximum of 2048 characters.  
  
 **'** *severity* **'**  
 Is one of three character strings: INFORMATIONAL, WARNING, or ERROR. *severity* is optional, with a default of INFORMATIONAL.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 xp_logevent returns the following error message for the included code example:  
  
 `The command(s) completed successfully.`  
  
## Remarks  
 When you send messages from [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] procedures, triggers, batches, and so on, use the RAISERROR statement instead of xp_logevent. xp_logevent does not call a message handler of a client or set @@ERROR. To write messages to the Windows Event Viewer and to the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] error log file within an instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], execute the RAISERROR statement.  
  
## Permissions  
 Requires membership in the db_owner fixed database role in the master database, or membership in the sysadmin fixed server role.  
  
## Examples  
 The following example logs the message, with variables passed to the message in the Windows Event Viewer.  
  
```  
DECLARE @@TABNAME varchar(30, @@USERNAME varchar(30),DECLARE @@MESSAGE varchar(255);  
SET @@TABNAME = 'customers';  
SET @@USERNAME = USER_NAME();  
SELECT @@MESSAGE = 'The table ' + @@TABNAME + ' is not owned by the user   
   ' + @@USERNAME + '.';  
  
USE master;  
EXEC xp_logevent 60000, @@MESSAGE, informational;  
```  
  
## See Also  
 [PRINT &#40;Transact-SQL&#41;](../../../t-sql/language-elements/print-transact-sql.md)   
 [RAISERROR &#40;Transact-SQL&#41;](../../../t-sql/language-elements/raiserror-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [General Extended Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/general-extended-stored-procedures-transact-sql.md)  
  
  