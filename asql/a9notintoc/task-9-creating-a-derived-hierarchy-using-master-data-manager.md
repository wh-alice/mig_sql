---
title: "Task 9: Creating a Derived Hierarchy using Master Data Manager | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 3bd2ec05-933f-4947-b1fe-c9226961eb7d
caps.latest.revision: 7
ms.author: "spelluru"
manager: "jhubbard"
---
# Task 9: Creating a Derived Hierarchy using Master Data Manager
In this task, you create a derived hierarchy by using Master Data Manager. This derived hierarchy is derived from the domain-based attribute relationships between the **Supplier** and **State** entities.  
  
1.  Switch to the main page of **Master Data Manager** by clicking **SQL Server 2012 Master Data Services** at the top of the page.  
  
2.  Click **System Administration** in the **Administrative Tasks** section.  
  
3.  Hover the mouse over **Manage** on the menu bar, and click **Derived Hierarchies**.  
  
    ![Manage Menu - Derived Hierarchies Selected](../a9notintoc/media/et-creatingaderivedhierarchyusingmdm-01.jpg "Manage Menu - Derived Hierarchies Selected")  
  
4.  Click **Add Derived Hierarchy (+)** button on the toolbar.  
  
    ![Add Derived Hierarchy Button](../a9notintoc/media/et-creatingaderivedhierarchyusingmdm-02.jpg "Add Derived Hierarchy Button")  
  
5.  Type **SuppliersInState** for the **Derived hierarchy name**.  
  
6.  Click **Save** button on the toolbar.  
  
    ![Save Derived Hierarchy Button](../a9notintoc/media/et-creatingaderivedhierarchyusingmdm-03.jpg "Save Derived Hierarchy Button")  
  
7.  Drag **Supplier** from **Available Levels: SuppliersInState** to **Current Levels: SuppliersInState**.  
  
    ![Avialble Entities and Hierarchies to Current Level](../a9notintoc/media/et-creatingaderivedhierarchyusingmdm-04.jpg "Avialble Entities and Hierarchies to Current Level")  
  
8.  Drag **State** from **Available Levels: SuppliersInState** to **Current Levels: SuppliersInState**. The screen should have **Current Levels** as shown in the following picture.  
  
    ![Current Levels and Preview of Derived Hierarchy](../a9notintoc/media/et-creatingaderivedhierarchyusingmdm-05.jpg "Current Levels and Preview of Derived Hierarchy")  
  
9. In the **Preview** window, expand **NY { New York}** and you should see one supplier in that state as shown in the preceding image.  
  
10. Switch to the main page of **Master Data Manager** by clicking **SQL Server 2012 Master Data Services** at the top of the page.  
  
11. Click **Explorer**.  
  
12. Hover the mouse over **Hierarchies** and click **Derived:SuppliersInState**.  
  
    ![Hierarchies - Derived:SuppliersInState Menu](../a9notintoc/media/et-creatingaderivedhierarchyusingmdm-06.jpg "Hierarchies - Derived:SuppliersInState Menu")  
  
13. Click on any **state** node in the **tree view** and you should see the suppliers in that state in the right pane.  
  
    ![Derived Hierarchy in Explorer](../a9notintoc/media/et-creatingaderivedhierarchyusingmdm-07.jpg "Derived Hierarchy in Explorer")  
  
## Next Step  
[Lesson 5: Automating the Cleansing and Matching using SSIS](../a9notintoc/lesson-5-automating-the-cleansing-and-matching-using-ssis.md)  
  
