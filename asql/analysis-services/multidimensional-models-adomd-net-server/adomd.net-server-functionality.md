---
title: "ADOMD.NET Server Functionality | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "functionality [ADOMD.NET]"
  - "ADOMD.NET, functionality"
ms.assetid: b74c6957-3f64-4e09-aa09-d06ee93f82fa
caps.latest.revision: 15
ms.author: "owend"
manager: "erikre"
---
# ADOMD.NET Server Functionality
  All ADOMD.NET server objects provide read-only access to the data and metadata on the server. To retrieve data and metadata, you use the ADOMD.NET server object model as the server object model does not support schema rowsets.  
  
 With ADOMD.NET server objects, you can create a user defined function (UDF) or a stored procedure for [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)]. These in-process methods are called through query statements created in languages such as Multidimensional Expressions (MDX), Data Mining Extensions (DMX), or SQL. These in-process methods also provide added functionality without the latencies associated with network communications.  
  
> [!NOTE]  
>  The <xref:Microsoft.AnalysisServices.AdomdServer.AdomdCommand> object only supports DMX.  
  
## What is a UDF?  
 A *UDF* is a method that has the following characteristics:  
  
-   You can call the UDF in the context of a query.  
  
-   The UDF can take any number of parameters.  
  
-   The UDF can return various types of data.  
  
 The following example uses the fictional UDF, `FinalSalesNumber`:  
  
```  
SELECT SalesPerson.Name ON ROWS,  
       FinalSalesNumber() ON COLUMNS  
FROM SalesModel  
```  
  
## What is a Stored Procedure?  
 A *stored procedure* is a method that has the following characteristics:  
  
-   You call a stored procedure on its own with the MDX [CALL](../Topic/CALL%20Statement%20\(MDX\).md) statement.  
  
-   A stored procedure can take any number of parameters.  
  
-   A stored procedure can return a dataset, an **IDataReader**, or an empty result.  
  
 The following example uses the fictional stored procedure, `FinalSalesNumbers`:  
  
```  
CALL FinalSalesNumbers()  
```  
  
## See Also  
 [ADOMD.NET Server Programming](../../analysis-services/multidimensional-models-adomd-net-server/adomd.net-server-programming.md)  
  
  