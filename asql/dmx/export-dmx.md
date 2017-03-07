---
title: "EXPORT (DMX) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-03-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "EXPORT"
dev_langs: 
  - "DMX"
helpviewer_keywords: 
  - "exporting mining models"
  - "exporting mining structures"
  - "mining structures [DMX], exporting"
  - "EXPORT statement"
ms.assetid: 97617071-e560-4080-81af-a80276fc0823
caps.latest.revision: 39
ms.author: "owend"
manager: "erikre"
---
# EXPORT (DMX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Extracts a mining model or mining structure object from the server to an Analysis Services Backup File (.abf).  
  
## Syntax  
  
```  
  
EXPORT <object type> <object name>[, <object name>] [<object type> <object name>[, <object name] ] TO <filename> [WITH DEPENDENCIES]  
```  
  
## Arguments  
 *object type*  
 Optional.The type of the object to export (either mining model or mining structure).  
  
 *object name*  
 Optional. The name of the object to export.  
  
 *filename*  
 The name and location of the file to export as a string.  
  
## Remarks  
 If the statement specifies a mining model, the resultant file will also contain an associated mining structure. If the statement specifies **WITH DEPENDENCIES**, all objects required to process the object (for example, the data source and data source view) are included in the .abf file.  
  
 You must be a database or server administrator to export or import objects from a [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] database.  
  
## Export Mining Structure Example  
 The following example exports the Targeted Mailing and Forecasting mining structures, and the Association mining model to a specific file location. Because the Association model is part of the Market Basket mining structure, the example also exports the Market Basket structure. Any other mining models that may exist as part of the Market Basket mining structure will not be exported because the Association model was exported using **MINING MODEL**, not **MINING STRUCTURE**.  
  
```  
EXPORT MINING STRUCTURE [Targeted Mailing], [Forecasting] MINING MODEL Association TO 'C:\TM_NEW.abf'  
```  
  
## Export Mining Model Example  
 The following example exports the Association mining model to a specified file location. Because the statement specifies **WITH DEPENDENCIES**, the data source and data source view objects are also included in the .abf file.  
  
```  
EXPORT MINING MODEL [Association] TO 'C:\Association_NEW.abf' WITH DEPENDENCIES  
```  
  
## See Also  
 [Data Mining Extensions &#40;DMX&#41; Data Definition Statements](../dmx/dmx-statements-data-definition.md)   
 [Data Mining Extensions &#40;DMX&#41; Data Manipulation Statements](../dmx/dmx-statements-data-manipulation.md)   
 [Data Mining Extensions &#40;DMX&#41; Statement Reference](../dmx/data-mining-extensions-dmx-statements.md)   
 [IMPORT &#40;DMX&#41;](../dmx/import-dmx.md)   
 [Export and Import Data Mining Objects](../analysis-services/data-mining/export-and-import-data-mining-objects.md)  
  
  