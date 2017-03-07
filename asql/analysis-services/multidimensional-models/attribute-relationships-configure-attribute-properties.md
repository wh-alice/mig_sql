---
title: "Configure Attribute Relationship Properties | Microsoft Docs"
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
  - "flexible relationships (Analysis Services)"
  - "attributes [Analysis Services], relationships"
  - "relationships [Analysis Services], attributes"
  - "properties [Analysis Services], attribute relationships"
  - "rigid relationships (Analysis Services)"
ms.assetid: fce511af-66d7-42fc-bb3a-6c516f16b10e
caps.latest.revision: 17
ms.author: "owend"
manager: "erikre"
---
# Attribute Relationships - Configure Attribute Properties
  The following table lists and describes the properties of an attribute relationship.  
  
|Property|Description|  
|--------------|-----------------|  
|Attribute|Contains the name of the attribute.|  
|Cardinality|Indicates the cardinality of the relationship. Values are Many, for a many to one relationship, or One, for a one to one relationship. Default value is Many. In [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)], the cardinality property has no effect - its use is reserved for a future implementation.|  
|Name|Contains the friendly name of the attribute.|  
|RelationshipType|Indicates whether member relationships change over time. Values are Rigid, which means that relationships between members do not change over time, or Flexible, which means that relationships between members change over time. Default is Flexible. If you define a relationship as flexible, aggregations are dropped and recomputed as part of an incremental update (they will not be dropped if only new members are added). If you define a relationship as rigid, [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] retains aggregations when the dimension is incrementally updated. If a relationship that is defined as rigid actually changes, [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] generates an error during incremental processing. Specifying the appropriate relationships and relationship properties increases query and processing performance.|  
|Visible|Determines the visibility of the attribute relationship. Values are True or False. Default is True.|  
  
  