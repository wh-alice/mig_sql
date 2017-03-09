---
title: "smalldatetime (Transact-SQL) | Microsoft Docs"
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
  - "smalldatetime_TSQL"
  - "smalldatetime"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "time [SQL Server], data types"
  - "smalldatetime data type [SQL Server]"
  - "dates [SQL Server], data types"
  - "date and time [SQL Server], smalldatetime"
  - "data types [SQL Server], date and time"
ms.assetid: 68b74610-d54c-4c8e-b4b2-7e3747546ee0
caps.latest.revision: 50
ms.author: "rickbyh"
manager: "jhubbard"
---
# smalldatetime (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Defines a date that is combined with a time of day. The time is based on a 24-hour day, with seconds always zero (:00) and without fractional seconds.  
  
> [!NOTE]  
>  Use the **time**, **date**, **datetime2** and **datetimeoffset** data types for new work. These types align with the SQL Standard. They are more portable. **time**, **datetime2** and **datetimeoffset** provide more seconds precision. **datetimeoffset** provides time zone support for globally deployed applications.  
  
## smalldatetime Description  
  
|||  
|-|-|  
|Syntax|**smalldatetime**|  
|Usage|DECLARE @MySmalldatetime **smalldatetime**<br /><br /> CREATE TABLE Table1 ( Column1 **smalldatetime** )|  
|Default string literal formats<br /><br /> (used for down-level client)|Not applicable|  
|Date range|1900-01-01 through 2079-06-06<br /><br /> January 1, 1900, through June 6, 2079|  
|Time range|00:00:00 through 23:59:59<br /><br /> 2007-05-09 23:59:59 will round to<br /><br /> 2007-05-10 00:00:00|  
|Element ranges|YYYY is four digits, ranging from 1900, to 2079, that represent a year.<br /><br /> MM is two digits, ranging from 01 to 12, that represent a month in the specified year.<br /><br /> DD is two digits, ranging from 01 to 31 depending on the month, that represent a day of the specified month.<br /><br /> hh is two digits, ranging from 00 to 23, that represent the hour.<br /><br /> mm is two digits, ranging from 00 to 59, that represent the minute.<br /><br /> ss is two digits, ranging from 00 to 59, that represent the second. Values that are 29.998 seconds or less are rounded down to the nearest minute, Values of 29.999 seconds or more are rounded up to the nearest minute.|  
|Character length|19 positions maximum|  
|Storage size|4 bytes, fixed.|  
|Accuracy|One minute|  
|Default value|1900-01-01 00:00:00|  
|Calendar|Gregorian<br /><br /> (Does not include the complete range of years.)|  
|User-defined fractional second precision|No|  
|Time zone offset aware and preservation|No|  
|Daylight saving aware|No|  
  
## ANSI and ISO 8601 Compliance  
 **smalldatetime** is not ANSI or ISO 8601 compliant.  
  
##  <a name="_datetime"></a> Converting Date and Time Data  
 When you convert to date and time data types, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] rejects all values it cannot recognize as dates or times. For information about using the CAST and CONVERT functions with date and time data, see [CAST and CONVERT &#40;Transact-SQL&#41;](../../t-sql/functions/cast-and-convert-transact-sql.md).  
  
### Converting smalldatetime to Other Date and Time Types  
 This section describes what occurs when a **smalldatetime** data type is converted to other date and time data types.  
  
 In the case of conversion to **date**, the  year, month, and day are copied. The following code shows the results of converting a `smalldatetime` value to a `date` value.  
  
```  
DECLARE @smalldatetime smalldatetime = '1955-12-13 12:43:10';  
DECLARE @date date = @smalldatetime  
  
SELECT @smalldatetime AS '@smalldatetime', @date AS 'date';  
  
--Result  
--@smalldatetime          date  
------------------------- ----------  
--1955-12-13 12:43:00     1955-12-13  
--  
--(1 row(s) affected)  
```  
  
 When the conversion is to **time(n)**, the hours, minutes, and seconds are copied. The fractional seconds are set to 0. The following code shows the results of converting a `smalldatetime` value to a `time(4)` value.  
  
```  
DECLARE @smalldatetime smalldatetime = '1955-12-13 12:43:10';  
DECLARE @time time(4) = @smalldatetime;  
  
SELECT @smalldatetime AS '@smalldatetime', @time AS 'time';  
  
--Result  
--@smalldatetime          time  
------------------------- -------------  
--1955-12-13 12:43:00     12:43:00.0000  
--  
--(1 row(s) affected)  
```  
  
 When the conversion is to **datetime**, the **smalldatetime** value is copied to the **datetime** value. The fractional seconds are set to 0. The following code shows the results of converting a `smalldatetime` value to a `datetime` value.  
  
```  
DECLARE @smalldatetime smalldatetime = '1955-12-13 12:43:10';  
DECLARE @datetime datetime = @smalldatetime;  
  
SELECT @smalldatetime AS '@smalldatetime', @datetime AS 'datetime';  
  
--Result  
--@smalldatetime          datetime  
------------------------- -----------------------  
--1955-12-13 12:43:00     1955-12-13 12:43:00.000  
--  
--(1 row(s) affected)  
```  
  
 In the case of conversion to **datetimeoffset(n)**, the **smalldatetime** value is copied to the **datetimeoffset(n)** value. The fractional seconds are set to 0, and the time zone offset is set to +00:0. The following code shows the results of converting a `smalldatetime` value to a `datetimeoffset(4)` value.  
  
```  
  
DECLARE @smalldatetime smalldatetime = '1955-12-13 12:43:10';  
DECLARE @datetimeoffset datetimeoffset(4) = @smalldatetime;  
  
SELECT @smalldatetime AS '@smalldatetime', @datetimeoffset AS 'datetimeoffset(4)';  
  
--Result  
--@smalldatetime          datetimeoffset(4)  
------------------------- ------------------------------  
--1955-12-13 12:43:00     1955-12-13 12:43:00.0000 +00:0  
--  
--(1 row(s) affected)  
  
```  
  
 For the conversion to **datetime2(n)**, the **smalldatetime** value is copied to the **datetime2(n)** value. The fractional seconds are set to 0. The following code shows the results of converting a `smalldatetime` value to a `datetime2(4)` value.  
  
```  
DECLARE @smalldatetime smalldatetime = '1955-12-13 12:43:10';  
DECLARE @datetime2 datetime2(4) = @smalldatetime;  
  
SELECT @smalldatetime AS '@smalldatetime', @datetime2 AS ' datetime2(4)';  
  
--Result  
--@smalldatetime           datetime2(4)  
------------------------- ------------------------  
--1955-12-13 12:43:00     1955-12-13 12:43:00.0000  
--  
--(1 row(s) affected)  
```  
  
## Examples  
  
### A. Casting string literals with seconds to smalldatetime  
 The following example compares the conversion of seconds in string literals to `smalldatetime`.  
  
```  
SELECT   
     CAST('2007-05-08 12:35:29'     AS smalldatetime)  
    ,CAST('2007-05-08 12:35:30'     AS smalldatetime)  
    ,CAST('2007-05-08 12:59:59.998' AS smalldatetime);  
```  
  
|Input|Output|  
|-----------|------------|  
|2007-05-08 12:35:29|2007-05-08 12:35:00|  
|2007-05-08 12:35:30|2007-05-08 12:36:00|  
|2007-05-08 12:59:59.998|2007-05-08 13:00:00|  
  
### B. Comparing date and time data types  
 The following example compares the results of casting a string to each date and time data type.  
  
```  
SELECT   
     CAST('2007-05-08 12:35:29. 1234567 +12:15' AS time(7)) AS 'time'   
    ,CAST('2007-05-08 12:35:29. 1234567 +12:15' AS date) AS 'date'   
    ,CAST('2007-05-08 12:35:29.123' AS smalldatetime) AS   
        'smalldatetime'   
    ,CAST('2007-05-08 12:35:29.123' AS datetime) AS 'datetime'   
    ,CAST('2007-05-08 12:35:29. 1234567 +12:15' AS datetime2(7)) AS   
        'datetime2'  
    ,CAST('2007-05-08 12:35:29.1234567 +12:15' AS datetimeoffset(7)) AS   
        'datetimeoffset';  
```  
  
|Data type|Output|  
|---------------|------------|  
|**time**|12:35:29. 1234567|  
|**date**|2007-05-08|  
|**smalldatetime**|2007-05-08 12:35:00|  
|**datetime**|2007-05-08 12:35:29.123|  
|**datetime2**|2007-05-08 12:35:29. 1234567|  
|**datetimeoffset**|2007-05-08 12:35:29.1234567 +12:15|  
  
## See Also  
 [CAST and CONVERT &#40;Transact-SQL&#41;](../../t-sql/functions/cast-and-convert-transact-sql.md)  
  
  