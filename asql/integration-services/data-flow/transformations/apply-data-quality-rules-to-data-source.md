---
title: "Apply Data Quality Rules to Data Source | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: a965e8f2-004d-4ccc-8523-a185b35b26e2
caps.latest.revision: 8
ms.author: "douglasl"
manager: "jhubbard"
---
# Apply Data Quality Rules to Data Source
  You can use Data Quality Services (DQS) to correct data in the package data flow by connecting the DQS Cleansing transformation to the data source. For more information about DQS, see [Data Quality Services Concepts](../../../data-quality-services/data-quality-services-concepts.md). For more information about the transformation, see [DQS Cleansing Transformation](../../../integration-services/data-flow/transformations/dqs-cleansing-transformation.md).  
  
 When you process data with the DQS Cleansing transformation, a data quality project is created on the Data Quality Server. You use the Data Quality Client to manage the project. For more information, see [Open, Unlock, Rename, and Delete a Data Quality Project](https://msdn.microsoft.com/library/hh510417.aspx).  
  
### To correct data in the data flow  
  
1.  Create a package.  
  
2.  Add and configure the DQS Cleansing transformation. For more information, see [DQS Cleansing Transformation Editor Dialog Box](../../../integration-services/data-flow/transformations/dqs-cleansing-transformation-editor-dialog-box.md).  
  
3.  Connect the DQS Cleansing transformation to a data source.  
  
  