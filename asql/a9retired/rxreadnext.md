---
title: "rxReadNext | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-30"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "r-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
dev_langs: 
  - "R"
ms.assetid: 571a94e9-e190-421e-80d7-cb7f0ecd52b1
caps.latest.revision: 4
ms.author: "jeannt"
manager: "jhubbard"
robots: noindex,nofollow
---
# rxReadNext
Reads the next chunk of data from a ScaleR data source.

## Usage

`rxReadNext(src)`

## Arguments

_src_: An existing RxDataSource object

## Remarks
This is one of several generic functions in the  RevoScaleR package that are used for managing data source objects.
For information about how to create a SQL Server data source, see [RxSqlServer](../a9retired/rxsqlserverdata.md).
For information about working with other data sources such as Hadoop, Teradata, and text files, see the [Microsoft R Server documentation](http://msdn.microsoft.com/microsoft-r/index#) in the MSDN library.

## Return Value
Either a data frame or a list depending upon the value of the _returnDataFrame_ property set in the data source object in _src_.


## Example
For examples of how to work with ScaleR data sources, see [Data Sources](https://msdn.microsoft.com/microsoft-r/rserver/rserver-scaler-user-guide-3-data-source).


## See Also
[Comparison of rx Functions and CRAN R Functions](../a9retired/summary-of-rx-functions.md)

[ScaleR Functions for Working with SQL Server Data](../advanced-analytics/r-services/scaler-functions-for-working-with-sql-server-data.md)