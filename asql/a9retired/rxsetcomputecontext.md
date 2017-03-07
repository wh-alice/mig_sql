---
title: "rxSetComputeContext | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "r-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
dev_langs: 
  - "R"
ms.assetid: 7ad6cde4-c646-46e5-ad0d-2b6c26acbc88
caps.latest.revision: 7
ms.author: "jeannt"
manager: "jhubbard"
robots: noindex,nofollow
---
# rxSetComputeContext
Sets the active compute context for RevoScaleR computations.

## Usage
`RxSetComputeContext( computeContext, <other>)`
     
## Arguments
_computeContext_ : A keyword that specifies the type of object to instantiate. For example, possible values are **RxLocalSeq** or **local**, or **RxLocalParallel**. You can also specify a string that references an existing RxComputeContext object.
  
_other_   : Depending on the type of compute context that you are creating, additional parameters might be required.


## Return Value
Returns the previously active compute context invisibly. 


## Remarks
If you define a new compute context, it is not used until the `rxSetComputeContext` function is called to set the active compute context.


## Example

The following example creates a compute context using previously defined variables, sets it as the active compute context to run a function, and then switches back to the local compute context.
~~~~
# switch between local and remote compute contexts
     
     sqlCompute <- RxInSqlServer(connectionstring = sqlConnString, shareDir = sqlShareDir, wait = sqlWait, consoleOutput = sqlConsoleOutput)
     rxSetComputeContext("sqlCompute")
     x <- 1:10
     rxExec(print, x, elemType = "cores", timesToRun = 10)
     rxSetComputeContext("local")

~~~~

For additional examples of how to use local and remote compute contexts, see this tutorial: [Data Science Deep Dive - Using the ScaleR Functions](../advanced-analytics/r-services/tutorials/data-science-deep-dive-using-the-revoscaler-packages.md)

## See Also
[Comparison of rx Functions and CRAN R Functions](../a9retired/summary-of-rx-functions.md)

[ScaleR Functions for Working with SQL Server Data](../advanced-analytics/r-services/scaler-functions-for-working-with-sql-server-data.md)