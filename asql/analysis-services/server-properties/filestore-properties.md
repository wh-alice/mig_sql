---
title: "Filestore Properties | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "Income property"
  - "InitialBonus property"
  - "PercentScanPerPrice property"
  - "FileStore properties"
  - "BackgroundTrimCost property"
  - "Tax property"
  - "PerformanceTrace property"
  - "MinimumBalance property"
  - "UnbufferedThreshold property"
  - "BackgroundTrimAmount property"
  - "MaximumBalance property"
  - "MemoryLimitMin property"
  - "MemoryLimit property"
ms.assetid: 580cf0aa-7425-4d48-aa8d-128f5b488fcd
caps.latest.revision: 19
ms.author: "owend"
manager: "erikre"
---
# Filestore Properties
  [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] supports the filestore server properties listed in the following tables. These are all advanced properties that you should not change, except under the guidance of [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] support. For more information about additional server properties and how to set them, see [Server Properties in Analysis Services](../../analysis-services/server-properties/server-properties-in-analysis-services.md).  
  
 **Applies to:** Multidimensional and Tabular server mode  
  
## Properties  
 **MemoryLimit**  
 An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] support.  
  
 **MemoryLimitMin**  
 An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] support.  
  
 **PercentScanPerPrice**  
 An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] support.  
  
 **PerformanceTrace**  
 An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] support.  
  
 **RandomFileAccessMode**  
 A Boolean property that indicates whether database files and cached files are accessed in random file access mode. This property is off by default. By default, Analysis Services does not set the random file access flag when opening partition data files for read access.  
  
 On high-end systems, particularly those with large memory resources and multiple NUMA nodes, it can be advantageous to use random file access. In random access mode, Windows bypasses page mapping operations that read data from disk into the system file cache, thereby lowering contention on the cache.  
  
 You will need to run comparison tests to determine whether query performance is improved as the result of changing this property. For best practices on running comparison tests, including clearing the cache and avoiding common mistakes, see the [SQL Server 2008 R2 Analysis Services Operations Guide](http://go.microsoft.com/fwlink/?LinkID=225539). For additional information on the tradeoffs of using this property, see [http://support.microsoft.com/kb/2549369](http://support.microsoft.com/kb/2549369).  
  
 To view or modify this property in Management Studio, enable the advanced properties list in the server properties page. You can also change the property in the msmdsrv.ini file. Restarting the server is recommended after setting this property; otherwise files that are already open will continue to be accessed in the previous mode.  
  
 **UnbufferedThreshold**  
 An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] support.  
  
## Memory Model Category  
 **MemoryModel\Tax**  
 An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] support.  
  
 **MemoryModel\Income**  
 An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] support.  
  
 **MemoryModel\MaximumBalance**  
 An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] support.  
  
 **MemoryModel\MinimumBalance**  
 An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] support.  
  
 **MemoryModel\InitialBonus**  
 An advanced property that you should not change, except under the guidance of [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] support.  
  
## See Also  
 [Server Properties in Analysis Services](../../analysis-services/server-properties/server-properties-in-analysis-services.md)   
 [Determine the Server Mode of an Analysis Services Instance](../../analysis-services/instances/determine-the-server-mode-of-an-analysis-services-instance.md)  
  
  