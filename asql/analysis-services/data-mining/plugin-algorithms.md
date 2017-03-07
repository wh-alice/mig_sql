---
title: "Plugin Algorithms | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "third-party algorithms [Analysis Services]"
  - "algorithms [data mining], creating"
  - "plugin algorithms [Analysis Services]"
ms.assetid: fe364ddc-576e-42fc-9ced-baa399992f92
caps.latest.revision: 25
ms.author: "owend"
manager: "jhubbard"
---
# Plugin Algorithms
  In addition to the algorithms that [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] provides, there are many other algorithms that you can use for data mining. Accordingly, [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] provides a mechanism for "plugging in" algorithms that are created by third parties. As long as the algorithms follow certain standards, you can use them within [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] just as you use the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] algorithms. Plugin algorithms have all the capabilities of algorithms that [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] provides.  
  
 For a full description of the interfaces that [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] uses to communicate with plugin algorithms, see the samples for creating a custom algorithm and custom model viewer that are published on [CodePlex](http://go.microsoft.com/fwlink/?LinkID=87843) Web site.  
  
## Algorithm Requirements  
 To plug an algorithm into [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)], you must implement the following COM interfaces:  
  
 **IDMAlgorithm**  
 Implements an algorithm that produces models, and implements the prediction operations of the resulting models.  
  
 **IDMAlgorithmNavigation**  
 Enables browsers to access the content of the models.  
  
 **IDMPersist**  
 Enables the models that the algorithm trains to be saved and loaded by [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)].  
  
 **IDMAlgorithmMetadata**  
 Describes the capabilities and input parameters of the algorithm.  
  
 **IDMAlgorithmFactory**  
 Creates instances of the objects that implement the algorithm interface, and provides [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] with access to the algorithm-metadata interface.  
  
 [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] uses these COM interfaces to communicate with plugin algorithms. Although plugin algorithms that you use must support the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] OLE DB for Data Mining specification, they do not have to support all the data mining options in the specification. You can use the [MINING_SERVICES](../../analysis-services/schema-rowsets/data-mining/dmschema-mining-services-rowset.md) schema rowset to determine the capabilities of an algorithm. This schema rowset lists the data mining support options for each plugin algorithm provider.  
  
 You must register new algorithms before you use them with [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)]. To register an algorithm, include the following information in the .ini file of the instance of [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] on which you want to include the algorithms:  
  
-   The algorithm name  
  
-   ProgID (this is optional and will only be included for plugin algorithms)  
  
-   A flag that indicates whether the algorithm is enabled or not  
  
 The following code sample illustrates how to register a new algorithm:  
  
 `<ConfigurationSettings>`  
  
 `...`  
  
 `<DataMining>`  
  
 `...`  
  
 `<Algorithms>`  
  
 `...`  
  
 `<Sample_Plugin_Algorithm>`  
  
 `<Enabled>1</Enabled>`  
  
 `<ProgID>Microsoft.DataMining.SamplePlugInAlgorithm.Factory</ProgID>`  
  
 `</Sample_PlugIn_Algorithm>`  
  
 `...`  
  
 `</Algorithms>`  
  
 `...`  
  
 `</DataMining>`  
  
 `...`  
  
 `</ConfigurationSettings>`  
  
## See Also  
 [Data Mining Algorithms &#40;Analysis Services - Data Mining&#41;](../../analysis-services/data-mining/data-mining-algorithms-analysis-services-data-mining.md)   
 [DMSCHEMA_MINING_SERVICES Rowset](../../analysis-services/schema-rowsets/data-mining/dmschema-mining-services-rowset.md)  
  
  