---
title: "DATETIMEFROMPARTS (Transact-SQL) | Microsoft Docs"
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
  - "DATETIMEFROMPARTS_TSQL"
  - "DATETIMEFROMPARTS"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "DATETIMEFROMPARTS function"
ms.assetid: 6008148b-bf75-4c98-9392-68a89fa0711c
caps.latest.revision: 16
ms.author: "rickbyh"
manager: "jhubbard"
---
# DATETIMEFROMPARTS (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-all_md](../../relational-databases/indexes/includes/tsql-appliesto-ss2012-all-md.md)]

  Returns a **datetime** value for the specified date and time.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
DATETIMEFROMPARTS ( year, month, day, hour, minute, seconds, milliseconds )  
```  
  
## Arguments  
 *year*  
 Integer expression specifying a year.  
  
 *month*  
 Integer expression specifying a month.  
  
 *day*  
 Integer expression specifying a day.  
  
 *hour*  
 Integer expression specifying hours.  
  
 *minute*  
 Integer expression specifying minutes.  
  
 *seconds*  
 Integer expression specifying seconds.  
  
 *milliseconds*  
 Integer expression specifying milliseconds.  
  
## Return Types  
 **datetime**  
  
## Remarks  
 **DATETIMEFROMPARTS** returns a fully initialized **datetime** value. If the arguments are not valid, then an error is raised. If required arguments are null, then a null is returned.  
  
 This function is capable of being remoted to [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] servers and above. It will not be remoted to servers that have a version below [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].  
  
## Examples  
  
```  
SELECT DATETIMEFROMPARTS ( 2010, 12, 31, 23, 59, 59, 0 ) AS Result;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
Result  
---------------------------  
2010-12-31 23:59:59.000  
  
(1 row(s) affected)  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
```  
SELECT DATETIMEFROMPARTS ( 2010, 12, 31, 23, 59, 59, 0 ) AS Result;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
Result  
---------------------------  
2010-12-31 23:59:59.000  
  
(1 row(s) affected)  
```  
  
## See Also  
 [datetime &#40;Transact-SQL&#41;](../../t-sql/data-types/datetime-transact-sql.md)  
  
  

