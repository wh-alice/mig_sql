---
title: "Lesson 4: Mark as Date Table | Microsoft Docs"
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
ms.assetid: c32cc336-b7d8-4122-9d62-4936344d2315
caps.latest.revision: 10
ms.author: "owend"
manager: "erikre"
---
# Lesson 4: Mark as Date Table
In Lesson 2: Add Data, you imported a dimension table named DimDate and renamed it Date. While in your model this table is now named Date, it can also be known as a *Date table*, in that it contains date and time data.  
  
Whenever you use Time Intelligence functions in calculations, as you will do when you create measures a little later, you must specify date table properties, which include a *Date table* and a unique identifier *Date column* in that table. You can then create valid relationships between other tables and the Date table; necessary for calculations using DAX time intelligence functions.  
  
In this lesson, you will mark the imported and renamed Date table as the *Date table* and the Date column (in the Date table) as the *Date column* (unique identifier). All the use of the name Date can get kind of confusing, but you’ll soon get the idea.  
  
Estimated time to complete this lesson: **3 minutes**  
  
## Prerequisites  
This topic is part of a tabular modeling tutorial, which should be completed in order. Before performing the tasks in this lesson, you should have completed the previous lesson: [Lesson 3: Rename Columns](../../analysis-services/tutorials/lesson-3-rename-columns.md).  
  
### To set Mark as Date Table  
  
1.  In the model designer, click the **Date** table (tab).  
  
2.  Select the **Date** column, and then in the **Properties** window, under **Data Type**, make sure  **Date** is selected.  
  
3.  Click the **Table** menu, then click **Date**, and then click **Mark as Date Table**.  
  
4.  In the **Mark as Date Table** dialog box, in the **Date** listbox, select the **Date** column as the unique identifier.  
  
## Next Steps  
To continue this tutorial, go to the next lesson: [Lesson 5: Create Relationships](../../analysis-services/tutorials/lesson-5-create-relationships.md).  
  
  
  
