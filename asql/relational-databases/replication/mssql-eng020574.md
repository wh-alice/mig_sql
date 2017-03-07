---
title: "MSSQL_ENG020574 | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "MSSQL_ENG02574 error"
ms.assetid: 4e98f8de-287c-4090-81ee-dc8f80dfa6a1
caps.latest.revision: 11
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSSQL_ENG020574
    
## Message Details  
  
|||  
|-|-|  
|Product Name|SQL Server|  
|Event ID|20574|  
|Event Source|MSSQLSERVER|  
|Component|[!INCLUDE[ssDEnoversion](../../a9notintoc/includes/ssdenoversion-md.md)]|  
|Symbolic Name||  
|Message Text|Subscriber '%s' subscription to article '%s' in publication '%s' failed data validation.|  
  
## Explanation  
 The data at the Subscriber was validated against the data at the Publisher, and the data did not match; therefore validation failed. For more information about validation, see [Validate Replicated Data](../../relational-databases/replication/validate-replicated-data.md).  
  
## User Action  
 We recommend that you do the following:  
  
-   Determine why validation failed.  
  
-   Correct the underlying issue that caused the failure.  
  
-   Bring the data into convergence by reinitializing the subscription or through another method.  
  
## See Also  
 [Errors and Events Reference &#40;Replication&#41;](../../relational-databases/replication/errors-and-events-reference-replication.md)  
  
  