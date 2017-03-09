---
title: "CEILING (SSIS Expression) | Microsoft Docs"
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
  - "smallest integer great than or equal to expression"
  - "CEILING function [SSIS]"
ms.assetid: c35bd4ee-1ab6-46ab-89a7-cf771527faa2
caps.latest.revision: 28
ms.author: "douglasl"
manager: "jhubbard"
---
# CEILING (SSIS Expression)
  Returns the smallest integer that is greater than or equal to a numeric expression.  
  
## Syntax  
  
```  
  
CEILING(numeric_expression)  
```  
  
## Arguments  
 *numeric_expression*  
 Is a valid numeric expression.  
  
## Result Types  
 The data type of the numeric expression submitted to the function.  
  
## Remarks  
 CEILING returns a null result if the argument is null.  
  
## Expression Examples  
 These examples apply the CEILING function to positive, negative, and zero values.  
  
```  
CEILING(123.74)  
```  
  
 Returns 124.00  
  
```  
CEILING(-124.27)  
```  
  
 Returns -124.00  
  
```  
CEILING(0.00)  
```  
  
 Returns 0.00  
  
## See Also  
 [FLOOR &#40;SSIS Expression&#41;](../../integration-services/expressions/floor-ssis-expression.md)   
 [Functions &#40;SSIS Expression&#41;](../../integration-services/expressions/functions-ssis-expression.md)  
  
  