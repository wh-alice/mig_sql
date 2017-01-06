---
title: "Check Constraint Expression Dialog Box (Visual Database Tools) | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "vdt.dlgbox.checkconstraintexpression"
ms.assetid: beb6ce43-3913-4d66-8826-8e885335b790
caps.latest.revision: 5
ms.author: "sstein"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "zh-cn"
  - "zh-tw"
---
# Check Constraint Expression Dialog Box (Visual Database Tools)
When you attach a check constraint to a table or column, you must include an SQL expression. Type the check constraint expression in the box provided.  
  
## UIElement List  
Expression  
Enter the expression  
  
You can create a simple constraint expression to check data for a simple condition; or you can create a complex expression, using Boolean operators, to check data for several conditions. For example, suppose the authors table has a zip column where a 5-digit character string is required. This sample constraint expression guarantees that only 5-digit numbers are allowed:  
  
```  
zip LIKE '[0-9][0-9][0-9][0-9][0-9]'  
```  
  
Or suppose the sales table has a column called qty which requires a value greater than 0. This sample constraint guarantees that only positive values are allowed:  
  
```  
qty > 0  
```  
  
Or suppose the orders table limits the type of credit cards accepted for all credit card orders. This sample constraint guarantees that if the order is placed on a credit card, then only Visa, MasterCard, or American Express is accepted:  
  
```  
NOT (payment_method = 'credit card') OR  
   (card_type IN ('VISA', 'MASTERCARD', 'AMERICAN EXPRESS'))  
```  
  
## To define a constraint expression  
In the Check Constraints tab of the property pages, type an expression in the Constraint expression box using the following syntax:  
  
<pre>{constant | column_name | function | (subquery)}  
[{operator | AND | OR | NOT}  
{constant | column_name | function | (subquery)}...]</pre>  
  
The SQL syntax is made up of the following parameters:  
  
|Parameter|Description|  
|-------------|---------------|  
|constant|A literal value, such as numeric or character data. Character data must be enclosed within single quotation marks (').|  
|column_name|Specifies a column.|  
|function|A built-in function.|  
|operator|Arithmetic, bitwise, comparison, or string operators.|  
|AND|Use in Boolean expressions to connect two expressions. Results are returned when both expressions are true.<br /><br />When AND and OR are both used in a statement, AND is processed first. You can change the order of execution by using parentheses.|  
|OR|Use in Boolean expressions to connect two or more conditions. Results are returned when either condition is true.<br /><br />When AND and OR are both used in a statement, OR is evaluated after AND. You can change the order of execution by using parentheses.|  
|NOT|Negates any Boolean expression (which can include keywords, such as LIKE, NULL, BETWEEN, IN, and EXISTS).<br /><br />When more than one logical operator is used in a statement, NOT is processed first. You can change the order of execution by using parentheses.|  
  
## See Also  
[Unique Constraints and Check Constraints](http://msdn.microsoft.com/en-us/637098af-2567-48f8-90f4-b41df059833e)  
[Create Unique Constraints](http://msdn.microsoft.com/en-us/a86f9d6f-f242-43be-b65d-b3435b71b62a)  
  
