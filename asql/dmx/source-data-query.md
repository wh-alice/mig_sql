---
title: "&lt;source data query&gt; | Microsoft Docs"
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
dev_langs: 
  - "DMX"
helpviewer_keywords: 
  - "data sources [DMX]"
  - "predictions [DMX]"
  - "source data query element"
  - "queries [DMX], source data"
  - "external data access [DMX]"
  - "<source data query> element"
  - "training mining models"
ms.assetid: 9dce5e37-1354-4d28-87c2-f9c419cb5b09
caps.latest.revision: 41
ms.author: "owend"
manager: "erikre"
---
# &lt;source data query&gt;
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  To train a data mining model and create predictions from a mining model, you have to access data that is external to the [!INCLUDE[msCoName](../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)] database. You use the \<source data query> clause in Data Mining Extensions (DMX) to define this external data. The [INSERT INTO &#40;DMX&#41;](../dmx/insert-into-dmx.md), [SELECT FROM &#60;model&#62; PREDICTION JOIN &#40;DMX&#41;](../dmx/select-from-model-prediction-join-dmx.md), and [SELECT FROM NATURAL PREDICTION JOIN](../dmx/select-from-model-prediction-join-dmx.md) statements all use **\<source data query>**.  
  
## Query types  
 The three most common ways to specify source data are:  
  
 [OPENQUERY &#40;DMX&#41;](../Topic/OPENQUERY%20\(DMX\).md)  
 This statement queries data that is external to an instance of [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)], by using an existing data source.  
  
 While **OPENQUERY** is similar in function to **OPENROWSET**, **OPENQUERY** has the following benefits:  
  
-   A DMX query is much easier to write with **OPENQUERY**. Instead of creating a new connection string every time that you write a query, you can take advantage of the existing connection string in the data source. The data source object can also control data access for individual users.  
  
-   The administrator has more control over how the data on the server is accessed. For example, the administrator can manage which providers are loaded into the server and which external data can be accessed.  
  
 [OPENROWSET &#40;DMX&#41;](../Topic/OPENROWSET%20\(DMX\).md)  
 This statement queries data that is external to an instance of [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)], by using an existing data source.  
  
 [SHAPE &#40;DMX&#41;](../Topic/SHAPE%20\(DMX\).md)  
 This statement queries multiple data sources to create a nested table. By using **SHAPE**, you can combine data from multiple sources into a single hierarchical table. This lets you take advantage of the ability of [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)] to nest tables by imbedding a table within a table.  
  
 To specify the source data, you can also use the following options:  
  
-   Any valid DMX statement  
  
-   Any valid Multidimensional Expressions (MDX) statement  
  
-   A table that returns a stored procedure  
  
-   An XML for Analysis (XMLA) rowset  
  
-   A rowset parameter  
  
## See Also  
 [Data Mining Extensions &#40;DMX&#41; Data Manipulation Statements](../Topic/Data%20Mining%20Extensions%20\(DMX\)%20Data%20Manipulation%20Statements.md)   
 [Data Mining Extensions &#40;DMX&#41; Statement Reference](../Topic/Data%20Mining%20Extensions%20\(DMX\)%20Statement%20Reference.md)   
 [Nested Tables &#40;Analysis Services - Data Mining&#41;](../analysis-services/data-mining/nested-tables-analysis-services-data-mining.md)  
  
  