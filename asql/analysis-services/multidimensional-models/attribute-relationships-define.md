---
title: "Define Attribute Relationships | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
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
  - "attributes [Analysis Services], relationships"
  - "relationships [Analysis Services], attributes"
ms.assetid: 9184d344-e96d-4025-ad6f-3f75129746df
caps.latest.revision: 32
ms.author: "owend"
manager: "erikre"
---
# Attribute Relationships - Define
  In [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)], attributes are the fundamental building block of a dimension. A dimension contains a set of attributes that are organized based on attribute relationships.  
  
 For each table included in a dimension, there is an attribute relationship that relates the table's key attribute to other attributes from that table. You create this relationship when you create the dimension.  
  
 An attribute relationship provides the following advantages:  
  
-   Reduces the amount of memory needed for dimension processing. This speeds up dimension, partition, and query processing.  
  
-   Increases query performance because storage access is faster and execution plans are better optimized.  
  
-   Results in the selection of more effective aggregates by the aggregation design algorithms, provided that user-defined hierarchies have been defined along the relationship paths.  
  
    > [!NOTE]  
    >  For more information about the importance and implications of defining and configuring attribute relationships, see the section, “Enhancing query performance,” in the [SQL Server 2005 Analysis Services Performance Guide](http://go.microsoft.com/fwlink/?LinkId=81621).  
  
## Attribute Relationship Considerations  
 When the underlying data supports it, you should also define unique attribute relationships between attributes. To define unique attribute relationships, use the **Attribute Relationships** tab of Dimension Designer.  
  
 Any attribute that has an outgoing relationship must have a unique key relative to its related attribute. In other words, a member in a source attribute must identify one and only one member in a related attribute. For example, consider the relationship, City -> State. In this relationship, the source attribute is City and the related attribute is State. The source attribute is the “many” side and the related side is the “one” side of the many-to-one relationship. The key for the source attribute would be City + State. For more information, see [Create, Modify, or Delete an Attribute Relationship](../../analysis-services/multidimensional-models/attribute-relationships-create-modify-or-delete-relationship.md).  
  
 For more information about properties of an attribute relationship, see [Configure Attribute Relationship Properties](../../analysis-services/multidimensional-models/attribute-relationships-configure-attribute-properties.md).  
  
> [!NOTE]  
>  Defining attribute relationships incorrectly can cause invalid query results.  
  
## See Also  
 [Attribute Relationships](../../analysis-services/multidimensional-models-olap-logical-dimension-objects/attribute-relationships.md)  
  
  