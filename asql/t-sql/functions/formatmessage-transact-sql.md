---
title: "FORMATMESSAGE (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2015-10-14"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "FORMATMESSAGE"
  - "FORMATMESSAGE_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysmessages system table"
  - "sys.messages catalog view"
  - "FORMATMESSAGE function"
  - "messages [SQL Server], formats"
  - "errors [SQL Server], formats"
ms.assetid: 83f18102-2035-4a87-acd0-8d96d03efad5
caps.latest.revision: 39
ms.author: "rickbyh"
manager: "jhubbard"
---
# FORMATMESSAGE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Constructs a message from an existing message in sys.messages or from a provided string. The functionality of FORMATMESSAGE resembles that of the RAISERROR statement. However, RAISERROR prints the message immediately, while FORMATMESSAGE returns the formatted message for further processing.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
FORMATMESSAGE ( { msg_number  | ' msg_string ' } , [ param_value [ ,...n ] ] )  
```  
  
## Arguments  
 *msg_number*  
 Is the ID of the message stored in sys.messages. If *msg_number* is <= 13000, or if the message does not exist in sys.messages, NULL is returned.  
  
 *msg_string*  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 Is a string enclosed in single quotes and containing parameter value placeholders. The error message can have a maximum of 2,047 characters. If the message contains 2,048 or more characters, only the first 2,044 are displayed and an ellipsis is added to indicate that the message has been truncated. Note that substitution parameters consume more characters than the output shows because of internal storage behavior.  For information about the structure of a message string and the use of parameters in the string, see the description of the *msg_str* argument in [RAISERROR &#40;Transact-SQL&#41;](../Topic/RAISERROR%20\(Transact-SQL\).md).  
  
 *param_value*  
 Is a parameter value for use in the message. Can be more than one parameter value. The values must be specified in the order in which the placeholder variables appear in the message. The maximum number of values is 20.  
  
## Return Types  
 **nvarchar**  
  
## Remarks  
 Like the RAISERROR statement, FORMATMESSAGE edits the message by substituting the supplied parameter values for placeholder variables in the message. For more information about the placeholders allowed in error messages and the editing process, see [RAISERROR &#40;Transact-SQL&#41;](../Topic/RAISERROR%20\(Transact-SQL\).md).  
  
 FORMATMESSAGE looks up the message in the current language of the user. If there is no localized version of the message, the U.S. English version is used.  
  
 For localized messages, the supplied parameter values must correspond to the parameter placeholders in the U.S. English version. That is, parameter 1 in the localized version must correspond to parameter 1 in the U.S. English version, parameter 2 must correspond to parameter 2, and so on.  
  
## Examples  
  
### A. Example with a message number  
 The following example uses a replication message `20009` stored in sys.messages as, "The article '%s' could not be added to the publication '%s'." FORMATMESSAGE substitutes the values `First Variable` and `Second Variable` for the parameter placeholders. The resulting string, "The article 'First Variable' could not be added to the publication 'Second Variable'.", is stored in the local variable `@var1`.  
  
```  
SELECT text FROM sys.messages WHERE message_id = 20009 AND language_id = 1033;  
DECLARE @var1 VARCHAR(200);   
SELECT @var1 = FORMATMESSAGE(20009, 'First Variable', 'Second Variable');   
SELECT @var1;  
```  
  
### B. Example with a message string  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 The following example takes a string as an input.  
  
```  
SELECT FORMATMESSAGE('This is the %s and this is the %s.', 'first variable', 'second variable') AS Result;  
```  
  
 Returns: `This is the first variable and this is the second variable.`  
  
### C. Additional message string formatting examples  
 The following examples show a variety of formatting options.  
  
```  
SELECT FORMATMESSAGE('Signed int %i, %d %i, %d, %+i, %+d, %+i, %+d', 5, -5, 50, -50, -11, -11, 11, 11);  
SELECT FORMATMESSAGE('Signed int with leading zero %020i', 5);  
SELECT FORMATMESSAGE('Signed int with leading zero 0 %020i', -55);  
SELECT FORMATMESSAGE('Unsigned int %u, %u', 50, -50);  
SELECT FORMATMESSAGE('Unsigned octal %o, %o', 50, -50);  
SELECT FORMATMESSAGE('Unsigned hexadecimal %x, %X, %X, %X, %x', 11, 11, -11, 50, -50);  
SELECT FORMATMESSAGE('Unsigned octal with prefix: %#o, %#o', 50, -50);  
SELECT FORMATMESSAGE('Unsigned hexadecimal with prefix: %#x, %#X, %#X, %X, %x', 11, 11, -11, 50, -50);  
SELECT FORMATMESSAGE('Hello %s!', 'TEST');  
SELECT FORMATMESSAGE('Hello %20s!', 'TEST');  
SELECT FORMATMESSAGE('Hello %-20s!', 'TEST');  
SELECT FORMATMESSAGE('Hello %20s!', 'TEST');  
```  
  
## See Also  
 [THROW &#40;Transact-SQL&#41;](../Topic/THROW%20\(Transact-SQL\).md)   
 [sp_addmessage &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-addmessage-transact-sql.md)   
 [sys.messages &#40;Transact-SQL&#41;](../Topic/sys.messages%20\(Transact-SQL\).md)   
 [System Functions &#40;Transact-SQL&#41;](../../relational-databases/system-functions/system-functions-transact-sql.md)   
 [RAISERROR &#40;Transact-SQL&#41;](../Topic/RAISERROR%20\(Transact-SQL\).md)  
  
  