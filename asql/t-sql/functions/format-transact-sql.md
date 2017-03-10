---
title: "FORMAT (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-21"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "FORMAT_TSQL"
  - "FORMAT"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "FORMAT function"
ms.assetid: dad6f24c-b8d9-4dbe-a561-9b167b8f20c8
caps.latest.revision: 21
ms.author: "rickbyh"
manager: "jhubbard"
---
# FORMAT (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-asdb-xxxx-xxx_md](../../relational-databases/databases/includes/tsql-appliesto-ss2012-asdb-xxxx-xxx-md.md)]

  Returns a value formatted with the specified format and optional culture in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)]. Use the FORMAT function for locale-aware formatting of date/time and number values as strings. For general data type conversions, use CAST or CONVERT.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
FORMAT ( value, format [, culture ] )  
```  
  
## Arguments  
 *value*  
 Expression of a supported data type to format. For a list of valid types, see the table in the following Remarks section.  
  
 *format*  
 **nvarchar** format pattern.  
  
 The *format* argument must contain a valid .NET Framework format string, either as a standard format string (for example, "C" or "D"), or as a pattern of custom characters for dates and numeric values (for example, "MMMM DD, yyyy (dddd)"). Composite formatting is not supported. For a full explanation of these formatting patterns, please consult the .NET Framework documentation on string formatting in general, custom date and time formats, and custom number formats. A good starting point is the topic, "[Formatting Types](http://go.microsoft.com/fwlink/?LinkId=211776)."  
  
 *culture*  
 Optional **nvarchar** argument specifying a culture.  
  
 If the *culture* argument is not provided, the language of the current session is used. This language is set either implicitly, or explicitly by using the SET LANGUAGE statement. *culture* accepts any culture supported by the .NET Framework as an argument; it is not limited to the languages explicitly supported by [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] . If the *culture* argument is not valid, FORMAT raises an error.  
  
## Return Types  
 **nvarchar** or null  
  
 The length of the return value is determined by the *format*.  
  
## Remarks  
 FORMAT returns NULL for errors other than a *culture* that is not *valid*. For example, NULL is returned if the value specified in *format* is not valid.  
  
 FORMAT relies on the presence of .the .NET Framework Common Language Runtime (CLR).  
  
 This function will not be remoted since it depends on the presence of the CLR. Remoting a function that requires the CLR would cause an error on the remote server.  
  
 FORMAT relies upon CLR formatting rules which dictate that colons and periods must be escaped. Therefor, when the format string (second parameter) contains a colon or period, the colon or period must be escaped with backslash when an input value (first parameter) is of the **time** data type. See [D. FORMAT with time data types](#ExampleD).  
  
 The following table lists the acceptable data types for the *value* argument together with their .NET Framework mapping equivalent types.  
  
|Category|Type|.NET type|  
|--------------|----------|---------------|  
|Numeric|bigint|Int64|  
|Numeric|int|Int32|  
|Numeric|smallint|Int16|  
|Numeric|tinyint|Byte|  
|Numeric|decimal|SqlDecimal|  
|Numeric|numeric|SqlDecimal|  
|Numeric|float|Double|  
|Numeric|real|Single|  
|Numeric|smallmoney|Decimal|  
|Numeric|money|Decimal|  
|Date and Time|date|DateTime|  
|Date and Time|time|TimeSpan|  
|Date and Time|datetime|DateTime|  
|Date and Time|smalldatetime|DateTime|  
|Date and Time|datetime2|DateTime|  
|Date and Time|datetimeoffset|DateTimeOffset|  
  
## Examples  
  
### A. Simple FORMAT example  
 The following example returns a simple date formatted for different cultures.  
  
```  
DECLARE @d DATETIME = '10/01/2011';  
SELECT FORMAT ( @d, 'd', 'en-US' ) AS 'US English Result'  
      ,FORMAT ( @d, 'd', 'en-gb' ) AS 'Great Britain English Result'  
      ,FORMAT ( @d, 'd', 'de-de' ) AS 'German Result'  
      ,FORMAT ( @d, 'd', 'zh-cn' ) AS 'Simplified Chinese (PRC) Result';   
  
SELECT FORMAT ( @d, 'D', 'en-US' ) AS 'US English Result'  
      ,FORMAT ( @d, 'D', 'en-gb' ) AS 'Great Britain English Result'  
      ,FORMAT ( @d, 'D', 'de-de' ) AS 'German Result'  
      ,FORMAT ( @d, 'D', 'zh-cn' ) AS 'Chinese (Simplified PRC) Result';  
  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
  
US English Result Great Britain English Result  German Result Simplified Chinese (PRC) Result  
----------------  ----------------------------- ------------- -------------------------------------  
10/1/2011         01/10/2011                    01.10.2011    2011/10/1  
  
(1 row(s) affected)  
  
US English Result            Great Britain English Result  German Result                    Chinese (Simplified PRC) Result  
---------------------------- ----------------------------- -----------------------------  ---------------------------------------  
Saturday, October 01, 2011   01 October 2011               Samstag, 1. Oktober 2011        2011年10月1日  
  
(1 row(s) affected)  
  
```  
  
### B. FORMAT with custom formatting strings  
 The following example shows formatting numeric values by specifying a custom format. For more information about these and other custom formats, see [Custom Numeric Format Strings](http://msdn.microsoft.com/library/0c899ak8.aspx).  
  
```  
-- Current date is September 27 2012.  
DECLARE @d DATETIME = GETDATE();  
SELECT FORMAT( @d, 'dd/MM/yyyy', 'en-US' ) AS 'DateTime Result'  
       ,FORMAT(123456789,'###-##-####') AS 'Custom Number Result';  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
  
DateTime Result  Custom Number Result  
--------------   --------------------  
27/09/2012       123-45-6789  
  
(1 row(s) affected)  
  
```  
  
### C. FORMAT with numeric types  
 The following example returns 5 rows from the **Sales.CurrencyRate** table in the [!INCLUDE[ssSampleDBnormal](../../analysis-services/data-mining/includes/sssampledbnormal-md.md)] database. The column **EndOfDateRate** is stored as type **money** in the table. In this example, the column is returned unformatted and then formatted by specifying the .NET Number format, General format, and Currency format types. For more information about these and other numeric formats, see [Standard Numeric Format Strings](http://msdn.microsoft.com/library/dwhawy9k.aspx).  
  
```  
  
bSELECT TOP(5)CurrencyRateID, EndOfDayRate  
            ,FORMAT(EndOfDayRate, 'N', 'en-us') AS 'Number Format'  
            ,FORMAT(EndOfDayRate, 'G', 'en-us') AS 'General Format'  
            ,FORMAT(EndOfDayRate, 'C', 'en-us') AS 'Currency Format'  
FROM Sales.CurrencyRate  
ORDER BY CurrencyRateID;  
  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
  
CurrencyRateID EndOfDayRate  Numeric Format  General Format  Currency Format  
-------------- ------------  --------------  --------------  ---------------  
1              1.0002        1.00            1.0002          $1.00  
2              1.55          1.55            1.5500          $1.55  
3              1.9419        1.94            1.9419          $1.94  
4              1.4683        1.47            1.4683          $1.47  
5              8.2784        8.28            8.2784          $8.28  
  
(5 row(s) affected)  
  
```  
  
 This example specifies the German culture (de-de).  
  
```  
  
SELECT TOP(5)CurrencyRateID, EndOfDayRate  
      ,FORMAT(EndOfDayRate, 'N', 'de-de') AS 'Numeric Format'  
      ,FORMAT(EndOfDayRate, 'G', 'de-de') AS 'General Format'  
      ,FORMAT(EndOfDayRate, 'C', 'de-de') AS 'Currency Format'  
FROM Sales.CurrencyRate  
ORDER BY CurrencyRateID;  
  
```  
  
```  
  
CurrencyRateID EndOfDayRate  Numeric Format  General Format  Currency Format  
-------------- ------------  --------------  --------------  ---------------  
1              1.0002        1,00            1,0002          1,00 €  
2              1.55          1,55            1,5500          1,55 €  
3              1.9419        1,94            1,9419          1,94 €  
4              1.4683        1,47            1,4683          1,47 €  
5              8.2784        8,28            8,2784          8,28 €  
  
 (5 row(s) affected)  
  
```  
  
###  <a name="ExampleD"></a> D. FORMAT with time data types  
 FORMAT returns NULL in these cases because . and : are not escaped.  
  
```  
SELECT FORMAT(cast('07:35' as time), N'hh.mm');   --> returns NULL  
SELECT FORMAT(cast('07:35' as time), N'hh:mm');   --> returns NULL  
```  
  
 Format returns a formatted string because the . and : are escaped.  
  
```  
SELECT FORMAT(cast('07:35' as time), N'hh\.mm');  --> returns 07.35  
SELECT FORMAT(cast('07:35' as time), N'hh\:mm');  --> returns 07:35  
```  
  
## See Also  
 [CAST and CONVERT &#40;Transact-SQL&#41;](../../t-sql/functions/cast-and-convert-transact-sql.md)  
  
  