---
title: "Partition Processing Destination Editor (Connection Manager Page) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.dts.designer.partprocessingtransformation.connection.f1"
helpviewer_keywords: 
  - "Partition Processing Destination Editor"
ms.assetid: 7add6f82-eed1-47fc-a5d7-7b91f3f24d34
caps.latest.revision: 27
ms.author: "douglasl"
manager: "jhubbard"
---
# Partition Processing Destination Editor (Connection Manager Page)
  Use the **Connection Manager** page of the **Partition Processing Destination Editor** dialog box to specify a connection to a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project or to an instance of [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)].  
  
 To learn more abou the Partition Processing destination, see [Partition Processing Destination](../../integration-services/data-flow/partition-processing-destination.md).  
  
> [!NOTE]  
>  Tasks described here do not apply to Analysis Services tabular models.  You cannot map input columns to partition columns for tabular models. You can instead use the Analysis Services Execute DDL task [Analysis Services Execute DDL Task](../../integration-services/control-flow/analysis-services-execute-ddl-task.md) to process the partition.  
  
## Options  
 **Connection manager**  
 Select an existing connection manager from the list, or create a new connection by clicking **New**.  
  
 **New**  
 Create a new connection by using the **Add Analysis Services Connection Manager** dialog box.  
  
 **List of available partitions**  
 Select the partition to process.  
  
 **Processing method**  
 Select the processing method. The default value of this option is **Full**.  
  
|Value|Description|  
|-----------|-----------------|  
|Add (incremental)|Perform an incremental processing of the partition.|  
|Full|Perform full processing of the partition.|  
|Data only|Perform an update processing of the partition.|  
  
## See Also  
 [Integration Services Error and Message Reference](../../integration-services/integration-services-error-and-message-reference.md)   
 [Partition Processing Destination Editor &#40;Mappings Page&#41;](../../integration-services/data-flow/partition-processing-destination-editor-mappings-page.md)   
 [Partition Processing Destination Editor &#40;Advanced Page&#41;](../../integration-services/data-flow/partition-processing-destination-editor-advanced-page.md)  
  
  