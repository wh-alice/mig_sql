---
title: "Estimate the Size of a Table | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "pages [SQL Server], space"
  - "space [SQL Server], tables"
  - "row size [SQL Server]"
  - "size [SQL Server], tables"
  - "column size [SQL Server]"
  - "predicting table size [SQL Server]"
  - "table size [SQL Server]"
  - "estimating table size"
  - "clustered indexes, table size"
  - "disk space [SQL Server], tables"
  - "space allocation [SQL Server], table size"
  - "designing databases [SQL Server], estimating size"
  - "reserved free rows per page [SQL Server]"
  - "calculating table size"
ms.assetid: 15c17c92-616f-402e-894b-907a296efe5f
caps.latest.revision: 30
ms.author: "rickbyh"
manager: "jhubbard"
---
# Estimate the Size of a Table
  You can use the following steps to estimate the amount of space required to store data in a table:  
  
1.  Calculate the space required for the heap or clustered index following the instructions in [Estimate the Size of a Heap](../../relational-databases/databases/estimate-the-size-of-a-heap.md) or [Estimate the Size of a Clustered Index](../../relational-databases/databases/estimate-the-size-of-a-clustered-index.md).  
  
2.  For each nonclustered index, calculate the space required for it by following the instructions in [Estimate the Size of a Nonclustered Index](../../relational-databases/databases/estimate-the-size-of-a-nonclustered-index.md).  
  
3.  Add the values calculated in steps 1 and 2.  
  
## See Also  
 [Estimate the Size of a Database](../../relational-databases/databases/estimate-the-size-of-a-database.md)   
 [Estimate the Size of a Heap](../../relational-databases/databases/estimate-the-size-of-a-heap.md)   
 [Estimate the Size of a Clustered Index](../../relational-databases/databases/estimate-the-size-of-a-clustered-index.md)   
 [Estimate the Size of a Nonclustered Index](../../relational-databases/databases/estimate-the-size-of-a-nonclustered-index.md)  
  
  