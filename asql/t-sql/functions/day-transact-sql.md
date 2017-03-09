---
title: "DAY (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-01-06"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "DAY_TSQL"
  - "DAY"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "date and time [SQL Server], DAY"
  - "dates [SQL Server], functions"
  - "DAY function [SQL Server]"
  - "dates [SQL Server], days"
  - "functions [SQL Server], date and time"
  - "dateparts [SQL Server], day"
ms.assetid: 2f4410ea-fd3e-4d69-ac4b-3b0091a084bc
caps.latest.revision: 41
ms.author: "rickbyh"
manager: "jhubbard"
---
# DAY (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns an integer representing the day (day of the month) of the specified *date*.  
  
 For an overview of all [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] date and time data types and functions, see [Date and Time Data Types and Functions &#40;Transact-SQL&#41;](../../t-sql/functions/date-and-time-data-types-and-functions-transact-sql.md).  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
DAY ( date )  
```  
  
## Arguments  
 *date*  
 Is an expression that can be resolved to a **time**, **date**, **smalldatetime**, **datetime**, **datetime2**, or **datetimeoffset** value. The *date* argument can be an expression, column expression, user-defined variable or string literal.  
  
## Return Type  
 **int**  
  
## Return Value  
 DAY returns the same value as [DATEPART](../../t-sql/functions/datepart-transact-sql.md) (**day**, *date*).  
  
 If *date* contains only a time part, the return value is 1, the base day.  
  
## Examples  
 The following statement returns `30`. This is the number of the day.  
  
```  
SELECT DAY('2015-04-30 01:01:01.1234567');  
```  
  
 The following statement returns `1900, 1, 1`. The argument for *date* is the number `0`. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] interprets `0` as January 1, 1900.  
  
```  
SELECT YEAR(0), MONTH(0), DAY(0);  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 The following example returns `30`. This is the number of the day.  
  
```  
-- Uses AdventureWorks  
  
SELECT TOP 1 DAY('2010-07-30T01:01:01.1234')   
FROM dbo.DimCustomer;  
```  
  
 The following example returns `1900, 1, 1`. The argument for *date* is the number `0`. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] interprets `0` as January 1, 1900.  
  
```  
-- Uses AdventureWorks  
  
SELECT TOP 1 YEAR(0), MONTH(0), DAY(0) FROM dbo.DimCustomer;  
```  
  
## See Also  
 [CAST and CONVERT &#40;Transact-SQL&#41;](../../t-sql/functions/cast-and-convert-transact-sql.md)  
  
  

