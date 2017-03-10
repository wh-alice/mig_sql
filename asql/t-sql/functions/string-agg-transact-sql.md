---
title: "STRING_AGG (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2017-02-24"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "STRING_AGG"
  - "STRING_AGG_TSQL"
helpviewer_keywords: 
  - "STRING_AGG function"
ms.assetid: 8860ef3f-142f-4cca-aa64-87a123e91206
caps.latest.revision: 13
ms.author: "rickbyh"
manager: "jhubbard"
---
# STRING_AGG (Transact-SQL)
[!INCLUDE[tsql-appliesto-ssvNxt-asdb-xxxx-xxx](../../t-sql/functions/includes/tsql-appliesto-ssvnxt-asdb-xxxx-xxx.md)]

Concatenates the values of string expressions and places separator values between them. The separator is not added at the end of string.
 
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
STRING_AGG ( expression, separator [ <order_clause> ] )

<order_clause> ::=   
    WITHIN GROUP ( ORDER BY <order_by_expression_list> [ ASC | DESC ] )   
```

## Arguments 

*separator*  
Is an [expression](../../t-sql/language-elements/expressions-transact-sql.md) of `NVARCHAR` or `VARCHAR` type that is used as separator for concatenated strings. It can be literal or variable. 

*expression*  
Is an [expression](../../t-sql/language-elements/expressions-transact-sql.md) of any type. Expressions are converted to `NVARCHAR` or `VARCHAR` types during concatenation. Non-string types are converted to `NVARCHAR` type.


<order_clause>   
Optionally specify order of concatenated results using `WITHIN GROUP` clause:
```
WITHIN GROUP ( ORDER BY <order_by_expression_list> [ ASC | DESC ] )
```   
<order_by_expression_list>   
**Applies to:** [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)] CTP 1.1.   
  A list of non-constant [expressions](../../t-sql/language-elements/expressions-transact-sql.md) that can be used for sorting results. Only one `order_by_expression` is allowed per query. The default sort order is ascending.   
  

## Return Types 

Return type is depends on first argument (expression). If input argument is string type (`NVARCHAR`, `VARCHAR`), result type will be same as input type. The following table lists automatic conversions:  

|Input expression type |Result | 
|-------|-------|
|NVARCHAR(MAX) |NVARCHAR(MAX) |
|VARCHAR(MAX) |VARCHAR(MAX) |
|NVARCHAR(1…4000) |NVARCHAR(4000) |
|VARCHAR(1…8000) |VARCHAR(8000) |
|int, bigint, smallint, tinyint, numeric, float, real, bit, decimal, smallmoney, money, datetime, datetime2, |NVARCHAR(4000) |


## Remarks  
 
`STRING_AGG` aggregate takes all expressions from rows and concatenates them into a single string. Expression values are implicitly converted to string types and then concatenated. The implicit conversion to strings follows the existing rules for data type conversions. For more information about data type conversions, see [CAST and CONVERT (Transact-SQL)](../../t-sql/functions/cast-and-convert-transact-sql.md). 

If the input expression is type `VARCHAR`, the separator cannot be type `NVARCHAR`. 

Null values are ignored and the corresponding separator is not added. To return a place holder for null values, use the `ISNULL` function as demonstrated in example B.

`STRING_AGG` is available in any compatibility level.


## Examples 

### A. Generate list of names separated in new lines 
The following example produces a list of names in a single result cell, separated with carriage returns.
```tsql
SELECT STRING_AGG (FirstName, CHAR(13)) AS csv 
FROM Person.Person; 
```
[!INCLUDE[ssResult_md](../../relational-databases/includes/ssresult-md.md)]

|csv | 
|--- |
|Syed <br />Catherine <br />Kim <br />Kim <br />Kim <br />Hazem <br />... | 

`NULL` values found in `name` cells are not returned in result.   
> [!NOTE]  
>  If using the Management Studio Query Editor, the **Results to Grid** option cannot implement the carriage return. Switch to **Results to Text** to see the result set properly.   


### B. Generate list of names separated with comma without NULL values   
The following example replaces null values with 'N/A' and returns the names separated by commas in a single result cell.  
```tsql
SELECT STRING_AGG ( ISNULL(FirstName,'N/A'), ',') AS csv 
FROM Person.Person; 
```

[!INCLUDE[ssResult_md](../../relational-databases/includes/ssresult-md.md)]
 

|Csv | 
|--- |
|John,N/A,Mike,Peter,N/A,N/A,Alice,Bob |  


### C. Generate comma-separated values 

```tsql   
SELECT 
STRING_AGG(CONCAT(FirstName, ' ', LastName, ' (', ModifiedDate, ')'), CHAR(13)) 
  AS names 
FROM Person.Person; 
```
[!INCLUDE[ssResult_md](../../relational-databases/includes/ssresult-md.md)]

|names | 
|--- |
|Ken Sánchez (Feb  8 2003 12:00AM) <br />Terri Duffy (Feb 24 2002 12:00AM) <br />Roberto Tamburello (Dec  5 2001 12:00AM) <br />Rob Walters (Dec 29 2001 12:00AM) <br />... |

> [!NOTE]  
>  If using the Management Studio Query Editor, the **Results to Grid** option cannot implement the carriage return. Switch to **Results to Text** to see the result set properly.   
 

### D. Return news articles with related tags 

Article and their tags are separated into different tables. Developer wants to return one row per each article with all associated tags. Using following query: 
```tsql
SELECT a.articleId, title, STRING_AGG (tag, ',') as tags 
FROM dbo.Article AS a       
LEFT JOIN dbo.ArticleTag AS t 
    ON a.ArticleId = t.ArticleId 
GROUP BY a.articleId, title;
```

[!INCLUDE[ssResult_md](../../relational-databases/includes/ssresult-md.md)]

|articleId |title |tags |
|--- |--- |--- |
|172 |Polls indicate close election results |politics,polls,city council | 
|176 |New highway expected to reduce congestion |NULL |
|177 |Dogs continue to be more popular than cats |polls,animals| 

### E. Generate list of emails per towns

The following query finds the email addresses of employees and groups them by towns: 
```tsql
SELECT town, STRING_AGG (email, ';') AS emails 
FROM dbo.Employee 
GROUP BY town; 
```

[!INCLUDE[ssResult_md](../../relational-databases/includes/ssresult-md.md)]

|town |emails |
|--- |--- |
|Seattle |syed0@adventure-works.com;catherine0@adventure-works.com;kim2@adventure-works.com |
|LA |sam1@adventure-works.com;hazem0@adventure-works.com |

Emails returned in the emails column can be directly used to send emails to group of people working in some particular towns. 

### F. Generate a sorted list of emails per towns   
**Applies to:** [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)] CTP 1.1.   
Similar to previous example, the following query finds the email addresses of employees, groups them by town, and sorts the emails alphabetically:   
```tsql
SELECT town, 
    STRING_AGG (email, ';') WITHIN GROUP (ORDER BY email ASC) AS emails 
FROM dbo.Employee 
GROUP BY town; 
```
   
[!INCLUDE[ssResult_md](../../relational-databases/includes/ssresult-md.md)]

|town |emails |
|--- |--- |
|Seattle |catherine0@adventure-works.com;kim2@adventure-works.com;syed0@adventure-works.com |
|LA |hazem0@adventure-works.com;sam1@adventure-works.com |


## See Also  

[String Functions (Transact-SQL)](../../t-sql/functions/string-functions-transact-sql.md)  
