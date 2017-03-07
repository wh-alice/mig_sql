---
title: "BottomCount (DMX) | Microsoft Docs"
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
  - "BOTTOMCOUNT"
dev_langs: 
  - "DMX"
helpviewer_keywords: 
  - "BottomCount function"
ms.assetid: bbe2f1d6-c8b5-49ce-ae13-337114a50aee
caps.latest.revision: 37
ms.author: "owend"
manager: "erikre"
---
# BottomCount (DMX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the specified number of bottom-most rows, in increasing order of rank as specified by an expression.  
  
## Syntax  
  
```  
  
BottomCount(<table expression>, <rank expression>, <count>)  
```  
  
## Applies To  
 An expression that returns a table, such as a \<table column reference>, or a function that returns a table.  
  
## Return Type  
 \<table expression>  
  
## Remarks  
 The value that is supplied by the \<rank expression> argument determines the increasing order of rank for the rows that are supplied in the \<table expression> argument, and the number of bottom-most rows that is specified in the \<count> argument is returned.  
  
## Examples  
 The following example creates a prediction query against the Association model that you build by using the [Basic Data Mining Tutorial](../a9notintoc/basic-data-mining-tutorial.md).  
  
 To understand how BottomCount works, it might be helpful to first execute a prediction query that returns only the nested table.  
  
```  
SELECT Predict ([Association].[v Assoc Seq Line Items], INCLUDE_STATISTICS, 10)  
FROM   
     [Association]  
NATURAL PREDICTION JOIN  
SELECT (SELECT 'Women''s Mountain Shorts' as [Model]) AS [v Assoc Seq Line Items]) AS t  
```  
  
> [!NOTE]  
>  In this example, the value supplied as input contains a single quotation mark, and therefore must be escaped by prefacing it with another single quotation mark. If you are not sure of the syntax for inserting an escape character, you can use the Prediction Query Builder to create the query. When you select the value from the dropdown list, the required escape character is inserted for you. For more information, see [Create a Singleton Query in the Data Mining Designer](../analysis-services/data-mining/create-a-singleton-query-in-the-data-mining-designer.md).  
  
 Example results:  
  
|Model|$SUPPORT|$PROBABILITY|$ADJUSTEDPROBABILITY|  
|-----------|--------------|------------------|--------------------------|  
|Sport-100|4334|0.291283016|0.252695851|  
|Water Bottle|2866|0.192620472|0.175205052|  
|Patch kit|2113|0.142012232|0.132389356|  
|Mountain Tire Tube|1992|0.133879965|0.125304948|  
|Mountain-200|1755|0.117951475|0.111260823|  
|Road Tire Tube|1588|0.106727603|0.101229538|  
|Cycling Cap|1473|0.098998589|0.094256014|  
|Fender Set - Mountain|1415|0.095100477|0.090718432|  
|Mountain Bottle Cage|1367|0.091874454|0.087780332|  
|Road Bottle Cage|1195|0.080314537|0.077173962|  
  
 The BottomCount function takes the results of this query and returns the smallest-valued rows that sum to the specified percentage.  
  
```  
SELECT   
BottomCount  
    (  
    Predict ([Association].[v Assoc Seq Line Items],INCLUDE_STATISTICS,10),  
    $SUPPORT,  
    3)  
FROM   
     [Association]  
NATURAL PREDICTION JOIN  
(SELECT (SELECT 'Women''s Mountain Shorts' as [Model]) AS [v Assoc Seq Line Items]) AS t  
```  
  
 The first argument to the BottomCount function is the name of a table column. In this example, the nested table is returned by calling the Predict function and using the INCLUDE_STATISTICS argument.  
  
 The second argument to the BottomCount function is the column in the nested table that you use to order the results. In this example, the INCLUDE_STATISTICS option returns the columns $SUPPORT, $PROBABILTY, and $ADJUSTED PROBABILITY. This example uses $SUPPORT because support values are not fractional and therefore are easier to verify.  
  
 The third argument to the BottomCount function specifies the number of rows. To get the three lowest-ranked rows, as ordered by $SUPPORT, you type 3.  
  
 Example results:  
  
|Model|$SUPPORT|$PROBABILITY|$ADJUSTEDPROBABILITY|  
|-----------|--------------|------------------|--------------------------|  
|Road Bottle Cage|1195|0.080314537|0.077173962|  
|Mountain Bottle Cage|1367|0.091874454|0.087780332|  
|Fender Set - Mountain|1415|0.095100477|0.090718432|  
  
 **Note** This example is provided only to illustrate the use of BottomCount. Depending on the size of your data set, this query might take a long time to run.  
  
## See Also  
 [Functions &#40;DMX&#41;](../dmx/functions-dmx.md)   
 [General Prediction Functions &#40;DMX&#41;](../dmx/general-prediction-functions-dmx.md)   
 [BottomPercent &#40;DMX&#41;](../dmx/bottompercent-dmx.md)   
 [BottomSum &#40;DMX&#41;](../dmx/bottomsum-dmx.md)   
 [TopCount &#40;DMX&#41;](../dmx/topcount-dmx.md)  
  
  