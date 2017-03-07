---
title: "Specify Object Counts (Usage-Based Optimization Wizard) | Microsoft Docs"
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
  - "sql13.asvs.storagedesignwizard.calculatingobjectcounts.f1"
ms.assetid: 306c7c25-ae24-4852-ab8c-c82f68a4bc1f
caps.latest.revision: 25
ms.author: "owend"
manager: "erikre"
robots: noindex,nofollow
---
# Specify Object Counts (Usage-Based Optimization Wizard)
  Use the **Specify Object Counts** page to automatically calculate the count of objects in the cube or to manually enter estimated counts. The Usage-Based Optimization Wizard uses the object counts to estimate storage requirements.  
  
## Options  
 **Cube Objects**  
 Displays the dimensions and attributes in the cube. Only the attributes that do not have their **AggregationUsage** property set to None in the **Review Aggregation Usage** page of the wizard are shown because those are the only attributes that need counts specified.  
  
 **Estimated count**  
 Displays the estimated number of rows in the measure group and the estimated attribute member counts in the database dimensions. You can type a value to use as the estimated count or you can calculate the estimated count values. To calculate the count values, type 0 in the field and then click **Count**. Fields that already display a count are not updated.  
  
 **Partition count**  
 (Optional) Type the estimated number of rows in the measure group and the estimated attribute member counts in the partitions.  
  
 **Count**  
 Calculates and repopulates the values in the **Estimated count** column for all empty fields. Fields that already display a count are not updated.  
  
## See Also  
 [Aggregation Design Wizard F1 Help](../a9retired/aggregation-design-wizard-f1-help.md)   
 [Analysis Services Wizards &#40;Multidimensional Data&#41;](../a9retired/analysis-services-wizards-multidimensional-data.md)  
  
  