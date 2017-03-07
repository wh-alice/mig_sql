---
title: "General (Partition Properties Dialog Box) (SSMS) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "reference"
f1_keywords: 
  - "sql13.asvs.sqlserverstudio.partitionproperties.general.f1"
ms.assetid: efb505be-354f-4d23-8f2d-3e76fa50d27b
caps.latest.revision: 14
ms.author: "owend"
manager: "erikre"
robots: noindex,nofollow
---
# General (Partition Properties Dialog Box) (SSMS)
  Use the **General** page of the **Partition Properties** dialog box in SQL Server Management Studio to set the general properties of a partition in a measure group for a cube in an [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] database.  
  
## Options  
  
|Term|Definition|  
|----------|----------------|  
|**Aggregation Design ID**|Displays the identifier of the aggregation design used by the partition.|  
|**Aggregation Prefix**|Displays the default prefix of aggregation instances that are contained by the partition.|  
|**Create Timestamp**|Displays the date and time the partition was created.|  
|**Current Storage Mode**|Displays the current storage mode of the partition.<br /><br /> Note: This mode may vary depending on the proactive caching settings for the partition. For more information about proactive caching, see [Proactive Caching &#40;Partitions&#41;](../analysis-services/multidimensional-models-olap-logical-cube-objects/partitions-proactive-caching.md).|  
|**Description**|Type to change the description of the partition.|  
|**Estimated Rows**|Type the estimated number of rows in the underlying data source represented by the partition. This value is used during processing to estimate the time and storage required to process the partition.|  
|**Estimated Size**|Displays the estimated size of the partition. Will show 0 for multidimensional models.|  
|**ID**|Displays the identifier of the partition.|  
|**Last Processed**|Displays the date and time the partition was last processed.|  
|**Last Schema Update**|Displays the date and time the metadata for the partition was last updated.|  
|**Name**|Displays the name of the partition.|  
|**Processing Mode**|Select the processing mode for the partition. For more information about processing modes for [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] objects, see [Processing a multidimensional model &#40;Analysis Services&#41;](../analysis-services/multidimensional-models/processing-a-multidimensional-model-analysis-services.md).|  
|**Remote Data Source ID**|Displays the identifier of the remote data source from which the source data for the partition is retrieved.<br /><br /> Note: This property contains a value only for remote partitions.|  
|**Slice**|Displays the expression that identifies the data slice represented by the partition.|  
|**Source**|Displays the table or query that provides the source data for the partition.|  
|**State**|Displays the current processing state of the partition.|  
|**Storage Location**|Displays the folder in which the data for the partition is stored.<br /><br /> Note: This property contains a value only if a storage location other than the default storage location for the [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] instance is specified.|  
|**Type**|Displays the type of the partition.|  
  
## See Also  
 [Partitions &#40;Analysis Services - Multidimensional Data&#41;](../analysis-services/multidimensional-models-olap-logical-cube-objects/partitions-analysis-services-multidimensional-data.md)   
 [Remote Partitions](../analysis-services/multidimensional-models-olap-logical-cube-objects/partitions-remote-partitions.md)   
 [Partition Properties Dialog Box &#40;SSMS&#41;](../a9retired/partition-properties-dialog-box-ssms.md)   
 [Selection &#40;Partition Properties Dialog Box&#41; &#40;SSMS&#41;](../a9retired/selection-partition-properties-dialog-box-ssms.md)   
 [Proactive Caching &#40;Partition Properties Dialog Box&#41; &#40;SSMS&#41;](../a9retired/proactive-caching-partition-properties-dialog-box-ssms.md)   
 [Error Configuration for Cube, Partition, and Dimension Processing &#40;SSAS - Multidimensional&#41;](../analysis-services/multidimensional-models/error-configuration-for-cube-partition-and-dimension-processing.md)  
  
  