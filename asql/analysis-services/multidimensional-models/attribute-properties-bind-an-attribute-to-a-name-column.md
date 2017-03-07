---
title: "Bind an Attribute to a Name Column | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "binding attributes [Analysis Services]"
  - "name columns [Analysis Services]"
  - "attributes [Analysis Services], binding"
ms.assetid: 467f0cf3-8691-476d-a7fb-a5df4e374eaf
caps.latest.revision: 29
ms.author: "owend"
manager: "erikre"
---
# Attribute Properties - Bind an Attribute to a Name Column
  This procedure describes how to bind an attribute to a name column manually by using the **Attributes** pane in the Dimension Designer and by using the **Object Binding** dialog box.  
  
### To bind an attribute to a name column  
  
1.  In Dimension Designer, open the dimension in which you want to create the attribute.  
  
2.  On the **Dimension Structure** tab, in the **Attributes** pane, right-click the attribute that you want to configure, and then click **Properties**.  
  
3.  In the **Properties** window, locate the **NameColumn** property, and then select **(new)**.  
  
4.  In the **Object Binding** dialog box, for **Binding type**, select **Column binding**.  
  
5.  In the **Source column** list, select the column to which the attribute will be bound, and then click **OK**.  
  
  