---
title: "SMALLDATETIMEFROMPARTS (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "SMALLDATETIMEFROMPARTS"
  - "SMALLDATETIMEFROMPARTS_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "SMALLDATETIMEFROMPARTS function"
ms.assetid: 7467fdab-e588-419c-9e29-42caec34a9ea
caps.latest.revision: 14
ms.author: "rickbyh"
manager: "jhubbard"
---
# SMALLDATETIMEFROMPARTS (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-all_md](../../relational-databases/indexes/includes/tsql-appliesto-ss2012-all-md.md)]

  Returns a **smalldatetime** value for the specified date and time.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
SMALLDATETIMEFROMPARTS ( year, month, day, hour, minute )  
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
  
## Return Types  
 **smalldatetime**  
  
## Remarks  
 This functions acts like a constructor for a fully initialized **smalldatetime** value. If the arguments are not valid, then an error is thrown. If required arguments are null, then null is returned.  
  
 This function is capable of being remoted to [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] servers and above. It will not be remoted to servers that have a version below [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].  
  
## Examples  
  
```  
SELECT SMALLDATETIMEFROMPARTS ( 2010, 12, 31, 23, 59 ) AS Result  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
Result  
---------------------------  
2011-01-01 00:00:00  
  
(1 row(s) affected)  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../a9notintoc/includes/sspdw-md.md)]  
  
```  
SELECT SMALLDATETIMEFROMPARTS ( 2010, 12, 31, 23, 59 ) AS Result  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
Result  
---------------------------  
2011-01-01 00:00:00  
  
(1 row(s) affected)  
```  
  
  

