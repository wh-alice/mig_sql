---
title: "rxClose | Microsoft Docs"
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
ms.assetid: f4b0ad6f-0757-438c-9d15-eaf3dc1ebb1b
caps.latest.revision: 4
ms.author: "jeannt"
manager: "jhubbard"
robots: noindex,nofollow
---
# rxClose
Closes the connection to an RxDataSource object.

## Usage

`rxClose(src)`

## Arguments

_src_: An existing RxDataSource object.

## Remarks
This is one of several generic functions in the  RevoScaleR package that are used for managing data source objects.
For information about how to create a SQL Server data source, see [RxSqlServer](../a9retired/rxsqlserverdata.md).
For information about working with other data sources such as Hadoop, Teradata, and text files, see the [Microsoft R Server documentation](http://msdn.microsoft.com/microsoft-r/index#) in the MSDN library.

## Return Value
TRUE if the operation was successful; FALSE otherwise. 

## Example
For examples of how to work with ScaleR data sources, see [Data Sources](https://msdn.microsoft.com/microsoft-r/rserver/rserver-scaler-user-guide-3-data-source).

## See Also
[Comparison of rx Functions and CRAN R Functions](../a9retired/summary-of-rx-functions.md)

[ScaleR Functions for Working with SQL Server Data](../advanced-analytics/r-services/scaler-functions-for-working-with-sql-server-data.md)