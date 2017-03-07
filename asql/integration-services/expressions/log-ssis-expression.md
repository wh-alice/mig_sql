---
title: "LOG (SSIS Expression) | Microsoft Docs"
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
  - "base-10 logarithms"
  - "LOG function"
ms.assetid: f7fccace-c178-4e13-bde9-7dc4ef1d98fa
caps.latest.revision: 31
ms.author: "douglasl"
manager: "jhubbard"
---
# LOG (SSIS Expression)
  Returns the base-10 logarithm of a numeric expression.  
  
## Syntax  
  
```  
  
LOG(numeric_expression)  
```  
  
## Arguments  
 *numeric_expression*  
 Is a valid nonzero or nonnegative numeric expression.  
  
## Result Types  
 DT_R8  
  
## Remarks  
 The *numeric expression* is cast to the DT_R8 data type before the logarithm is computed. For more information, see [Integration Services Data Types](../../integration-services/data-flow/integration-services-data-types.md).  
  
 If *numeric_expression* evaluates to zero or a negative value, the return result is null.  
  
## Expression Examples  
 This example uses a numeric literal. The function returns the value 1.988291341907488.  
  
```  
LOG(97.34)  
```  
  
 This example uses the column **Length**. If the column is 101.24, the function returns 2.005352136486217.  
  
```  
LOG(Length)   
```  
  
 This example uses the variable **Length**. The variable must have a numeric data type or the expression must include an explicit cast to a numeric [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] data type. If **Length** is 234.567, the function returns 2.370266913465859.  
  
```  
LOG(@Length)   
```  
  
## See Also  
 [EXP &#40;SSIS Expression&#41;](../../integration-services/expressions/exp-ssis-expression.md)   
 [LN &#40;SSIS Expression&#41;](../../integration-services/expressions/ln-ssis-expression.md)   
 [Functions &#40;SSIS Expression&#41;](../../integration-services/expressions/functions-ssis-expression.md)  
  
  