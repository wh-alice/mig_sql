---
title: "Manually Edit a Prediction Query | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "modifying prediction queries"
  - "Mining Model Prediction [Analysis Services], modifying prediction queries"
  - "manual prediction query modification [Analysis Services]"
ms.assetid: 9f6a9298-49d5-4675-ad49-977a47dff5a6
caps.latest.revision: 17
ms.author: "owend"
manager: "jhubbard"
---
# Manually Edit a Prediction Query
  After you have designed a query by using the Prediction Query Builder, you can modify the query by switching to Query Text view on the **Mining Model Prediction** tab of Data Mining Designer. A text editor appears at the bottom of the screen to display the query that the query builder created.  
  
 Switching to Query Text view is useful for making additions to the query. For example, you can add a WHERE clause or ORDER BY clause.  
  
 Use the grid in the Prediction Query Builder to insert the names of objects and columns and set up the syntax for individual prediction functions, and then switch to manual editing mode to change parameter values.  
  
> [!NOTE]  
>  If you switch back to **Design** view from **Query Text** view, any changes that you made in **Query Text** view will be lost.  
  
### Modify a query  
  
1.  On the **Mining Model Prediction** tab in Data Mining Designer in [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)], click **SQL**.  
  
     The grid at the bottom of the screen is replaced by a text editor that contains the query. You can type changes to the query in this editor.  
  
2.  To run the query, on the **Mining Model** menu, select **Result**, or click the button to switch to query results.  
  
    > [!NOTE]  
    >  If the query that you have created is invalid, the Results window does not display an error and does not display any results. Click the **Design** button, or select **Design** or **Query** from the **Mining Model** menu to correct the problem and run the query again.  
  
## See Also  
 [Data Mining Queries](../../analysis-services/data-mining/data-mining-queries.md)   
 [Prediction Query Builder &#40;Data Mining&#41;](http://msdn.microsoft.com/en-US/library/ms178300(SQL.130).aspx)   
 [Lesson 6: Creating and Working with Predictions &#40;Basic Data Mining Tutorial&#41;](http://msdn.microsoft.com/en-US/library/cc879289(SQL.130).aspx)  
  
  