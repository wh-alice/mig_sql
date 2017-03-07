---
title: "AT TIME ZONE (Transact-SQL) | Microsoft Docs"
ms.date: "2016-11-16"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "AT TIME ZONE"
  - "AT_TIME_ZONE_TSQL"
helpviewer_keywords: 
  - "AT TIME ZONE function"
ms.assetid: 311f682f-7f1b-43b6-9ea0-24e36b64f73a
caps.latest.revision: 13
ms.author: "rickbyh"
manager: "jhubbard"
---
# AT TIME ZONE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  Converts an *inputdate* to the corresponding *datetimeoffset* value in the target time zone. If *inputdate* is provided without offset information, the function applies the offset of the time zone assuming that *inputdate* value is provided in the target time zone. If *inputdate* is provided as a *datetimeoffset* value, than **AT TIME ZONE** clause converts it into the target time zone using time zone conversion rules.  
  
 **AT TIME ZONE** implementation relies on a Windows mechanism to convert **datetime** values across time zones.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
inputdate AT TIME ZONE timezone  
```  
  
## Arguments  
 *inputdate*  
 Is an expression that can be resolved to a **smalldatetime**, **datetime**, **datetime2**, or **datetimeoffset** value.  
  
 *timezone*  
 Name of the destination time zone. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] relies on time zones that are stored in the Windows Registry. All time zones installed on the computer are stored in the following registry hive: **KEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Time Zones**. A list of installed time zones is also exposed through the [sys.time_zone_info &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.time-zone-info-transact-sql.md) view.  
  
## Return Types  
 Returns the data type of **datetimeoffset**  
  
## Return Value  
 The **datetimeoffset** value in the target time zone.  
  
## Remarks  
 **AT TIME ZONE** applies specific rules for converting input values in **smalldatetime**, **datetime** and **datetime2** data types, that fall into an interval that is affected by the DST change:  
  
-   When the clock is set ahead then there is a gap in local time which duration depends on the duration of the clock adjustment (usually 1 hour, but it can be 30 or 45 minutes, depending on time zone). In that case, points in time that belong to this gap are converted with the offset *after* DST change.  
  
    ```  
    /*  
        Moving to DST in "Central European Standard Time" zone: 
        offset changes from +01:00 -> +02:00   
        Change occurred on March 29th, 2015 at 02:00:00.   
        Adjusted local time became 2015-03-29 03:00:00.  
    */  
    
    --Time before DST change has standard time offset (+01:00)
    SELECT CONVERT(datetime2(0), '2015-03-29T01:01:00', 126)     
    AT TIME ZONE 'Central European Standard Time';  
    --Result: 2015-03-29 01:01:00 +01:00   
  
    /*
      Adjusted time from the "gap interval" (between 02:00 and 03:00)
      is moved 1 hour ahead and presented with the summer time offset
      (after the DST change) 
    */
    SELECT CONVERT(datetime2(0), '2015-03-29T02:01:00', 126)   
    AT TIME ZONE 'Central European Standard Time';  
    --Result: 2015-03-29 03:01:00 +02:00
      
    --Time after 03:00 is presented with the summer time offset (+02:00)
    SELECT CONVERT(datetime2(0), '2015-03-29T03:01:00', 126)   
    AT TIME ZONE 'Central European Standard Time';  
    --Result: 2015-03-29 03:01:00 +02:00  
  
    ```  
  
- When the clock is set back, then 2 hours of local time are overlapped onto one hour.  In that case, points in time that belong to the overlapped interval are presented with the offset *before* the clock change:  
  
    ```  
    /*  
        Moving back from DST to standard time in 
        "Central European Standard Time" zone: 
        offset changes from +02:00 -> +01:00.  
        Change occurred on October 25th, 2015 at 03:00:00.   
        Adjusted local time became 2015-10-25 02:00:00   
    */  
    
    --Time before the change has DST offset (+02:00)
    SELECT CONVERT(datetime2(0), '2015-10-25T01:01:00', 126)      
    AT TIME ZONE 'Central European Standard Time';  
    --Result: 2015-10-25 01:01:00 +02:00  
    
    /*
      Time from the "overlapped interval" is presented with standard time 
      offset (before the change)    
    */
    SELECT CONVERT(datetime2(0), '2015-10-25T02:00:00', 126)   
    AT TIME ZONE 'Central European Standard Time';  
    --Result: 2015-10-25 02:00:00 +02:00  
    
    
    --Time after 03:00 is regularly presented with the standard time offset (+01:00)    
    SELECT CONVERT(datetime2(0), '2015-10-25T03:01:00', 126)   
    AT TIME ZONE 'Central European Standard Time';  
    --Result: 2015-10-25 03:01:00 +01:00
  
    ```  

Since some information (such as timezone rules) is maintained outside of [!INCLUDE[ssNoVersion_md](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and are subject to occasional change, the **AT TIME ZONE** function is classed as nondeterministic. 
  
## Examples  
  
### A. Add target time zone offset to datetime without offset information  
 Use **AT TIME ZONE** to add offset based on time zone rules when you know that the original **datetime** values are provided in the same time zone:  
  
```  
USE AdventureWorks2016;  
GO  
  
SELECT SalesOrderID, OrderDate,   
    OrderDate AT TIME ZONE 'Pacific Standard Time' AS OrderDate_TimeZonePST  
FROM Sales.SalesOrderHeader;  
```  
  
### B. Convert values between different time zones  
 The following example converts values between different time zones:  
  
```  
USE AdventureWorks2016;  
GO  
  
SELECT SalesOrderID, OrderDate,   
    OrderDate AT TIME ZONE 'Pacific Standard Time' AS OrderDate_TimeZonePST,  
    OrderDate AT TIME ZONE 'Pacific Standard Time'   
    AT TIME ZONE 'Central European Standard Time' AS OrderDate_TimeZoneCET  
FROM Sales.SalesOrderHeader;  
```  
  
### C. Query Temporal Tables using local time zone  
 The following example example selects data from a temporal table.  
  
```  
USE AdventureWorks2016;  
GO  
  
DECLARE @ASOF datetimeoffset;  
SET @ASOF = DATEADD (month, -1, GETDATE()) AT TIME ZONE 'UTC';  
  
-- Query state of the table a month ago projecting period   
-- columns as Pacific Standard Time  
SELECT BusinessEntityID, PersonType, NameStyle, Title,   
    FirstName, MiddleName,  
    ValidFrom AT TIME ZONE 'Pacific Standard Time' 
FROM  Person.Person_Temporal  
FOR SYSTEM_TIME AS OF @ASOF;  
```  
  
## See Also  
 [Date and Time Types](../../t-sql/data-types/date-and-time-types.md)   
 [Date and Time Data Types and Functions &#40;Transact-SQL&#41;](../../t-sql/functions/date-and-time-data-types-and-functions-transact-sql.md)  
  
  