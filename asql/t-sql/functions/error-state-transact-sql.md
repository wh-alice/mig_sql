---
title: "ERROR_STATE (Transact-SQL) | Microsoft Docs"
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
  - "ERROR_STATE_TSQL"
  - "ERROR_STATE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "messages [SQL Server], state"
  - "ERROR_STATE function"
  - "errors [SQL Server], state"
  - "TRY...CATCH [SQL Server]"
  - "CATCH block"
  - "states [SQL Server], error numbers"
ms.assetid: 6059af00-83fe-409f-ab7c-daad111bc671
caps.latest.revision: 39
ms.author: "rickbyh"
manager: "jhubbard"
---
# ERROR_STATE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Returns the state number of the error that caused the CATCH block of a TRY…CATCH construct to be run.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
ERROR_STATE ( )  
```  
  
## Return Types  
 **int**  
  
## Return Value  
 When called in a CATCH block, returns the state number of the error message that caused the CATCH block to be run.  
  
 Returns NULL if called outside the scope of a CATCH block.  
  
## Remarks  
 Some error messages can be raised at multiple points in the code for the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)]. For example, an "1105" error can be raised for several different conditions. Each specific condition that raises the error assigns a unique state code.  
  
 When viewing databases of known issues, such as the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Knowledge Base, you can use the state number to determine if the recorded issue might be the same as the error you have encountered. For example, if a Knowledge Base article discusses an 1105 error message with a state of 2, and the 1105 error message you received had a state of 3, your error probably had a different cause than the one reported in the article.  
  
 A [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] support engineer can also use the state code from an error to find the location in the source code where that error is being raised, which may provide additional ideas on how to diagnose the problem.  
  
 ERROR_STATE may be called anywhere within the scope of a CATCH block.  
  
 ERROR_STATE returns the error state regardless of how many times it is run, or where it is run within the scope of the CATCH block. This is in contrast to functions like @@ERROR, which only returns the error number in the statement immediately after the one that causes an error, or in the first statement of a CATCH block.  
  
 In nested CATCH blocks, ERROR_STATE returns the error state specific to the scope of the CATCH block in which it is referenced. For example, the CATCH block of an outer TRY...CATCH construct could have a nested TRY...CATCH construct. Within the nested CATCH block, ERROR_STATE returns the state from the error that invoked the nested CATCH block. If ERROR_STATE is run in the outer CATCH block, it returns the state from the error that invoked that CATCH block.  
  
## Examples  
  
### A. Using ERROR_STATE in a CATCH block  
 The following example shows a `SELECT` statement that generates a divide-by-zero error. The state of the error is returned.  
  
```  
BEGIN TRY  
    -- Generate a divide by zero error  
    SELECT 1/0;  
END TRY  
BEGIN CATCH  
    SELECT ERROR_STATE() AS ErrorState;  
END CATCH;  
GO  
```  
  
### B. Using ERROR_STATE in a CATCH block with other error-handling tools  
 The following example shows a `SELECT` statement that generates a divide-by-zero error. Along with the error state, information that relates to the error is returned.  
  
```  
BEGIN TRY  
    -- Generate a divide-by-zero error.  
    SELECT 1/0;  
END TRY  
BEGIN CATCH  
    SELECT  
        ERROR_NUMBER() AS ErrorNumber,  
        ERROR_SEVERITY() AS ErrorSeverity,  
        ERROR_STATE() AS ErrorState,  
        ERROR_PROCEDURE() AS ErrorProcedure,  
        ERROR_LINE() AS ErrorLine,  
        ERROR_MESSAGE() AS ErrorMessage;  
END CATCH;  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### C. Using ERROR_STATE in a CATCH block  
 The following example shows a `SELECT` statement that generates a divide-by-zero error. The state of the error is returned.  
  
```  
BEGIN TRY  
    -- Generate a divide by zero error  
    SELECT 1/0;  
END TRY  
BEGIN CATCH  
    SELECT ERROR_STATE() AS ErrorState;  
END CATCH;  
GO  
```  
  
### D. Using ERROR_STATE in a CATCH block with other error-handling tools  
 The following example shows a `SELECT` statement that generates a divide-by-zero error. Along with the error state, information that relates to the error is returned.  
  
```  
BEGIN TRY  
    -- Generate a divide-by-zero error.  
    SELECT 1/0;  
END TRY  
BEGIN CATCH  
    SELECT  
        ERROR_NUMBER() AS ErrorNumber,  
        ERROR_SEVERITY() AS ErrorSeverity,  
        ERROR_STATE() AS ErrorState,  
        ERROR_PROCEDURE() AS ErrorProcedure,  
        ERROR_MESSAGE() AS ErrorMessage;  
END CATCH;  
GO  
```  
  
## See Also  
 [sys.messages &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/messages-for-errors-catalog-views-sys.messages.md)   
 [TRY...CATCH &#40;Transact-SQL&#41;](../Topic/TRY...CATCH%20\(Transact-SQL\).md)   
 [ERROR_LINE &#40;Transact-SQL&#41;](../../t-sql/functions/error-line-transact-sql.md)   
 [ERROR_MESSAGE &#40;Transact-SQL&#41;](../../t-sql/functions/error-message-transact-sql.md)   
 [ERROR_NUMBER &#40;Transact-SQL&#41;](../../t-sql/functions/error-number-transact-sql.md)   
 [ERROR_PROCEDURE &#40;Transact-SQL&#41;](../../t-sql/functions/error-procedure-transact-sql.md)   
 [ERROR_SEVERITY &#40;Transact-SQL&#41;](../../t-sql/functions/error-severity-transact-sql.md)   
 [RAISERROR &#40;Transact-SQL&#41;](../../t-sql/language-elements/raiserror-transact-sql.md)   
 [@@ERROR &#40;Transact-SQL&#41;](../../t-sql/functions/error-transact-sql.md)  
  
  

