---
title: "Using DRILLTHROUGH to Retrieve Source Data (MDX) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "DRILLTHROUGH statement"
  - "retrieving data"
  - "queries [MDX], DRILLTHROUGH statement"
  - "data retrieval [MDX]"
ms.assetid: fe0ab170-25a9-45a8-a377-f71a67f77018
caps.latest.revision: 30
ms.author: "owend"
manager: "erikre"
---
# MDX Data Manipulation - Retrieve Source Data Using DRILLTHROUGH
  Multidimensional Expressions (MDX) uses the [DRILLTHROUGH](../../../mdx/mdx-data-manipulation-drillthrough.md)statement to retrieve a rowset from the source data for a cube cell.  
  
 In order to run a **DRILLTHROUGH** statement on a cube, a drillthrough action must be defined for that cube. To define a drillthrough action, in [!INCLUDE[ssBIDevStudioFull](../../../analysis-services/includes/ssbidevstudiofull-md.md)], in Cube Designer, on the **Actions** pane, on the toolbar, click **New Drillthrough Action**. In the new drillthrough action, specify the action name, target, condition, and the columns that are returned by a **DRILLTHROUGH** statement.  
  
## DRILLTHROUGH Statement Syntax  
 The **DRILLTHROUGH** statement uses the following syntax:  
  
```  
<drillthrough> ::= DRILLTHROUGH [<Max_Rows>] [<First_Rowset>] <MDX select> [<Return_Columns>]  
   < Max_Rows> ::= MAXROWS <positive number>  
   <First_Rowset> ::= FIRSTROWSET <positive number>  
   <Return_Columns> ::= RETURN <member or attribute> [, <member or attribute>]  
```  
  
 The **SELECT** clause identifies the cube cell that contains the source data to be retrieved. This **SELECT** clause is the same to an ordinary MDX **SELECT** statement, except that in the **SELECT** clause only one member can be specified on each axis. If more than one member is specified on an axis, an error occurs.  
  
 The `<Max_Rows>` syntax specifies the maximum number of the rows in each returned rowset. If the OLE DB provider that is used to connect to the data source does not support **DBPROP_MAXROWS**, the `<Max_Rows>` setting is ignored.  
  
 The `<First_Rowset>` syntax identifies the partition whose rowset is returned first.  
  
 The `<Return_Columns>` syntax identifies the underlying database columns to be returned.  
  
## DRILLTHROUGH Statement Example  
 The following example demonstrates the use of the **DRILLTHROUGH** statement. In this example, the DRILLTHROUGH statement queries the leaves of the Store, Product, and Time dimensions along the Stores dimension (the slicer axis), and then returns the department measure group, department ID, and employee's first name.  
  
```  
DRILLTHROUGH  
Select {Leaves(Store), Leaves(Product), Leaves(Time),*} on 0  
From Stores  
RETURN [Department MeasureGroup].[Department Id], [Employee].[First Name]  
```  
  
## See Also  
 [Manipulating Data &#40;MDX&#41;](../../../analysis-services/multidimensional-models/mdx/mdx-data-manipulation-manipulating-data.md)  
  
  