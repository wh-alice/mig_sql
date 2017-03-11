---
title: "Add, Edit, Refresh Fields in the Report Data Pane (Report Builder and SSRS) | Microsoft Docs"
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
ms.assetid: 2e36f0fe-8100-4513-b169-14d611646f81
caps.latest.revision: 7
ms.author: "asaxton"
manager: "erikre"
---
# Add, Edit, Refresh Fields in the Report Data Pane (Report Builder and SSRS)
  Dataset fields are the built-in collection of field names that represent the data that is returned when a dataset query runs on an external data source.  
  
 For an embedded dataset, the dataset fields are the fields that are created after you finish building a query and close the Query Designer pane, and calculated fields that you create.  
  
 For a shared dataset, the dataset fields are the fields from the shared dataset definition when you added it to your report. Although the query from the shared dataset on the report server is always used when you run the report, the list of dataset fields in the report is static.  
  
 Use **Refresh Fields** to update the list of fields in the report to match the current list of fields from the shared dataset query. Refreshing the field list does not affect the calculated fields that you define in your report.  
  
> [!NOTE]  
>  [!INCLUDE[ssRBRDDup](../../reporting-services/report-builder/includes/ssrbrddup-md.md)]  
  
### To add a query field  
  
1.  In the Report Data pane, right-click the dataset, and then click **Add Query Field**.  
  
    > [!NOTE]  
    >  If you cannot see the Report Data pane, from the **View** menu, click **Report Data**.  
  
2.  In the **Fields** page of the **Dataset Properties** dialog box, click **Add**, and then click **Query Field**. A new row is added to the bottom of the grid.  
  
3.  In the **Field Name** text box, type the name for the field.  
  
    > [!NOTE]  
    >  Names must be unique in the dataset.  
  
4.  In the **Field Source** text box, type the name of an existing field on the data source.  
  
5.  [!INCLUDE[clickOK](../../analysis-services/data-mining/includes/clickok-md.md)]  
  
### To add a calculated field  
  
1.  In the Report Data pane, right-click the dataset, and then click **Add Calculated Field**.  
  
2.  In the **Fields** page of the **Dataset Properties** dialog box, click **Add**, and then click **Calculated Field**. A new row is added to the bottom of the grid.  
  
3.  In the **Field Name** text bo, type the name for the field.  
  
    > [!NOTE]  
    >  Names must be unique in the dataset.  
  
4.  In the **Field Source** text box, type the expression for the field. Click the expression (**fx**) button to build an expression.  
  
    > [!NOTE]  
    >  The expression for a calculated field cannot contain aggregates or references to report items.  
  
5.  [!INCLUDE[clickOK](../../analysis-services/data-mining/includes/clickok-md.md)]  
  
### To edit a query field or a dataset field  
  
1.  In the Report Data pane, right-click the field, and then click **Field Properties**.  
  
2.  In the **Fields** page of the **Dataset Properties** dialog box, click an existing field to select the row.  
  
3.  Change the name of the field or the value of the field.  
  
4.  [!INCLUDE[clickOK](../../analysis-services/data-mining/includes/clickok-md.md)]  
  
### To delete a query field or a calculated field  
  
1.  In the Report Data pane, expand the dataset to display the field collection.  
  
2.  Right-click the field you want to remove, and then click **Delete**.  
  
### To refresh the field collection in the Report Data Pane for a shared dataset  
  
1.  In the Report Data pane, right-click the dataset, and then click **Query**.  
  
2.  Click **Refresh Fields**.  
  
     On the report server, the shared dataset query runs and returns the current field collection.  
  
## See Also  
 [Dataset Fields Collection &#40;Report Builder and SSRS&#41;](../../reporting-services/report-data/dataset-fields-collection-report-builder-and-ssrs.md)   
 [Report Datasets &#40;SSRS&#41;](../../reporting-services/report-data/report-datasets-ssrs.md)   
 [Report Embedded Datasets and Shared Datasets &#40;Report Builder and SSRS&#41;](../../reporting-services/report-data/report-embedded-datasets-and-shared-datasets-report-builder-and-ssrs.md)   
 [Reporting Services Query Designers](http://msdn.microsoft.com/library/07efd3f1-804f-45f7-b62a-3e727a3d9835)   
 [Query Designers &#40;Report Builder&#41;](http://msdn.microsoft.com/library/553f0d4e-8b1d-4148-9321-8b41a1e8e1b9)  
  
  