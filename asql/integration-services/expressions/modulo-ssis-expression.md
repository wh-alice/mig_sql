---
title: "(Modulo) (SSIS Expression) | Microsoft Docs"
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
  - "% (modulo operator)"
  - "remainder of division operation"
  - "modulo operator (%)"
ms.assetid: e2920821-2f5b-4c76-8db8-8b9eddf4606f
caps.latest.revision: 34
ms.author: "douglasl"
manager: "jhubbard"
---
# (Modulo) (SSIS Expression)
  Provides the integer remainder after dividing the first numeric expression by the second one.  
  
## Syntax  
  
```  
  
dividend % divisor  
  
```  
  
## Arguments  
 *dividend*  
 Is the numeric expression to divide. *dividend* can be any valid numeric expression. For more information, see [Integration Services Data Types](../../integration-services/data-flow/integration-services-data-types.md)  
  
 *divisor*  
 Is the numeric expression to divide the dividend by. *divisor* can be any valid numeric expression except zero.  
  
## Result Types  
 Determined by data types of the two arguments. For more information, see [Integration Services Data Types in Expressions](../../integration-services/expressions/integration-services-data-types-in-expressions.md).  
  
## Remarks  
 Both expressions must evaluate to signed or unsigned integer data types.  
  
 If either operand is null, the result is null.  
  
 Modulo zero is not legal.  
  
## Expression Examples  
 This example computes the modulus from two numeric literals. The result is 3.  
  
```  
42 % 13  
```  
  
 This example computes the modulus from the **SalesQuota** column and a numeric literal.  
  
```  
SalesQuota % 12  
```  
  
 This example computes the modulus from two numeric variables **Sales$** and **Month**. The variable **Sales$** must be enclosed in brackets because the name includes the $ character. For more information, see [Identifiers &#40;SSIS&#41;](../../integration-services/expressions/identifiers-ssis.md).  
  
```  
@[Sales$] % @Month  
```  
  
 This example uses the modulo operator to determine if the value of the **Value** variable is even or odd, and uses the conditional operator to return a string that describes the result. For more information, see [? : &#40;Conditional&#41; &#40;SSIS Expression&#41;](../../integration-services/expressions/conditional-ssis-expression.md).  
  
```  
@Value % 2 == 0? "even":"odd"  
```  
  
## See Also  
 [Operator Precedence and Associativity](../../integration-services/expressions/operator-precedence-and-associativity.md)   
 [Operators &#40;SSIS Expression&#41;](../../integration-services/expressions/operators-ssis-expression.md)  
  
  