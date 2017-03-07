---
title: "rxWriteNext | Microsoft Docs"
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
ms.assetid: 342fd81c-03d4-47ad-94ca-7234a65bfadd
caps.latest.revision: 5
ms.author: "jeannt"
manager: "jhubbard"
robots: noindex,nofollow
---
# rxWriteNext
Writes the next chunk of data when moving data between ScaleR data sources.

## Usage

`rxWriteNext(from, to, ...)`

## Arguments

_from_: An existing data frame object.

_src_: An existing RxDataSource object to read from.

_to_: An existing RxDataSource object to write data to.

__...__:  Other arguments that are required by the specific data source type.

## Remarks
This is one of several generic functions in the  RevoScaleR package that are used for managing data source objects.
For information about how to create a SQL Server data source, see [RxSqlServer](../a9retired/rxsqlserverdata.md).
For information about working with other data sources such as Hadoop, Teradata, and text files, see the [Microsoft R Server documentation](http://msdn.microsoft.com/microsoft-r/index#) in the MSDN library.

## Return Value
None. 

## Example
For examples of how to work with ScaleR data sources, see [Data Sources](https://msdn.microsoft.com/microsoft-r/rserver/rserver-scaler-user-guide-3-data-source).

## See Also
[Comparison of rx Functions and CRAN R Functions](../a9retired/summary-of-rx-functions.md)

[ScaleR Functions for Working with SQL Server Data](../advanced-analytics/r-services/scaler-functions-for-working-with-sql-server-data.md)