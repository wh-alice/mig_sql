---
title: "DQS Cleansing Transformation | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "data correction"
  - "correct data"
ms.assetid: d2ec1b1a-c745-4741-b57c-6fdb524a154c
caps.latest.revision: 35
ms.author: "douglasl"
manager: "jhubbard"
---
# DQS Cleansing Transformation
  The DQS Cleansing transformation uses Data Quality Services (DQS) to correct data from a connected data source, by applying approved rules that were created for the connected data source or a similar data source. For more information about data correction rules, see [DQS Knowledge Bases and Domains](../../../data-quality-services/dqs-knowledge-bases-and-domains.md). For more information DQS, see [Data Quality Services Concepts](../../../data-quality-services/data-quality-services-concepts.md).  
  
 To determine whether the data has to be corrected, the DQS Cleansing transformation processes data from an input column when the following conditions are true:  
  
-   The column is selected for data correction.  
  
-   The column data type is supported for data correction.  
  
-   The column is mapped a domain that has a compatible data type.  
  
 The transformation also includes an error output that you configure to handle row-level errors. To configure the error output, use the **DQS Cleansing Transformation Editor**.  
  
 You can include the [Fuzzy Grouping Transformation](../../../integration-services/data-flow/transformations/fuzzy-grouping-transformation.md) in the data flow to identify rows of data that are likely to be duplicates.  
  
## Data Quality Projects and Values  
 When you process data with the DQS Cleansing transformation, a cleansing project is created on the Data Quality Server. You use the Data Quality Client to manage the project. In addition, you can use the Data Quality Client to import the project values into a DQS knowledge base domain. You can import the values only to a domain (or linked domain) that the DQS Cleansing transformation was configured to use.  
  
## Related Tasks  
  
-   [Open Integration Services Projects in Data Quality Client](../../../data-quality-services/open-integration-services-projects-in-data-quality-client.md)  
  
-   [Import Cleansing Project Values into a Domain](../../../data-quality-services/import-cleansing-project-values-into-a-domain.md)  
  
-   [Apply Data Quality Rules to Data Source](../../../integration-services/data-flow/transformations/apply-data-quality-rules-to-data-source.md)  
  
## Related Content  
  
-   [Open, Unlock, Rename, and Delete a Data Quality Project](https://msdn.microsoft.com/library/hh510417.aspx)  
  
-   Article, [Cleansing complex data using composite domains](http://social.technet.microsoft.com/wiki/contents/articles/13324.using-dqs-cleansing-complex-data-using-composite-domains.aspx), on social.technet.microsoft.com.  
  
  