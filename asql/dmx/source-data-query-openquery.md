---
title: "OPENQUERY (DMX) | Microsoft Docs"
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
  - "OPENQUERY"
dev_langs: 
  - "DMX"
helpviewer_keywords: 
  - "OPENQUERY statement"
ms.assetid: fe57f3a3-a8e6-402c-995e-bd2fe28a7a7c
caps.latest.revision: 38
ms.author: "owend"
manager: "erikre"
---
# &lt;source data query&gt; - OPENQUERY
[!INCLUDE[tsql-appliesto-ss2008-all_md](../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Replaces the source data query with a query to an existing data source. The INSERT, SELECT FROM PREDICTION JOIN, and SELECT FROM NATURAL PREDICTION JOIN statements support **OPENQUERY**.  
  
## Syntax  
  
```  
  
OPENQUERY(<named datasource>, <query syntax>)  
```  
  
## Arguments  
 *named datasource*  
 A data source that exists on the [!INCLUDE[msCoName](../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)] database.  
  
 *query syntax*  
 A query syntax that returns a rowset.  
  
## Remarks  
 **OPENQUERY** provides a more secure way to access external data by supporting data source permissions. Because the connection string is stored in the data source, administrators can use the properties of the data source to manage access to the data. For more information about data sources, see [Supported Data Sources &#40;SSAS - Multidimensional&#41;](../analysis-services/multidimensional-models/supported-data-sources-ssas-multidimensional.md).  
  
 You can get a list of the data sources that are available on a server by querying the **MDSCHEMA_INPUT_DATASOURCES** schema rowset. For more information about using **MDSCHEMA_INPUT_DATASOURCES**, see [MDSCHEMA_INPUT_DATASOURCES Rowset](../analysis-services/schema-rowsets/ole-db-olap/mdschema-input-datasources-rowset.md).  
  
 You can also return a list of data sources in the current Analysis Services database by using the following DMX query:  
  
 `SELECT * FROM $system.MDSCHEMA_INPUT_DATASOURCES`  
  
## Examples  
 The following example uses the MyDS data source already defined in the [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)] database to create a connection to the [!INCLUDE[ssSampleDBDWobject](../analysis-services/data-mining/includes/sssampledbdwobject-md.md)] database and query the **vTargetMail** view.  
  
```  
OPENQUERY (MyDS,'SELECT TOP 1000 * FROM vTargetMail')  
```  
  
## See Also  
 [&#60;source data query&#62;](../dmx/source-data-query.md)   
 [Data Mining Extensions &#40;DMX&#41; Data Manipulation Statements](../Topic/Data%20Mining%20Extensions%20\(DMX\)%20Data%20Manipulation%20Statements.md)   
 [Data Mining Extensions &#40;DMX&#41; Statement Reference](../Topic/Data%20Mining%20Extensions%20\(DMX\)%20Statement%20Reference.md)  
  
  