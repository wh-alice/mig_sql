---
title: "Dimension Objects (Analysis Services - Multidimensional Data) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "dimensions [Analysis Services], objects"
ms.assetid: 7f3d55c7-cccb-4ad0-b6cb-3a2c9992dd68
caps.latest.revision: 14
ms.author: "owend"
manager: "erikre"
---
# Dimension Objects (Analysis Services - Multidimensional Data)
  A simple <xref:Microsoft.AnalysisServices.Dimension> object is composed of basic information, attributes, and hierarchies. Basic information includes the name of the dimension, the type of the dimension, the data source, the storage mode, and others. Attributes define the actual data in the dimension. Attributes do not necessarily belong to a hierarchy, but hierarchies are built from attributes. A hierarchy creates ordered lists of levels, and defines the ways a user can explore the dimension.  
  
## In This Section  
 The following topics provide more information about how to design and implement dimension objects.  
  
|Topic|Description|  
|-----------|-----------------|  
|[Dimensions &#40;Analysis Services - Multidimensional Data&#41;](../../analysis-services/multidimensional-models-olap-logical-dimension-objects/dimensions-analysis-services-multidimensional-data.md)|In [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)], dimensions are a fundamental component of cubes. Dimensions organize data with relation to an area of interest, such as customers, stores, or employees, to users.|  
|[Attributes and Attribute Hierarchies](../../analysis-services/multidimensional-models-olap-logical-dimension-objects/attributes-and-attribute-hierarchies.md)|Dimensions are collections of attributes, which are bound to one or more columns in a table or view in the data source view.|  
|[Attribute Relationships](../../analysis-services/multidimensional-models-olap-logical-dimension-objects/attribute-relationships.md)|In [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)], attributes within a dimension are always related either directly or indirectly to the key attribute. When you define a dimension based on a star schema, which is where all dimension attributes are derived from the same relational table, an attribute relationship is automatically defined between the key attribute and each non-key attribute of the dimension. When you define a dimension based on a snowflake schema, which is where dimension attributes are derived from multiple related tables, an attribute relationship is automatically defined as follows:<br /><br /> Between the key attribute and each non-key attribute bound to columns in the main dimension table.<br /><br /> Between the key attribute and the attribute bound to the foreign key in the secondary table that links the underlying dimension tables.<br /><br /> Between the attribute bound to foreign key in the secondary table and each non-key attribute bound to columns from the secondary table.|  
  
  