---
title: "Assign Aggregation Design Dialog Box (Analysis Services - Multidimensional Data) | Microsoft Docs"
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
  - "sql13.asvs.sqlserverstudio.copyaggregationdesign.f1"
ms.assetid: 50c26cb1-c294-4f17-8b9e-435fdbd4806d
caps.latest.revision: 20
ms.author: "owend"
manager: "erikre"
robots: noindex,nofollow
---
# Assign Aggregation Design Dialog Box (Analysis Services - Multidimensional Data)
  Use the **Assign Aggregation Design** dialog box in [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)] to assign aggregation designs to one or more destination partitions. You can display the **Assign Aggregation Design** dialog box by right-clicking a partition or aggregation design in **Object Explorer** and selecting **Assign Aggregation Design**.  
  
## Options  
  
|Term|Definition|  
|----------|----------------|  
|**Aggregation designs**|Select an aggregation design to assign to one or more destination partitions.|  
|**Destination partitions**|Select the partitions to which to assign the aggregation design. The following grid is used to specify destination partitions:<br /><br /> \<check box>: Select or clear the check box in the column header to include or exclude all listed partitions as destination partitions. Select or clear a check box next to a partition to include or exclude that partition as a destination partition.<br /><br /> **Partition**:<br />                      Displays the name of the partition.<br /><br /> **Source**:<br />                      Displays the source table or query for the partition.<br /><br /> **Aggregation Design**:<br />                      Displays the name of the existing aggregation design for the partition.|  
|**Hide partitions with aggregation designs**|Select to show only the partitions that do not have aggregation designs assigned to them.|  
  
## See Also  
 [Aggregations and Aggregation Designs](../analysis-services/multidimensional-models-olap-logical-cube-objects/aggregations-and-aggregation-designs.md)  
  
  