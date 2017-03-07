---
title: "MONTH (Transact-SQL) | Microsoft Docs"
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
  - "MONTH_TSQL"
  - "MONTH"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "values [SQL Server], date and time"
  - "dates [SQL Server], functions"
  - "month of year [SQL Server]"
  - "date and time [SQL Server], MONTH"
  - "dateparts [SQL Server], month"
  - "functions [SQL Server], date and time"
  - "dates [SQL Server], MONTH"
  - "MONTH function [SQL Server]"
ms.assetid: 9dd8aff7-b0fc-45df-b316-ead14ee9b8b7
caps.latest.revision: 29
ms.author: "rickbyh"
manager: "jhubbard"
---
# MONTH (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns an integer that represents the month of the specified *date*.  
  
 For an overview of all [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] date and time data types and functions, see[Date and Time Data Types and Functions &#40;Transact-SQL&#41;](../../t-sql/functions/date-and-time-data-types-and-functions-transact-sql.md).  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
MONTH ( date )  
```  
  
## Arguments  
 *date*  
 Is an expression that can be resolved to a **time**, **date**, **smalldatetime**, **datetime**, **datetime2**, or **datetimeoffset** value. The *date* argument can be an expression, column expression, user-defined variable, or string literal.  
  
## Return Type  
 **int**  
  
## Return Value  
 MONTH returns the same value as [DATEPART](../../t-sql/functions/datepart-transact-sql.md) (**month**, *date*).  
  
 If *date* contains only a time part, the return value is 1, the base month.  
  
## Examples  
 The following statement returns `4`. This is the number of the month.  
  
```  
SELECT MONTH('2007-04-30T01:01:01.1234567 -07:00');  
```  
  
 The following statement returns `1900, 1, 1`. The argument for *date* is the number `0`. [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] interprets `0` as January 1, 1900.  
  
```  
SELECT YEAR(0), MONTH(0), DAY(0);  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../a9notintoc/includes/sspdw-md.md)]  
 The following example returns `4`. This is the number of the month.  
  
```  
-- Uses AdventureWorks  
  
SELECT TOP 1 MONTH('2007-04-30T01:01:01.1234')   
FROM dbo.DimCustomer;  
```  
  
 The following example returns `1900, 1, 1`. The argument for *date* is the number `0`. [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] interprets `0` as January 1, 1900.  
  
```  
-- Uses AdventureWorks  
  
SELECT TOP 1 YEAR(0), MONTH(0), DAY(0) FROM dbo.DimCustomer;  
```  
  
## See Also  
 [CAST and CONVERT &#40;Transact-SQL&#41;](../../t-sql/functions/cast-and-convert-transact-sql.md)  
  
  

