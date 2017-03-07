---
title: "Data Truncation (SSIS) | Microsoft Docs"
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
  - "truncating data"
  - "data truncation [Integration Services]"
  - "expressions [Integration Services], data truncation"
  - "truncate options [Integration Services]"
ms.assetid: 02461e15-49ca-445b-abb3-5c369c283ec2
caps.latest.revision: 37
ms.author: "douglasl"
manager: "jhubbard"
---
# Data Truncation (SSIS)
  Converting values from one data type to another may cause values to be truncated.  
  
 Truncation can occur when:  
  
-   Translating string data from a *DT_WSTR* to a *DT_STR* with the same length  if the original string contains double-byte characters.  
  
-   Casting an integer from a *DT_I4* to a *DT_I2* significant digits can be lost.  
  
-   Casting an unsigned integer to a signed integer significant digits can be lost.  
  
-   Casting a real number from a *DT_R8* to a *DT_R4* insignificant digits can be lost  
  
-   Casting an integer from a *DT_I4* to a *DT_R4* insignificant digits can be lost.  
  
 The expression evaluator identifies explicit casts that may cause truncation and issues a warning when the expression is parsed. For example, the expression evaluator warns you if a 30-character string is cast into a 20-character string.  
  
 However, truncation is not checked at run time. At runtime data is truncated without warning. Most data adapters and transformations support error outputs that can handle the disposition of error rows.  
  
 For more information about handling truncation of data, see [Error Handling in Data](../../integration-services/data-flow/error-handling-in-data.md)  
  
  