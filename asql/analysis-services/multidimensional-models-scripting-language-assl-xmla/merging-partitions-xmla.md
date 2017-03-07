---
title: "Merging Partitions (XMLA) | Microsoft Docs"
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
  - "merging partitions [XMLA]"
  - "XMLA, partitions"
  - "partitions [Analysis Services], XML for Analysis"
  - "XML for Analysis, partitions"
ms.assetid: 657e1d4d-6d50-40f8-a771-7b20c9d865f8
caps.latest.revision: 14
ms.author: "owend"
manager: "erikre"
---
# Merging Partitions (XMLA)
  If partitions have the same aggregation design and structure, you can merge the partition by using the [MergePartitions](../../analysis-services/xmla/xml-elements-commands/mergepartitions-element-xmla.md) command in XML for Analysis (XMLA). Merging partitions is an important action to perform when you manage partitions, especially those partitions that contain historical data partitioned by date.  
  
 For example, a financial cube may use two partitions:  
  
-   One partition represents financial data for the current year, using real-time relational OLAP (ROLAP) storage settings for performance.  
  
-   Another partition contains financial data for previous years, using multidimensional OLAP (MOLAP) storage settings for storage.  
  
 Both partitions use different storage settings, but use the same aggregation design. Instead of processing the cube across years of historical data at the end of the year, you can instead use the **MergePartitions** command to merge the partition for the current year into the partition for previous years. This preserves the aggregation data without requiring a potentially time-consuming full processing of the cube.  
  
## Specifying Partitions to Merge  
 When the **MergePartitions** command runs, the aggregation data stored in the source partitions specified in the [Source](../../analysis-services/xmla/xml-elements-properties/source-element-xmla.md) property is added to the target partition specified in the [Target](../../analysis-services/xmla/xml-elements-properties/target-element-xmla.md) property.  
  
> [!NOTE]  
>  The **Source** property can contain more than one partition object reference. However, the **Target** property cannot.  
  
 To be successfully merged, the partitions specified in both the **Source** and **Target** must be contained by the same measure group and use the same aggregation design. Otherwise, an error occurs.  
  
 The partitions specified in the **Source** are deleted after the **MergePartitions** command is successfully completed.  
  
## Examples  
  
### Description  
 The following example merges all the partitions in the **Customer Counts** measure group of the **Adventure Works** cube in the **Adventure Works DW** sample [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] database into the **Customers_2004** partition.  
  
### Code  
  
```  
<MergePartitions xmlns="http://schemas.microsoft.com/analysisservices/2003/engine">  
  <Sources>  
    <Source>  
      <DatabaseID>Adventure Works DW Multidimensional 2012</DatabaseID>  
      <CubeID>Adventure Works DW</CubeID>  
      <MeasureGroupID>Fact Internet Sales 1</MeasureGroupID>  
      <PartitionID>Internet_Sales_2001</PartitionID>  
    </Source>  
    <Source>  
      <DatabaseID>Adventure Works DW Multidimensional 2012</DatabaseID>  
      <CubeID>Adventure Works DW</CubeID>  
      <MeasureGroupID>Fact Internet Sales 1</MeasureGroupID>  
      <PartitionID>Internet_Sales_2002</PartitionID>  
    </Source>  
    <Source>  
      <DatabaseID>Adventure Works DW Multidimensional 2012</DatabaseID>  
      <CubeID>Adventure Works DW</CubeID>  
      <MeasureGroupID>Fact Internet Sales 1</MeasureGroupID>  
      <PartitionID>Internet_Sales_2003</PartitionID>  
    </Source>  
  </Sources>  
  <Target>  
    <DatabaseID>Adventure Works DW Multidimensional 2012</DatabaseID>  
    <CubeID>Adventure Works DW</CubeID>  
    <MeasureGroupID>Fact Internet Sales 1</MeasureGroupID>  
    <PartitionID>Internet_Sales_2004</PartitionID>  
  </Target>  
</MergePartitions>  
```  
  
## See Also  
 [Developing with XMLA in Analysis Services](../../analysis-services/multidimensional-models-scripting-language-assl-xmla/developing-with-xmla-in-analysis-services.md)  
  
  