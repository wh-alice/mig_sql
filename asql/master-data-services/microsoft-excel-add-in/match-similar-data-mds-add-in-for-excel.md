---
title: "Match Similar Data (MDS Add-in for Excel) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: f6fd6fc1-3569-42a5-b6cb-87a921c88f3b
caps.latest.revision: 6
ms.author: "carlasab"
manager: "jhubbard"
---
# Match Similar Data (MDS Add-in for Excel)
  In the [!INCLUDE[ssMDSshort](../../analysis-services/includes/ssmdsshort-md.md)][!INCLUDE[ssMDSXLS](../../analysis-services/includes/ssmdsxls-md.md)], use Data Quality Services (DQS) functionality to find similarities in your data.  
  
 To perform this procedure, you can:  
  
-   Use the default Data Quality Services knowledge base, or  
  
-   Create your own custom DQS knowledge base and matching policy. For more information, see [Create a Matching Policy](../../data-quality-services/create-a-matching-policy.md).  
  
## Prerequisites  
  
-   You must have a worksheet that contains MDS-managed data. For more information, see [Export Data to Excel from Master Data Services](../../master-data-services/microsoft-excel-add-in/export-data-to-excel-from-master-data-services.md).  
  
-   Optional. You can combine other data with the MDS-managed data before checking for similarities. For more information, see [Combine Data &#40;MDS Add-in for Excel&#41;](../../master-data-services/microsoft-excel-add-in/combine-data-mds-add-in-for-excel.md).  
  
### To find similarities by using the default knowledge base  
  
1.  From the worksheet that contains MDS-managed data, in the **Data Quality** group, click **Match Data**.  
  
2.  In the **Match Data** dialog box, from the **DQS Knowledge Base** list, select **DQS Data (default)**.  
  
3.  For each column that contains data you want to match, add a row in the dialog box. For information about the fields in this dialog box, see [How to Set Matching Rule Parameters](../../data-quality-services/create-a-matching-policy.md#MatchingRules).  
  
4.  When the total of all weight values equals 100 percent, click **OK**.  
  
### To find similarities by using a custom knowledge base  
  
1.  From the worksheet that contains MDS-managed data, in the **Data Quality** group, click **Match Data**.  
  
2.  From the **DQS Knowledge Base** list, select the name of your custom knowledge base.  
  
3.  For each column in the worksheet, select a DQS domain.  
  
4.  When all DQS domains are mapped to columns in the worksheet, click **OK**.  
  
## Next Steps  
  
-   View additional information to determine which data is similar. For more information, see [Data Quality Matching Columns &#40;MDS Add-in for Excel&#41;](../../master-data-services/microsoft-excel-add-in/data-quality-matching-columns-mds-add-in-for-excel.md).  
  
## See Also  
 [Data Quality Matching in the MDS Add-in for Excel](../../master-data-services/microsoft-excel-add-in/data-quality-matching-in-the-mds-add-in-for-excel.md)   
 [Data Matching](../../data-quality-services/data-matching.md)  
  
  