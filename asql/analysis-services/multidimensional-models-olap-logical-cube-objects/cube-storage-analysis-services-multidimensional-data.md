---
title: "Cube Storage (Analysis Services - Multidimensional Data) | Microsoft Docs"
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
  - "measure groups [Analysis Services], cubes"
  - "cubes [Analysis Services], storage"
  - "linked measure groups [Analysis Services]"
  - "storing data [Analysis Services], cubes"
  - "partitions [Analysis Services], cubes"
  - "storage [Analysis Services], cubes"
ms.assetid: 1b1ad360-9a9b-4996-bee9-84238a2bb4ac
caps.latest.revision: 41
ms.author: "owend"
manager: "erikre"
---
# Cube Storage (Analysis Services - Multidimensional Data)
  Storage may include only the cube metadata, or may include all of the source data from the fact table as well as the aggregations defined by dimensions related to the measure group. The amount of data stored depends upon the storage mode selected and the number of aggregations. The amount of data stored directly affects query performance. [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] uses several techniques for minimizing the space required for storage of cube data and aggregations:  
  
-   Storage options enable you to select the storage modes and locations that are most appropriate for cube data.  
  
-   A sophisticated algorithm designs efficient summary aggregations to minimize storage without sacrificing speed.  
  
-   Storage is not allocated for empty cells.  
  
 Storage is defined on a partition-by-partition basis, and at least one partition exists for each measure group in a cube. For more information, see [Partitions &#40;Analysis Services - Multidimensional Data&#41;](../../analysis-services/multidimensional-models-olap-logical-cube-objects/partitions-analysis-services-multidimensional-data.md), [Partition Storage Modes and Processing](../../analysis-services/multidimensional-models-olap-logical-cube-objects/partitions-partition-storage-modes-and-processing.md), [Measures and Measure Groups](../../analysis-services/multidimensional-models/measures-and-measure-groups.md), and [Create Measures and Measure Groups in Multidimensional Models](../../analysis-services/multidimensional-models/create-measures-and-measure-groups-in-multidimensional-models.md).  
  
## Partition Storage  
 Storage for a measure group can be divided into multiple partitions. Partitions enable you to distribute a measure group into discrete segments on a single server or across multiple servers, and to optimize storage and query performance. Each partition in a measure group can be based on a different data source and stored using different storage settings.  
  
 You specify the data source for a partition when you create it. You can also change the data source for any existing partition. A measure group can be partitioned vertically or horizontally. Each partition in a vertically partitioned measure group is based on a filtered view of a single source table. For example, if a measure group is based on a single table that contains several years of data, you could create a separate partition for each year's data. In contrast, each partition in a horizontally partitioned measure group is based on a separate table. You would use horizontal partitions if the data source stores each year's data in a separate table.  
  
 Partitions are initially created with the same storage settings as the measure group in which they are created. The storage settings determine whether the detail and aggregation data is stored in multidimensional format on the instance of [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)], in relational format on the source server, or a combination of both. Storage settings also determine whether proactive caching is used to automatically process source data changes to the multidimensional data stored on the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)].  
  
 The partitions of a cube are not visible to the user. However, the choice of storage settings for different partitions may affect the immediacy of data, the amount of disk space that is used, and query performance. Partitions can be stored on multiple instances of [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)]. This provides a clustered approach to cube storage, and distributes workload across [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] servers. For more information, see [Partition Storage Modes and Processing](../../analysis-services/multidimensional-models-olap-logical-cube-objects/partitions-partition-storage-modes-and-processing.md), [Remote Partitions](../../analysis-services/multidimensional-models-olap-logical-cube-objects/partitions-remote-partitions.md), and [Partitions &#40;Analysis Services - Multidimensional Data&#41;](../../analysis-services/multidimensional-models-olap-logical-cube-objects/partitions-analysis-services-multidimensional-data.md).  
  
## Linked Measure Groups  
 It can require considerable disk space to store multiple copies of a cube on different instances of [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)], but you can greatly reduce the space needed by replacing the copies of the measure group with linked measure groups. A linked measure group is based on a measure group in a cube in another [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] database, on the same or a different instance of [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)]. A linked measure group can also be used with linked dimensions from the same source cube. The linked dimensions and measure groups use the aggregations of the source cube and have no data storage requirements of their own. Therefore, by maintaining the source measure groups and dimensions in one database, and creating linked cubes and dimensions in cubes in other databases, you can save disk space that otherwise would be used for storage. For more information, see [Linked Measure Groups](../../analysis-services/multidimensional-models/linked-measure-groups.md).  
  
## See Also  
 [Aggregations and Aggregation Designs](../../analysis-services/multidimensional-models-olap-logical-cube-objects/aggregations-and-aggregation-designs.md)  
  
  