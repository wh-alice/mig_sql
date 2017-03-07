---
title: "Hide or Delete Levels in a Derived Hierarchy (Master Data Services) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "derived hierarchies, hiding levels"
  - "derived hierarchies, deleting levels"
ms.assetid: e00582b9-9415-4b66-b4a7-9f590d83875f
caps.latest.revision: 6
ms.author: "carlasab"
manager: "jhubbard"
---
# Hide or Delete Levels in a Derived Hierarchy (Master Data Services)
  In [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)], hide a level in a derived hierarchy when you require the level for grouping but you do not need to show the level. Delete a level when you do not want to use it for grouping.  
  
## Prerequisites  
 To perform this procedure:  
  
-   You must have permission to access the **System Administration** functional area.  
  
-   You must be a model administrator. For more information, see [Administrators &#40;Master Data Services&#41;](../master-data-services/administrators-master-data-services.md).  
  
### To hide or delete levels in a derived hierarchy  
  
1.  In [!INCLUDE[ssMDSmdm](../a9notintoc/includes/ssmdsmdm-md.md)], click **System Administration**.  
  
2.  From the menu bar, point to **Manage** and click **Derived Hierarchies**.  
  
3.  On the **Derived Hierarchy Maintenance** page, from the **Model** list, select a model.  
  
4.  Select the row for the derived hierarchy you want to edit.  
  
5.  Click **Edit**.  
  
6.  In the **Current Levels** pane:  
  
    -   To hide a level, click a level other than the top or bottom. From the **Visible** list, select **No**. Then click **Save selected hierarchy item**.  
  
    -   To delete the top level, click **Delete selected hierarchy item**. In the confirmation dialog box, click **OK**. You can delete the top level only.  
  
## See Also  
 [Move Members within a Hierarchy &#40;Master Data Services&#41;](../Topic/Move%20Members%20within%20a%20Hierarchy%20\(Master%20Data%20Services\).md)   
 [Derived Hierarchies &#40;Master Data Services&#41;](../master-data-services/derived-hierarchies-master-data-services.md)  
  
  