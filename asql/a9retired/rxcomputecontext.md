---
title: "RxComputeContext | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-31"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "r-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
dev_langs: 
  - "R"
ms.assetid: c3e91b83-b7f8-42e3-b426-3e768946509e
caps.latest.revision: 5
ms.author: "jeannt"
manager: "jhubbard"
robots: noindex,nofollow
---
# RxComputeContext
Defines a new compute context or changes the definition of an existing compute context.

## Usage

`RxComputeContext( computeContext, <other>)`

## Arguments

_computeContext_
  : A keyword that specifies the type of object to instantiate. For example, possible values are **RxLocalSeq** or **local**, or **RxLocalParallel**. You can also specify a string that references an existing RxComputeContext object.
_other_ 
  : Depending on the type of compute context that you are creating, additional parameters might be required.

## Remarks
A SQL DDL statement is prepared and passed to the ODBC driver.

## Return Value
No change; any existing active compute context remains in effect until the `rxSetComputeContext` function is called to set a new compute context. 



## See Also
[Comparison of rx Functions and CRAN R Functions](../a9retired/summary-of-rx-functions.md)

[ScaleR Functions for Working with SQL Server Data](../advanced-analytics/r-services/scaler-functions-for-working-with-sql-server-data.md)