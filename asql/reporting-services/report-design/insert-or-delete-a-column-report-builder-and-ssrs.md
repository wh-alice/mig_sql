---
title: "Insert or Delete a Column (Report Builder and SSRS) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: e9db79e2-7e7d-4359-a706-cb746c94182a
caps.latest.revision: 8
ms.author: "maggies"
manager: "erikre"
---
# Insert or Delete a Column (Report Builder and SSRS)
  You can add or delete columns in a tablix data region in a [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] paginated report. The tablix data region can be a table, a matrix, or a list. The following procedures do not apply to the chart and gauge data regions.  
  
 In a tablix data region, you can add columns that are associated with a group (inside a group) or that are not associated with a group (outside a group). A column that is inside a group repeats once per unique group value. For example, a column inside a group based the value in a data column that contains color names, repeats once per distinct color name. For nested groups, a column can be outside the child group but inside the parent group. In this case, the row repeats once for each unique value in the parent group.  
  
> [!NOTE]  
>  [!INCLUDE[ssRBRDDup](../../reporting-services/report-builder/includes/ssrbrddup-md.md)]  
  
## To select a data region so that the row and column handles appear  
  
-   In Design view, click the upper left corner of the tablix data region, so that column and row handles appear above and next to it.  
  
     For more information about data region areas, see [Tables, Matrices, and Lists &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/tables-matrices-and-lists-report-builder-and-ssrs.md).  
  
## To insert a column in a selected data region  
  
-   Right-click a column handle where you want to insert a column, click **Insert Column**, and then click **Left** or **Right**.  
  
     -- or --  
  
-   Right-click a cell in the data region where you want to insert a row, click **Insert Column**, and then click **Left** or **Right**.  
  
## To delete a column from a selected data region  
  
-   Select the column or columns that you want to delete, right-click the handle for one of the columns you selected, and then click **Delete Columns**.  
  
     -- or --  
  
-   Right-click a cell in the data region where you want to delete a column, and then click **Delete Columns**.  
  
## To insert a column in a group in a selected data region  
  
-   Right-click a column group cell in the column group area of a tablix data region where you want to insert a column, click **Insert Column**, and then click **Left - Outside Group**, **Left - Inside Group**, **Right - Inside Group**, or **Right - Outside Group**.  
  
     A column is added either inside or outside the group represented by the column group cell you clicked on.  
  
## To delete a column from a group in a selected data region  
  
-   Right-click a column group cell in the column group area of a tablix data region where you want to delete a column, and then click **Delete Columns**.  
  
## See Also  
 [Understanding Groups &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/understanding-groups-report-builder-and-ssrs.md)   
 [Tablix Data Region &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/tablix-data-region-report-builder-and-ssrs.md)   
 [Tables &#40;Report Builder  and SSRS&#41;](../../reporting-services/report-design/tables-report-builder-and-ssrs.md)   
 [Matrices &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/create-a-matrix-report-builder-and-ssrs.md)   
 [Lists &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/create-invoices-and-forms-with-lists-report-builder-and-ssrs.md)      
 [Tables, Matrices, and Lists &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/tables-matrices-and-lists-report-builder-and-ssrs.md)  
  
  