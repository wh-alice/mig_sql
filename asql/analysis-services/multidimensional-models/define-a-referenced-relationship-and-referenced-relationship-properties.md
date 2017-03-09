---
title: "Define a Referenced Relationship and Referenced Relationship Properties | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "referenced dimension relationship"
  - "relationships [Analysis Services], referenced dimensions"
ms.assetid: 5bb44b41-635b-4398-8fe9-0bfbb142553e
caps.latest.revision: 13
ms.author: "owend"
manager: "erikre"
---
# Define a Referenced Relationship and Referenced Relationship Properties
  A reference dimension relationship is defined on the **Dimension Usage** tab of Cube Designer. The reference dimension relationship is defined by specifying the following:  
  
-   The intermediate dimension to which to join. This can be a regular dimension or another reference dimension.  
  
-   A reference dimension attribute that defines the lowest level that the dimension is available for aggregation with regard to the measure group.  
  
-   The (foreign key) attribute in the intermediate dimension that corresponds to the reference dimension attribute.  
  
 Notice that the column that links the reference dimension to the fact table, which is generally the key attribute in the reference dimension, must also be defined as an attribute in the intermediate dimension. When you create a chain of reference dimensions, start by creating the regular relationship between the first dimension in the chain and the measure group. Then create each additional referenced relationship in order. A referenced relationship can only be made to a dimension that has an existing relationship to the measure group.  
  
 When you create a reference dimension relationship, the dimension attribute link is materialized by default. Materializing a dimension attribute link causes the value of the link between the fact table and the reference dimension for each row to be materialized, or stored, in the MOLAP structure for the dimension during processing. This will have a minor effect on processing performance and storage requirements, but will improve query performance.  
  
 In a reference dimension, granularity is specified by identifying the attribute that defines the relationship between a reference dimension and the measure group corresponding to the main table of the dimension. When multiple reference dimensions are chained together, the references define the relationship from the outermost dimension to the measure group.  
  
  