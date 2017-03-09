---
title: "MONTH (SSIS Expression) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "dates [Integration Services], MONTH"
  - "MONTH function"
ms.assetid: b5a47a11-c2ef-49bd-bd70-235632ff7bf6
caps.latest.revision: 38
ms.author: "douglasl"
manager: "jhubbard"
---
# MONTH (SSIS Expression)
  Returns an integer that represents the month datepart of a date.  
  
## Syntax  
  
```  
  
MONTH(date)  
```  
  
## Arguments  
 *date*  
 Is a date in any date format.  
  
## Result Types  
 DT_I4  
  
## Remarks  
 MONTH returns a null result if the argument is null.  
  
 A date literal must be explicitly cast to one of the date data types. For more information, see [Integration Services Data Types](../../integration-services/data-flow/integration-services-data-types.md).  
  
> [!NOTE]  
>  The expression fails to validate when a date literal is explicitly cast to one of these date data types: DT_DBTIMESTAMPOFFSET and DT_DBTIMESTAMP2.  
  
 Using the MONTH function is briefer but equivalent to using DATEPART("Month", date).  
  
## Expression Examples  
 This example returns the number of the month in a date literal. If the date is in "mm/dd/yyyy" format, this example returns 11.  
  
```  
MONTH((DT_DBTIMESTAMP)"11/23/2002")  
```  
  
 This example returns the integer that represents the month in the **ModifiedDate** column.  
  
```  
MONTH(ModifiedDate)  
```  
  
 This example returns the integer that represents the month of the current date.  
  
```  
MONTH(GETDATE())  
```  
  
## See Also  
 [DATEADD &#40;SSIS Expression&#41;](../../integration-services/expressions/dateadd-ssis-expression.md)   
 [DATEDIFF &#40;SSIS Expression&#41;](../../integration-services/expressions/datediff-ssis-expression.md)   
 [DATEPART &#40;SSIS Expression&#41;](../../integration-services/expressions/datepart-ssis-expression.md)   
 [DAY &#40;SSIS Expression&#41;](../../integration-services/expressions/day-ssis-expression.md)   
 [YEAR &#40;SSIS Expression&#41;](../../integration-services/expressions/year-ssis-expression.md)   
 [Functions &#40;SSIS Expression&#41;](../../integration-services/expressions/functions-ssis-expression.md)  
  
  