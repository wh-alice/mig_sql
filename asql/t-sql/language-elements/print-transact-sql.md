---
title: "PRINT (Transact-SQL) | Microsoft Docs"
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
  - "PRINT_TSQL"
  - "PRINT"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "PRINT statement"
  - "user-defined messages [SQL Server]"
  - "messages [SQL Server], PRINT statement"
  - "displaying user-defined messages"
  - "viewing user-defined messages"
  - "conditionally returning messages [SQL Server]"
ms.assetid: 32ba0729-c4b5-4cfb-a5aa-e8b9402be028
caps.latest.revision: 33
ms.author: "rickbyh"
manager: "jhubbard"
---
# PRINT-Transact-SQL
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns a user-defined message to the client.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  

PRINT msg_str | @local_variable | string_expr  
```  
  
## Arguments  
 *msg_str*  
 Is a character string or Unicode string constant. For more information, see [Constants &#40;Transact-SQL&#41;](../../t-sql/data-types/constants-transact-sql.md).  
  
 **@** *local_variable*  
 Is a variable of any valid character data type. **@***local_variable* must be **char**, **nchar**, **varchar**, or **nvarchar**, or it must be able to be implicitly converted to those data types.  
  
 *string_expr*  
 Is an expression that returns a string. Can include concatenated literal values, functions, and variables. For more information, see [Expressions &#40;Transact-SQL&#41;](../../t-sql/language-elements/expressions-transact-sql.md).  
  
## Remarks  
 A message string can be up to 8,000 characters long if it is a non-Unicode string, and 4,000 characters long if it is a Unicode string. Longer strings are truncated. The **varchar(max)** and **nvarchar(max)** data types are truncated to data types that are no larger than **varchar(8000)** and **nvarchar(4000)**.  
  
 RAISERROR can also be used to return messages. RAISERROR has these advantages over PRINT:  
  
-   RAISERROR supports substituting arguments into an error message string using a mechanism modeled on the printf function of the C language standard library.  
  
-   RAISERROR can specify a unique error number, a severity, and a state code in addition to the text message.  
  
-   RAISERROR can be used to return user-defined messages created using the sp_addmessage system stored procedure.  
  
## Examples  
  
### A. Conditionally executing print (IF EXISTS)  
 The following example uses the `PRINT` statement to conditionally return a message.  
  
```  
IF @@OPTIONS & 512 <> 0  
    PRINT N'This user has SET NOCOUNT turned ON.';  
ELSE  
    PRINT N'This user has SET NOCOUNT turned OFF.';  
GO  
```  
  
### B. Building and displaying a string  
 The following example converts the results of the `GETDATE` function to a `nvarchar` data type and concatenates it with literal text to be returned by `PRINT`.  
  
```  
-- Build the message text by concatenating  
-- strings and expressions.  
PRINT N'This message was printed on '  
    + RTRIM(CAST(GETDATE() AS nvarchar(30)))  
    + N'.';  
GO  
-- This example shows building the message text  
-- in a variable and then passing it to PRINT.  
-- This was required in SQL Server 7.0 or earlier.  
DECLARE @PrintMessage nvarchar(50);  
SET @PrintMessage = N'This message was printed on '  
    + RTRIM(CAST(GETDATE() AS nvarchar(30)))  
    + N'.';  
PRINT @PrintMessage;  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### C. Conditionally executing print  
 The following example uses the `PRINT` statement to conditionally return a message.  
  
```  
IF DB_ID() = 1  
    PRINT N'The current database is master.';  
ELSE  
    PRINT N'The current database is not master.';  
GO  
```  
  
### D. Building and displaying a string  
 The following example converts the results of the `GETDATE` function to a `nvarchar` data type and concatenates it with literal text to be returned by `PRINT`.  
  
```  
-- Build the message text by concatenating  
-- strings and expressions.  
PRINT N'This message was printed on '  
    + RTRIM(CAST(GETDATE() AS nvarchar(30)))  
    + N'.';  
GO  
-- This example shows building the message text  
-- in a variable and then passing it to PRINT.  
DECLARE @PrintMessage nvarchar(50);  
SET @PrintMessage = N'This message was printed on '  
    + RTRIM(CAST(GETDATE() AS nvarchar(30)))  
    + N'.';  
PRINT @PrintMessage;  
GO  
```  
  
## See Also  
 [Data Types &#40;Transact-SQL&#41;](../../t-sql/data-types/data-types-transact-sql.md)   
 [DECLARE @local_variable &#40;Transact-SQL&#41;](../Topic/DECLARE%20@local_variable%20\(Transact-SQL\).md)   
 [RAISERROR &#40;Transact-SQL&#41;](../Topic/RAISERROR%20\(Transact-SQL\).md)  
  
  

