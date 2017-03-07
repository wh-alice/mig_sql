---
title: "@@ERROR (Transact-SQL) | Microsoft Docs"
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
  - "@@ERROR"
  - "@@ERROR_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "@@ERROR function"
  - "errors [SQL Server], Transact-SQL"
  - "error numbers [SQL Server]"
ms.assetid: c8b43477-b6c0-49bf-a608-394a0b6cc7a2
caps.latest.revision: 50
ms.author: "rickbyh"
manager: "jhubbard"
---
# @@ERROR (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the error number for the last [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] statement executed.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
@@ERROR  
```  
  
## Return Types  
 integer  
  
## Remarks  
 Returns 0 if the previous [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] statement encountered no errors.  
  
 Returns an error number if the previous statement encountered an error. If the error was one of the errors in the sys.messages catalog view, then @@ERROR contains the value from the sys.messages.message_id column for that error. You can view the text associated with an @@ERROR error number in sys.messages.  
  
 Because @@ERROR is cleared and reset on each statement executed, check it immediately following the statement being verified, or save it to a local variable that can be checked later.  
  
 Use the TRY...CATCH construct to handle errors. The TRY...CATCH construct also supports additional system functions (ERROR_LINE, ERROR_MESSAGE, ERROR_PROCEDURE, ERROR_SEVERITY, and ERROR_STATE) that return more error information than @@ERROR. TRY...CATCH also supports an ERROR_NUMBER function that is not limited to returning the error number in the statement immediately after the statement that generated an error. For more information, see [TRY...CATCH &#40;Transact-SQL&#41;](../Topic/TRY...CATCH%20\(Transact-SQL\).md).  
  
## Examples  
  
### A. Using @@ERROR to detect a specific error  
 The following example uses `@@ERROR` to check for a check constraint violation (error #547) in an `UPDATE` statement.  
  
```  
USE AdventureWorks2012;  
GO  
UPDATE HumanResources.EmployeePayHistory  
    SET PayFrequency = 4  
    WHERE BusinessEntityID = 1;  
IF @@ERROR = 547  
    PRINT N'A check constraint violation occurred.';  
GO  
```  
  
### B. Using @@ERROR to conditionally exit a procedure  
 The following examples uses `IF...ELSE` statements to test `@@ERROR` after an `INSERT` statement in a stored procedure. The value of the `@@ERROR` variable determines the return code sent to the calling program, indicating success or failure of the procedure.  
  
```  
USE AdventureWorks2012;  
GO  
-- Drop the procedure if it already exists.  
IF OBJECT_ID(N'HumanResources.usp_DeleteCandidate', N'P') IS NOT NULL  
    DROP PROCEDURE HumanResources.usp_DeleteCandidate;  
GO  
-- Create the procedure.  
CREATE PROCEDURE HumanResources.usp_DeleteCandidate   
    (  
    @CandidateID INT  
    )  
AS  
-- Execute the DELETE statement.  
DELETE FROM HumanResources.JobCandidate  
    WHERE JobCandidateID = @CandidateID;  
-- Test the error value.  
IF @@ERROR <> 0   
    BEGIN  
        -- Return 99 to the calling program to indicate failure.  
        PRINT N'An error occurred deleting the candidate information.';  
        RETURN 99;  
    END  
ELSE  
    BEGIN  
        -- Return 0 to the calling program to indicate success.  
        PRINT N'The job candidate has been deleted.';  
        RETURN 0;  
    END;  
GO  
```  
  
### C. Using @@ERROR with @@ROWCOUNT  
 The following example uses `@@ERROR` with `@@ROWCOUNT` to validate the operation of an `UPDATE` statement. The value of `@@ERROR` is checked for any indication of an error, and `@@ROWCOUNT` is used to ensure that the update was successfully applied to a row in the table.  
  
```  
USE AdventureWorks2012;  
GO  
IF OBJECT_ID(N'Purchasing.usp_ChangePurchaseOrderHeader',N'P')IS NOT NULL  
    DROP PROCEDURE Purchasing.usp_ChangePurchaseOrderHeader;  
GO  
CREATE PROCEDURE Purchasing.usp_ChangePurchaseOrderHeader  
    (  
    @PurchaseOrderID INT  
    ,@BusinessEntityID INT  
   )  
AS  
-- Declare variables used in error checking.  
DECLARE @ErrorVar INT;  
DECLARE @RowCountVar INT;  
  
-- Execute the UPDATE statement.  
UPDATE PurchaseOrderHeader   
    SET BusinessEntityID = @BusinessEntityID   
    WHERE PurchaseOrderID = @PurchaseOrderID;  
  
-- Save the @@ERROR and @@ROWCOUNT values in local   
-- variables before they are cleared.  
SELECT @ErrorVar = @@ERROR  
    ,@RowCountVar = @@ROWCOUNT;  
  
-- Check for errors. If an invalid @BusinessEntityID was specified,  
-- the UPDATE statement returns a foreign key violation error #547.  
IF @ErrorVar <> 0  
    BEGIN  
        IF @ErrorVar = 547  
            BEGIN  
                PRINT N'ERROR: Invalid ID specified for new employee.';  
                 RETURN 1;  
            END  
        ELSE  
            BEGIN  
                PRINT N'ERROR: error '  
                    + RTRIM(CAST(@ErrorVar AS NVARCHAR(10)))  
                    + N' occurred.';  
                RETURN 2;  
            END  
    END  
  
-- Check the row count. @RowCountVar is set to 0   
-- if an invalid @PurchaseOrderID was specified.  
IF @RowCountVar = 0  
    BEGIN  
        PRINT 'Warning: The BusinessEntityID specified is not valid';  
        RETURN 1;  
    END  
ELSE  
    BEGIN  
        PRINT 'Purchase order updated with the new employee';  
        RETURN 0;  
    END;  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../a9notintoc/includes/sspdw-md.md)]  
  
### D. Using @@ERROR to return an error number  
 The following example uses `@@ERROR` to return the error generated by a failed data type conversion.  
  
```  
DECLARE @myint int;  
SET @myint = 'ABC';  
GO  
SELECT 'Error number was: ', @@ERROR;   
GO  
```  
  
## See Also  
 [TRY...CATCH &#40;Transact-SQL&#41;](../Topic/TRY...CATCH%20\(Transact-SQL\).md)   
 [ERROR_LINE &#40;Transact-SQL&#41;](../../t-sql/functions/error-line-transact-sql.md)   
 [ERROR_MESSAGE &#40;Transact-SQL&#41;](../../t-sql/functions/error-message-transact-sql.md)   
 [ERROR_NUMBER &#40;Transact-SQL&#41;](../../t-sql/functions/error-number-transact-sql.md)   
 [ERROR_PROCEDURE &#40;Transact-SQL&#41;](../../t-sql/functions/error-procedure-transact-sql.md)   
 [ERROR_SEVERITY &#40;Transact-SQL&#41;](../../t-sql/functions/error-severity-transact-sql.md)   
 [ERROR_STATE &#40;Transact-SQL&#41;](../../t-sql/functions/error-state-transact-sql.md)   
 [@@ROWCOUNT &#40;Transact-SQL&#41;](../../t-sql/functions/rowcount-transact-sql.md)   
 [sys.messages &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/messages-for-errors-catalog-views-sys.messages.md)  
  
  

