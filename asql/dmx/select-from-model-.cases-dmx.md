---
title: "SELECT FROM &lt;model&gt;.CASES (DMX) | Microsoft Docs"
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
  - "SELECT"
  - "CASES"
  - "FROM"
dev_langs: 
  - "DMX"
helpviewer_keywords: 
  - "SELECT FROM <model>.CASES statement"
  - "drillthrough [DMX]"
ms.assetid: d58acb47-aaa6-40b7-b8c4-6a6700fbc1dd
caps.latest.revision: 55
ms.author: "owend"
manager: "erikre"
---
# SELECT FROM &lt;model&gt;.CASES (DMX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Supports drillthrough, and returns the cases that were used to train the model. You can also return structure columns that are not included in the model, if drillthrough has been enabled on the mining structure and on the mining model, and if you have the appropriate permissions.  
  
 If drillthrough is not enabled on the mining model, this statement will fail.  
  
> [!NOTE]  
>  In Data Mining Extensions (DMX) you can only enable drillthrough when you create the model. You can add drillthrough to an existing model by using [!INCLUDE[ssBIDevStudioFull](../analysis-services/includes/ssbidevstudiofull-md.md)], but the model must be reprocessed before you can view or query the cases.  
  
 For more information about how to enable drillthrough, see [CREATE MINING MODEL &#40;DMX&#41;](../dmx/create-mining-model-dmx.md), [SELECT INTO &#40;DMX&#41;](../dmx/select-into-dmx.md), and [ALTER MINING STRUCTURE &#40;DMX&#41;](../dmx/alter-mining-structure-dmx.md).  
  
## Syntax  
  
```  
  
SELECT [FLATTENED] [TOP <n>] <expression list> FROM <model>.CASES  
[WHERE <condition expression>][ORDER BY <expression> [DESC|ASC]]  
```  
  
## Arguments  
 *n*  
 Optional. An integer that specifies how many rows to return.  
  
 *expression list*  
 A comma-separated list of expressions. An expression can include column identifiers, user-defined functions, UDFs, and VBA functions, and others.  
  
 To include a structure column that is not included in the mining model, use the function `StructureColumn('<structure column name>')`.  
  
 *model*  
 A model identifier.  
  
 *condition expression*  
 A condition to restrict the values that are returned from the column list.  
  
 *expression*  
 Optional. An expression that returns a scalar value.  
  
## Remarks  
 If drillthrough is enabled on both the mining model and the mining structure, users who are member of a role that has drillthrough permission on the model and the structure can access columns of the mining structure that are not included in the mining model. Therefore, to protect sensitive data or personal information, you should construct your data source view to mask personal information, and grant **AllowDrillthrough** permission on a mining structure only when it is necessary.  
  
 The [Lag &#40;DMX&#41;](../dmx/lag-dmx.md) function can be used with time series models to return or filter on the time lag between each case and the initial time.  
  
 Using the [IsInNode &#40;DMX&#41;](../dmx/isinnode-dmx.md) function in the **WHERE** clause returns only cases that are associated with the node that is specified by the NODE_UNIQUE_NAME column of the schema rowset.  
  
## Examples  
 The following examples are based on the mining structure Targeted Mailing, which is based on the [!INCLUDE[ssSampleDBDWobject](../analysis-services/data-mining/includes/sssampledbdwobject-md.md)]database and its associated mining models. For more information, see [Basic Data Mining Tutorial](../Topic/Basic%20Data%20Mining%20Tutorial.md).  
  
### Example 1: Drillthrough to Model Cases and Structure Columns  
 The following example returns the columns for all the cases that were used to test the Targeted Mailing model. If the mining structure on which the model is built does not have a holdout test data set, this query would return 0 cases. You can use the expression list to return only the columns that you need.  
  
```  
SELECT * FROM [TM Decision Tree].Cases  
WHERE IsTestCase();  
```  
  
### Example 2: Drillthrough to Training Cases in a Specific Node  
 The following example returns just those cases that were used to train Cluster 2. The node for Cluster 2 has the value '002' for the NODE_UNIQUE_NAME column. The example also returns one structure column, [Customer Key], that was not a part of the mining model, and provides the alias `CustomerID` for the column. Note that the name of the structure column is passed as a string value and therefore must be enclosed in quotation marks, not brackets.  
  
```  
SELECT StructureColumn('Customer Key') AS CustomerID, *   
FROM [TM_Clustering].Cases  
WHERE IsTrainingCase()  
AND IsInNode('002')  
```  
  
 To return a structure column, drillthrough permissions must be enabled on both the mining model and the mining structure.  
  
> [!NOTE]  
>  Not all mining model types support drillthrough. For information about the models that support drillthrough, see [Drillthrough Queries &#40;Data Mining&#41;](../analysis-services/data-mining/drillthrough-queries-data-mining.md).  
  
## See Also  
 [SELECT &#40;DMX&#41;](../dmx/select-dmx.md)   
 [Data Mining Extensions &#40;DMX&#41; Data Definition Statements](../Topic/Data%20Mining%20Extensions%20\(DMX\)%20Data%20Definition%20Statements.md)   
 [Data Mining Extensions &#40;DMX&#41; Data Manipulation Statements](../Topic/Data%20Mining%20Extensions%20\(DMX\)%20Data%20Manipulation%20Statements.md)   
 [Data Mining Extensions &#40;DMX&#41; Statement Reference](../Topic/Data%20Mining%20Extensions%20\(DMX\)%20Statement%20Reference.md)  
  
  