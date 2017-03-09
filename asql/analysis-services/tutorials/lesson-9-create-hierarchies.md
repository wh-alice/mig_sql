---
title: "Lesson 9: Create Hierarchies | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "get-started-article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: 1e2561d3-4890-4495-a9cd-84eb88508938
caps.latest.revision: 17
ms.author: "owend"
manager: "erikre"
---
# Lesson 9: Create Hierarchies
In this lesson, you will create hierarchies. Hierarchies are groups of columns arranged in levels; for example, a Geography hierarchy might have sub-levels for Country, State, County, and City. Hierarchies can appear separate from other columns in a reporting client application field list, making them easier for client users to navigate and include in a report. To learn more, see [Hierarchies &#40;SSAS Tabular&#41;](../../analysis-services/tabular-models/hierarchies-ssas-tabular.md).  
  
To create hierarchies, you will use the model designer in *Diagram View*. Creating and managing hierarchies is not supported in the model designer in Data View.  
  
Estimated time to complete this lesson: **20 minutes**  
  
## Prerequisites  
This topic is part of a tabular modeling tutorial, which should be completed in order. Before performing the tasks in this lesson, you should have completed the previous lesson: [Lesson 9: Create Perspectives](../Topic/Lesson%209:%20Create%20Perspectives.md).  
  
## Create Hierarchies  
  
#### To create a Category hierarchy in the Product table  
  
1.  In the model designer, click on the **Model** menu, then point to **Model View**, and then click **Diagram View**.  
  
  
  
2.  Right-click the **Product** table, and then click **Create Hierarchy**. A new hierarchy appears at the bottom of the table window.  
  
3.  In the hierarchy name, rename the hierarchy by typing **Category**, and then press ENTER.  
  
4.  In the **Product** table, click the **Product Category Name** column, then drag it to the **Category** hierarchy, releasing it on top of **Category**.  
  
5.  In the **Category** hierarchy, right-click the **Product Category Name** column, then click **Rename**, and then type **Category**.  
  
    > [!NOTE]  
    > Renaming a column in a hierarchy does not rename that column in the table. A column in a hierarchy is just a representation of the column in the table.  
  
6.  In the **Product** table, click and drag the **Product Subcategory Name** column to the **Category** hierarchy.  
  
7.  Rename **Product Subcategory Name** to **Subcategory**.  
  
8.  Click and drag the **Model Name** and **Product Name** columns (in order) and place them beneath the **Product Subcategory Name** column. Rename these columns **Model** and **Product**, respectively.  
  
#### To create hierarchies in the Date table  
  
1.  In the model designer, right-click the **Date** table, and then click **Create Hierarchy**.  
  
2.  Rename the hierarchy to **Calendar**.  
  
3.  Add the following columns, in-order, and then rename them:  
  
    |Column|Rename to:|  
    |----------|--------------|  
    |Calendar Year|Year|  
    |Calendar Semester|Semester|  
    |Calendar Quarter|Quarter|  
    |Month Calendar|Month|  
    |Day Of Month|Day|  
  
4.  In the **Date** table, repeat the above steps, creating a **Fiscal** hierarchy, including the following columns:  
  
    |Column|Rename to:|  
    |----------|--------------|  
    |Fiscal Year|Year|  
    |Fiscal Semester|Semester|  
    |Fiscal Quarter|Quarter|  
    |Month Calendar|Month|  
    |Day Of Month|Day|  
  
5.  Finally, in the **Date** table, repeat the above steps, creating a **Production Calendar** hierarchy, including the following columns:  
  
    |Column|Rename to:|  
    |----------|--------------|  
    |Calendar Year|Year|  
    |Week Number Of Year|Week|  
    |Day Of Week|Day|  
  
## Next Steps  
To continue this tutorial, go to the next lesson: [Lesson 11: Create Partitions](../Topic/Lesson%2011:%20Create%20Partitions.md).  
  
  
  
