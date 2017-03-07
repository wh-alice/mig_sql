---
title: "SYSUTCDATETIME (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2015-12-01"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "SYSUTCDATETIME"
  - "SYSUTCDATETIME_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "dates [SQL Server], functions"
  - "system time [SQL Server]"
  - "functions [SQL Server], date and time"
  - "time [SQL Server], functions"
  - "date and time [SQL Server], SYSUTCDATETIME"
  - "SYSUTCDATETIME function [SQL Server]"
  - "time [SQL Server], system"
ms.assetid: f14fc2cd-9ea8-4daf-88f4-418cf523ab55
caps.latest.revision: 39
ms.author: "rickbyh"
manager: "jhubbard"
---
# SYSUTCDATETIME (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns a **datetime2** value that contains the date and time of the computer on which the instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] is running. The date and time is returned as UTC time (Coordinated Universal Time). The fractional second precision specification has a range from 1 to 7 digits. The default precision is 7 digits.  
  
> [!NOTE]  
>  SYSDATETIME and SYSUTCDATE have more fractional seconds precision than GETDATE and GETUTCDATE. SYSDATETIMEOFFSET includes the system time zone offset. SYSDATETIME, SYSUTCDATE, and SYSDATETIMEOFFSET can be assigned to a variable of any one of the date and time types.  
  
 For an overview of all [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] date and time data types and functions, see [Date and Time Data Types and Functions](../../t-sql/functions/date-and-time-data-types-and-functions-transact-sql.md).  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
SYSUTCDATETIME ( )  
```  
  
## Return Type  
 **datetime2**  
  
## Remarks  
 [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] statements can refer to SYSUTCDATETIME anywhere they can refer to a **datetime2** expression.  
  
 SYSUTCDATETIME is a nondeterministic function. Views and expressions that reference this function in a column cannot be indexed.  
  
> [!NOTE]  
>  [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] obtains the date and time values by using the GetSystemTimeAsFileTime() Windows API. The accuracy depends on the computer hardware and version of Windows on which the instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] is running. The precision of this API is fixed at 100 nanoseconds. The accuracy can be determined by using the GetSystemTimeAdjustment() Windows API.  
  
## Examples  
 The following examples use the six [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] system functions that return current date and time to return the date, time, or both. The values are returned in series; therefore, their fractional seconds might be different.  
  
### A. Showing the formats that are returned by the date and time functions  
 The following example shows the different formats that are returned by the date and time functions.  
  
```  
SELECT SYSDATETIME() AS SYSDATETIME  
    ,SYSDATETIMEOFFSET() AS SYSDATETIMEOFFSET  
    ,SYSUTCDATETIME() AS SYSUTCDATETIME  
    ,CURRENT_TIMESTAMP AS CURRENT_TIMESTAMP  
    ,GETDATE() AS GETDATE  
    ,GETUTCDATE() AS GETUTCDATE;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `SYSDATETIME()      2007-04-30 13:10:02.0474381`  
  
 `SYSDATETIMEOFFSET()2007-04-30 13:10:02.0474381 -07:00`  
  
 `SYSUTCDATETIME()   2007-04-30 20:10:02.0474381`  
  
 `CURRENT_TIMESTAMP  2007-04-30 13:10:02.047`  
  
 `GETDATE()          2007-04-30 13:10:02.047`  
  
 `GETUTCDATE()       2007-04-30 20:10:02.047`  
  
### B. Converting date and time to date  
 The following example shows you how to convert date and time values to `date`.  
  
```  
SELECT CONVERT (date, SYSDATETIME())  
    ,CONVERT (date, SYSDATETIMEOFFSET())  
    ,CONVERT (date, SYSUTCDATETIME())  
    ,CONVERT (date, CURRENT_TIMESTAMP)  
    ,CONVERT (date, GETDATE())  
    ,CONVERT (date, GETUTCDATE());  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `2007-04-30`  
  
 `2007-04-30`  
  
 `2007-04-30`  
  
 `2007-04-30`  
  
 `2007-04-30`  
  
 `2007-04-30`  
  
### C. Converting date and time values to time  
 The following example shows you how to convert date and time values to `time`.  
  
 `DECLARE @DATETIME DATETIME = GetDate();`  
  
 `DECLARE @TIME TIME`  
  
 `SELECT @TIME = CONVERT(time, @DATETIME)`  
  
 `SELECT @TIME AS 'Time', @DATETIME AS 'Date Time'`  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `Time             Date Time`  
  
 `13:49:33.6330000 2009-04-22 13:49:33.633`  
  
## Examples: [!INCLUDE[ssSDWfull](../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../a9notintoc/includes/sspdw-md.md)]  
 The following examples use the six [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] system functions that return current date and time to return the date, time, or both. The values are returned in series; therefore, their fractional seconds might be different.  
  
### D. Showing the formats that are returned by the date and time functions  
 The following example shows the different formats that are returned by the date and time functions.  
  
```  
SELECT SYSDATETIME() AS SYSDATETIME  
    ,SYSDATETIMEOFFSET() AS SYSDATETIMEOFFSET  
    ,SYSUTCDATETIME() AS SYSUTCDATETIME  
    ,CURRENT_TIMESTAMP AS CURRENT_TIMESTAMP  
    ,GETDATE() AS GETDATE  
    ,GETUTCDATE() AS GETUTCDATE;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `SYSDATETIME()      2007-04-30 13:10:02.0474381`  
  
 `SYSDATETIMEOFFSET()2007-04-30 13:10:02.0474381 -07:00`  
  
 `SYSUTCDATETIME()   2007-04-30 20:10:02.0474381`  
  
 `CURRENT_TIMESTAMP  2007-04-30 13:10:02.047`  
  
 `GETDATE()          2007-04-30 13:10:02.047`  
  
 `GETUTCDATE()       2007-04-30 20:10:02.047`  
  
### E. Converting date and time to date  
 The following example shows you how to convert date and time values to `date`.  
  
```  
SELECT CONVERT (date, SYSDATETIME())  
    ,CONVERT (date, SYSDATETIMEOFFSET())  
    ,CONVERT (date, SYSUTCDATETIME())  
    ,CONVERT (date, CURRENT_TIMESTAMP)  
    ,CONVERT (date, GETDATE())  
    ,CONVERT (date, GETUTCDATE());  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `2007-04-30`  
  
 `2007-04-30`  
  
 `2007-04-30`  
  
 `2007-04-30`  
  
 `2007-04-30`  
  
 `2007-04-30`  
  
### F. Converting date and time values to time  
 The following example shows you how to convert date and time values to `time`.  
  
 `DECLARE @DATETIME DATETIME = GetDate();`  
  
 `DECLARE @TIME TIME`  
  
 `SELECT @TIME = CONVERT(time, @DATETIME)`  
  
 `SELECT @TIME AS 'Time', @DATETIME AS 'Date Time'`  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `Time             Date Time`  
  
 `13:49:33.6330000 2009-04-22 13:49:33.633`  
  
## See Also  
 [CAST and CONVERT &#40;Transact-SQL&#41;](../../t-sql/functions/cast-and-convert-transact-sql.md)   
 [Date and Time Data Types and Functions &#40;Transact-SQL&#41;](../../t-sql/functions/date-and-time-data-types-and-functions-transact-sql.md)   
 [AT TIME ZONE &#40;Transact-SQL&#41;](../../t-sql/queries/at-time-zone-transact-sql.md)  
  
  

