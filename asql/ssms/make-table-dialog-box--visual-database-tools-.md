---
title: "Make Table Dialog Box (Visual Database Tools) | Microsoft Docs"
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
  - "vdtsql.chm:69650"
  - "vdt.dlgbox.maketable"
ms.assetid: 5eb28dc3-828e-486c-9348-596bb5a04c85
caps.latest.revision: 3
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
# Make Table Dialog Box (Visual Database Tools)
Allows you to name a created table that you copy rows to. This dialog box appears when you change a query's type to be a MAKE TABLE query. To change a query's type, from the **Query Designer** menu, point to **Change Type**, and then click **Make Table**.  
  
## Options  
**Table Name**  
Type the name of the table to create. Query and View Designer does not check whether the name is already in use or whether you have permission to create the table.  
  
To create a destination table in another database, specify a fully qualified table name, including the name of the target database, the owner (if required), and the name of the table.  
  
> [!NOTE]  
> Before you execute the query you can change properties of the table you want to create by modifying them in the **Properties** window. For details, see [Query Properties &#40;Visual Database Tools&#41;](../ssms/query-properties--visual-database-tools-.md).  
  
## See Also  
[Create Make Table Queries &#40;Visual Database Tools&#41;](../ssms/create-make-table-queries--visual-database-tools-.md)  
[Types of Queries &#40;Visual Database Tools&#41;](../ssms/types-of-queries--visual-database-tools-.md)  
  
