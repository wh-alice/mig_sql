---
title: "Incremental Update Dialog Box (Analysis Services - Multidimensional Data) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "reference"
f1_keywords: 
  - "sql13.asvs.process.incrementalupdate.f1"
ms.assetid: d5a5ae27-44e7-4179-b9e2-efbf21d6c5f5
caps.latest.revision: 20
ms.author: "owend"
manager: "erikre"
robots: noindex,nofollow
---
# Incremental Update Dialog Box (Analysis Services - Multidimensional Data)
  Use the **Incremental Update** dialog box in [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)] and [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)] to define the settings that are used when measure groups and partitions are incrementally updated. You can display the **Incremental Update** dialog box by clicking **Configure** in the **Settings** column of the **Object list** grid in the **Process** dialog box.  
  
## Options  
  
|Term|Definition|  
|----------|----------------|  
|**Measure Group**|Select the measure group to incrementally update.<br /><br /> Note: This option is enabled only if you are incrementally updating a cube. If you are incrementally updating a measure group or partition, this option is disabled.|  
|**Partition**|Select the partition to update.<br /><br /> Note: This option is enabled only if you are incrementally updating a cube. If you are incrementally updating a measure group or partition, this option is disabled.|  
|**Table**|Click to update the object from a table.|  
|**Data source or view**|Select the data source or data source view in which the source table is located.<br /><br /> Note: This option is enabled only if **Table** is selected.|  
|**Table schema and name**|Select the source table used to retrieve data for incrementally updating the cube, measure group, or partition.<br /><br /> Note: This option is enabled only if **Table** is selected.|  
|**Query**|Click to update the object from a query.|  
|**Data Source**|Select the data source in which the tables to be queried are located.<br /><br /> Note: This option is enabled only if **Query** is selected.|  
|**Text of the query**|Type the text of the query used to retrieve data for incrementally updating the cube, measure group, or partition.<br /><br /> Note: This option is enabled only if **Query** is selected.|  
  
## See Also  
 [Analysis Services Designers and Dialog Boxes &#40;Multidimensional Data&#41;](../a9retired/analysis-services-designers-and-dialog-boxes-multidimensional-data.md)   
 [Process Dialog Box &#40;Analysis Services - Multidimensional Data&#41;](../a9retired/process-dialog-box-analysis-services-multidimensional-data.md)  
  
  