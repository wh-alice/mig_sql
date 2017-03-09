---
title: "GETDATE (Transact-SQL) | Microsoft Docs"
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
  - "GETDATE_TSQL"
  - "GETDATE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "dates [SQL Server], functions"
  - "GETDATE function [SQL Server]"
  - "current date and time [SQL Server]"
  - "time [SQL Server], current"
  - "functions [SQL Server], time"
  - "system date and time [SQL Server]"
  - "system time [SQL Server]"
  - "functions [SQL Server], date and time"
  - "time [SQL Server], functions"
  - "dates [SQL Server], current date and time"
  - "date and time [SQL Server], GETDATE"
  - "dates [SQL Server], system date and time"
  - "time [SQL Server], system"
ms.assetid: bebe3b65-2b3e-4c73-bf80-ff1132c680a7
caps.latest.revision: 46
ms.author: "rickbyh"
manager: "jhubbard"
---
# GETDATE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the current database system timestamp as a **datetime** value without the database time zone offset. This value is derived from the operating system of the computer on which the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is running.  
  
> [!NOTE]  
>  SYSDATETIME and SYSUTCDATETIME have more fractional seconds precision than GETDATE and GETUTCDATE. SYSDATETIMEOFFSET includes the system time zone offset. SYSDATETIME, SYSUTCDATETIME, and SYSDATETIMEOFFSET can be assigned to a variable of any of the date and time types.  
  
 For an overview of all [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] date and time data types and functions, see [Date and Time Data Types and Functions &#40;Transact-SQL&#41;](../../t-sql/functions/date-and-time-data-types-and-functions-transact-sql.md).  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
GETDATE ( )  
```  
  
## Return Type  
 **datetime**  
  
## Remarks  
 [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements can refer to GETDATE anywhere they can refer to a **datetime** expression.  
  
 GETDATE is a nondeterministic function. Views and expressions that reference this function in a column cannot be indexed.  
  
 Using SWITCHOFFSET with the function GETDATE() can cause the query to run slowly because the query optimizer is unable to obtain accurate cardinality estimates for the GETDATE value. We recommend that you precompute the GETDATE value and then specify that value in the query as shown in the following example. In addition,  use the OPTION (RECOMPILE) query hint to force  the query optimizer to recompile a query plan the next time the same query is executed. The optimizer will then have accurate cardinality estimates for GETDATE() and will produce a more efficient query plan.  
  
```  
DECLARE @dt datetimeoffset = switchoffset (CONVERT(datetimeoffset, GETDATE()), '-04:00');   
SELECT * FROM t    
WHERE c1 > @dt OPTION (RECOMPILE);  
  
```  
  
## Examples  
 The following examples use the six [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] system functions that return current date and time to return the date, time, or both. The values are returned in series; therefore, their fractional seconds might be different.  
  
### A. Getting the current system date and time  
  
```  
SELECT SYSDATETIME()  
    ,SYSDATETIMEOFFSET()  
    ,SYSUTCDATETIME()  
    ,CURRENT_TIMESTAMP  
    ,GETDATE()  
    ,GETUTCDATE();  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `SYSDATETIME()      2007-04-30 13:10:02.0474381`  
  
 `SYSDATETIMEOFFSET()2007-04-30 13:10:02.0474381 -07:00`  
  
 `SYSUTCDATETIME()   2007-04-30 20:10:02.0474381`  
  
 `CURRENT_TIMESTAMP  2007-04-30 13:10:02.047`  
  
 `GETDATE()          2007-04-30 13:10:02.047`  
  
 `GETUTCDATE()       2007-04-30 20:10:02.047`  
  
### B. Getting the current system date  
  
```  
SELECT CONVERT (date, SYSDATETIME())  
    ,CONVERT (date, SYSDATETIMEOFFSET())  
    ,CONVERT (date, SYSUTCDATETIME())  
    ,CONVERT (date, CURRENT_TIMESTAMP)  
    ,CONVERT (date, GETDATE())  
    ,CONVERT (date, GETUTCDATE());  
  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `SYSDATETIME()          2007-05-03`  
  
 `SYSDATETIMEOFFSET()    2007-05-03`  
  
 `SYSUTCDATETIME()       2007-05-04`  
  
 `CURRENT_TIMESTAMP      2007-05-03`  
  
 `GETDATE()              2007-05-03`  
  
 `GETUTCDATE()           2007-05-04`  
  
### C. Getting the current system time  
  
```  
SELECT CONVERT (time, SYSDATETIME())  
    ,CONVERT (time, SYSDATETIMEOFFSET())  
    ,CONVERT (time, SYSUTCDATETIME())  
    ,CONVERT (time, CURRENT_TIMESTAMP)  
    ,CONVERT (time, GETDATE())  
    ,CONVERT (time, GETUTCDATE());  
  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `SYSDATETIME()      13:18:45.3490361`  
  
 `SYSDATETIMEOFFSET()13:18:45.3490361`  
  
 `SYSUTCDATETIME()   20:18:45.3490361`  
  
 `CURRENT_TIMESTAMP  13:18:45.3470000`  
  
 `GETDATE()          13:18:45.3470000`  
  
 `GETUTCDATE()       20:18:45.3470000`  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 The following examples use the three [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] system functions that return current date and time to return the date, time, or both. The values are returned in series; therefore, their fractional seconds might be different.  
  
### D. Getting the current system date and time  
  
```  
SELECT SYSDATETIME()  
    ,CURRENT_TIMESTAMP  
    ,GETDATE();  
```  
  
### E. Getting the current system date  
  
```  
SELECT CONVERT (date, SYSDATETIME())  
    ,CONVERT (date, CURRENT_TIMESTAMP)  
    ,CONVERT (date, GETDATE());  
  
```  
  
### F. Getting the current system time  
  
```  
SELECT CONVERT (time, SYSDATETIME())  
    ,CONVERT (time, CURRENT_TIMESTAMP)  
    ,CONVERT (time, GETDATE());  
  
```  
  
## See Also  
 [CAST and CONVERT &#40;Transact-SQL&#41;](../../t-sql/functions/cast-and-convert-transact-sql.md)  
  
  

